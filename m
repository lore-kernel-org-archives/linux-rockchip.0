From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v1 3/6] rockchip: rk3036: Bind GPIO banks
Date: Mon,  4 Jan 2016 15:50:20 +0800
Message-ID: <1451893823-20309-4-git-send-email-jeffy.chen@rock-chips.com>
References: <1451893823-20309-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1451893823-20309-1-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, huang lin <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Call dm_scan_fdt_node() in rk3036 pinctrl uclass binding.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/pinctrl/rockchip/pinctrl_rk3036.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pinctrl/rockchip/pinctrl_rk3036.c b/drivers/pinctrl/rockchip/pinctrl_rk3036.c
index 581b096..1f78bf8 100644
--- a/drivers/pinctrl/rockchip/pinctrl_rk3036.c
+++ b/drivers/pinctrl/rockchip/pinctrl_rk3036.c
@@ -15,6 +15,7 @@
 #include <asm/arch/hardware.h>
 #include <asm/arch/periph.h>
 #include <dm/pinctrl.h>
+#include <dm/root.h>
 
 DECLARE_GLOBAL_DATA_PTR;
 
@@ -252,6 +253,12 @@ static struct pinctrl_ops rk3036_pinctrl_ops = {
 	.get_periph_id	= rk3036_pinctrl_get_periph_id,
 };
 
+static int rk3036_pinctrl_bind(struct udevice *dev)
+{
+	/* scan child GPIO banks */
+	return dm_scan_fdt_node(dev, gd->fdt_blob, dev->of_offset, false);
+}
+
 static int rk3036_pinctrl_probe(struct udevice *dev)
 {
 	struct rk3036_pinctrl_priv *priv = dev_get_priv(dev);
@@ -272,5 +279,6 @@ U_BOOT_DRIVER(pinctrl_rk3036) = {
 	.of_match	= rk3036_pinctrl_ids,
 	.priv_auto_alloc_size = sizeof(struct rk3036_pinctrl_priv),
 	.ops		= &rk3036_pinctrl_ops,
+	.bind		= rk3036_pinctrl_bind,
 	.probe		= rk3036_pinctrl_probe,
 };
-- 
2.1.4
