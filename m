From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] soc: rockchip: avoid infinite loop for power domain
Date: Tue, 11 Oct 2016 07:11:07 +0800
Message-ID: <1476141067-21186-1-git-send-email-wxt@rock-chips.com>
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
rockchip_pmu_set_idle_request.

This patch adds the error message and avoid infinite loop if it
fails to get the ack.

Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/soc/rockchip/pm_domains.c | 37 ++++++++++++++++++++++++++++++++-----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 7acd151..cb2a076 100644
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
 
+static u32 rockchip_pmu_read_ack(struct rockchip_pmu *pmu)
+{
+	u32 val;
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
+	u32 target_ack;
+	bool target_idle;
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
+			(val & pd_info->ack_mask) == target_ack, 0, 10000);
+	if (ret) {
+		dev_err(pmu->dev,
+			"failed to get ack on domain '%s', val=0x%x\n",
+			genpd->name, val);
+		return ret;
+	}
 
-	while (rockchip_pmu_domain_is_idle(pd) != idle)
-		cpu_relax();
+	ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_idle, pd,
+					target_idle, target_idle == idle,
+					0, 10000);
+	if (ret) {
+		dev_err(pmu->dev,
+			"failed to set idle on domain '%s', val=0x%x\n",
+			genpd->name, target_idle);
+		return ret;
+	}
 
 	return 0;
 }
-- 
1.9.1
