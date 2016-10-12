From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2] soc: rockchip: avoid infinite loop for power domain
Date: Thu, 13 Oct 2016 02:16:08 +0800
Message-ID: <1476296168-29154-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: khilman-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In some cases, we have met the infinite loop in
rockchip_pmu_set_idle_request() or rockchip_do_pmu_set_power_domain().

As the crosbug.com/p/57351 reported, the boot hangs right after this
[1.629163] bootconsole [uart8250] disabled
[1.639286] [drm:drm_core_init] Initialized drm 1.1.0 20060810
[1.645926] [drm:drm_get_platform_dev] Initialized vgem 1.0.0 20120112..
[1.654558] iommu: Adding device ff8f0000.vop to group 0
[1.660569] iommu: Adding device ff900000.vop to group 1
<hang>

This patch adds the error message and timeout to avoid infinite loop if
it fails to get the ack.

Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2:
- As the Tomasz & Heiko feedback on http://crosreview.com/395589:
  * Also, need the timeout for rockchip_do_set_power_domain.
  * s/target_on/is_on, s/target_idle/is_idle.
  * unsigned int instear of u32.

 drivers/soc/rockchip/pm_domains.c | 48 +++++++++++++++++++++++++++++++++------
 1 file changed, 41 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 7acd151..260fbcc 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -9,6 +9,7 @@
  */
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/err.h>
 #include <linux/pm_clock.h>
 #include <linux/pm_domain.h>
@@ -105,12 +106,24 @@ static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
 	return (val & pd_info->idle_mask) == pd_info->idle_mask;
 }
 
+static unsigned int rockchip_pmu_read_ack(struct rockchip_pmu *pmu)
+{
+	unsigned int val;
+
+	regmap_read(pmu->regmap, pmu->info->ack_offset, &val);
+	return val;
+}
+
 static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 					 bool idle)
 {
 	const struct rockchip_domain_info *pd_info = pd->info;
+	struct generic_pm_domain *genpd = &pd->genpd;
 	struct rockchip_pmu *pmu = pd->pmu;
 	unsigned int val;
+	unsigned int target_ack;
+	bool is_idle;
+	int ret;
 
 	if (pd_info->req_mask == 0)
 		return 0;
@@ -120,12 +133,26 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 
 	dsb(sy);
 
-	do {
-		regmap_read(pmu->regmap, pmu->info->ack_offset, &val);
-	} while ((val & pd_info->ack_mask) != (idle ? pd_info->ack_mask : 0));
+	/* Wait util idle_ack = 1 */
+	target_ack = idle ? pd_info->ack_mask : 0;
+	ret = readx_poll_timeout_atomic(rockchip_pmu_read_ack, pmu, val,
+				(val & pd_info->ack_mask) == target_ack,
+				0, 10000);
+	if (ret) {
+		dev_err(pmu->dev,
+			"failed to get ack on domain '%s', val=0x%x\n",
+			genpd->name, val);
+		return ret;
+	}
 
-	while (rockchip_pmu_domain_is_idle(pd) != idle)
-		cpu_relax();
+	ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_idle, pd,
+					is_idle, is_idle == idle, 0, 10000);
+	if (ret) {
+		dev_err(pmu->dev,
+			"failed to set idle on domain '%s', val=%d\n",
+			genpd->name, is_idle);
+		return ret;
+	}
 
 	return 0;
 }
@@ -198,6 +225,8 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 					     bool on)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
+	struct generic_pm_domain *genpd = &pd->genpd;
+	bool is_on;
 
 	if (pd->info->pwr_mask == 0)
 		return;
@@ -207,8 +236,13 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 
 	dsb(sy);
 
-	while (rockchip_pmu_domain_is_on(pd) != on)
-		cpu_relax();
+	if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
+				      is_on == on, 0, 10000)) {
+		dev_err(pmu->dev,
+			"failed to set domain '%s', val=%d\n",
+			genpd->name, is_on);
+		return;
+	}
 }
 
 static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
-- 
1.9.1
