From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [RESEND PATCH 1/1] usb: dwc2: add multiple clock handling
Date: Sun,  5 Feb 2017 10:51:01 +0800
Message-ID: <1486263061-10681-2-git-send-email-frank.wang@rock-chips.com>
References: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1486263061-10681-1-git-send-email-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Originally, dwc2 just handle one clock named otg, however, it may have
two or more clock need to manage for some new SoCs, so this adds
change clk to clk's array of dwc2_hsotg to handle more clocks operation.

Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/usb/dwc2/core.h     |  5 ++++-
 drivers/usb/dwc2/platform.c | 39 ++++++++++++++++++++++++++-------------
 2 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 1a7e830..d10a466 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -121,6 +121,9 @@ static inline void dwc2_writel(u32 value, void __iomem *addr)
 /* Maximum number of Endpoints/HostChannels */
 #define MAX_EPS_CHANNELS	16
 
+/* Maximum number of dwc2 clocks */
+#define DWC2_MAX_CLKS 3
+
 /* dwc2-hsotg declarations */
 static const char * const dwc2_hsotg_supply_names[] = {
 	"vusb_d",               /* digital USB supply, 1.2V */
@@ -913,7 +916,7 @@ struct dwc2_hsotg {
 	spinlock_t lock;
 	void *priv;
 	int     irq;
-	struct clk *clk;
+	struct clk *clks[DWC2_MAX_CLKS];
 	struct reset_control *reset;
 
 	unsigned int queuing_high_bandwidth:1;
diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 9564bc7..795fc43b 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -123,17 +123,20 @@ static int dwc2_get_dr_mode(struct dwc2_hsotg *hsotg)
 static int __dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
 {
 	struct platform_device *pdev = to_platform_device(hsotg->dev);
-	int ret;
+	int clk, ret;
 
 	ret = regulator_bulk_enable(ARRAY_SIZE(hsotg->supplies),
 				    hsotg->supplies);
 	if (ret)
 		return ret;
 
-	if (hsotg->clk) {
-		ret = clk_prepare_enable(hsotg->clk);
-		if (ret)
+	for (clk = 0; clk < DWC2_MAX_CLKS && hsotg->clks[clk]; clk++) {
+		ret = clk_prepare_enable(hsotg->clks[clk]);
+		if (ret) {
+			while (--clk >= 0)
+				clk_disable_unprepare(hsotg->clks[clk]);
 			return ret;
+		}
 	}
 
 	if (hsotg->uphy) {
@@ -168,7 +171,7 @@ int dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
 static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
 {
 	struct platform_device *pdev = to_platform_device(hsotg->dev);
-	int ret = 0;
+	int clk, ret = 0;
 
 	if (hsotg->uphy) {
 		usb_phy_shutdown(hsotg->uphy);
@@ -182,8 +185,9 @@ static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
 	if (ret)
 		return ret;
 
-	if (hsotg->clk)
-		clk_disable_unprepare(hsotg->clk);
+	for (clk = DWC2_MAX_CLKS - 1; clk >= 0; clk--)
+		if (hsotg->clks[clk])
+			clk_disable_unprepare(hsotg->clks[clk]);
 
 	ret = regulator_bulk_disable(ARRAY_SIZE(hsotg->supplies),
 				     hsotg->supplies);
@@ -209,7 +213,7 @@ int dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
 
 static int dwc2_lowlevel_hw_init(struct dwc2_hsotg *hsotg)
 {
-	int i, ret;
+	int i, clk, ret;
 
 	hsotg->reset = devm_reset_control_get_optional(hsotg->dev, "dwc2");
 	if (IS_ERR(hsotg->reset)) {
@@ -282,11 +286,20 @@ static int dwc2_lowlevel_hw_init(struct dwc2_hsotg *hsotg)
 			hsotg->phyif = GUSBCFG_PHYIF8;
 	}
 
-	/* Clock */
-	hsotg->clk = devm_clk_get(hsotg->dev, "otg");
-	if (IS_ERR(hsotg->clk)) {
-		hsotg->clk = NULL;
-		dev_dbg(hsotg->dev, "cannot get otg clock\n");
+	/* Clocks */
+	for (clk = 0; clk < DWC2_MAX_CLKS; clk++) {
+		hsotg->clks[clk] = of_clk_get(hsotg->dev->of_node, clk);
+		if (IS_ERR(hsotg->clks[clk])) {
+			ret = PTR_ERR(hsotg->clks[clk]);
+			if (ret == -EPROBE_DEFER) {
+				while (--clk >= 0)
+					clk_put(hsotg->clks[clk]);
+				return ret;
+			}
+
+			hsotg->clks[clk] = NULL;
+			break;
+		}
 	}
 
 	/* Regulators */
-- 
1.9.1


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
