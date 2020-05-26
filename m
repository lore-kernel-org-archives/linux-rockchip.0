From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 12/16] usb: dwc3: add make compatible for rockchip platform
Date: Tue, 26 May 2020 11:34:31 +0800
Message-ID: <20200526033435.20235-3-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200526033435.20235-1-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, marex-ynQEQJNshbs@public.gmane.org, bmeng.cn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: jianing.ren-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

RK3399 Type-C PHY is required that must hold whole USB3.0 OTG controller
in resetting to hold pipe power state in P2 before initializing the PHY.
This commit fixed it and added device compatible for rockchip platform.

Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/usb/dwc3/dwc3-generic.c | 33 +++++++++++++++++++++++++++------
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-generic.c b/drivers/usb/dwc3/dwc3-generic.c
index eabd53a36d..421e0be135 100644
--- a/drivers/usb/dwc3/dwc3-generic.c
+++ b/drivers/usb/dwc3/dwc3-generic.c
@@ -24,6 +24,12 @@
 #include <clk.h>
 #include <usb/xhci.h>
 
+struct dwc3_glue_data {
+	struct clk_bulk		clks;
+	struct reset_ctl_bulk	resets;
+	fdt_addr_t regs;
+};
+
 struct dwc3_generic_plat {
 	fdt_addr_t base;
 	u32 maximum_speed;
@@ -47,6 +53,7 @@ static int dwc3_generic_probe(struct udevice *dev,
 	int rc;
 	struct dwc3_generic_plat *plat = dev_get_platdata(dev);
 	struct dwc3 *dwc3 = &priv->dwc3;
+	struct dwc3_glue_data *glue = dev_get_platdata(dev->parent);
 
 	dwc3->dev = dev;
 	dwc3->maximum_speed = plat->maximum_speed;
@@ -55,10 +62,22 @@ static int dwc3_generic_probe(struct udevice *dev,
 	dwc3_of_parse(dwc3);
 #endif
 
+	/*
+	 * It must hold whole USB3.0 OTG controller in resetting to hold pipe
+	 * power state in P2 before initializing TypeC PHY on RK3399 platform.
+	 */
+	if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3")) {
+		reset_assert_bulk(&glue->resets);
+		udelay(1);
+	}
+
 	rc = dwc3_setup_phy(dev, &priv->phys);
 	if (rc)
 		return rc;
 
+	if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3"))
+		reset_deassert_bulk(&glue->resets);
+
 	priv->base = map_physmem(plat->base, DWC3_OTG_REGS_END, MAP_NOCACHE);
 	dwc3->regs = priv->base + DWC3_GLOBALS_REGS_START;
 
@@ -186,12 +205,6 @@ U_BOOT_DRIVER(dwc3_generic_host) = {
 };
 #endif
 
-struct dwc3_glue_data {
-	struct clk_bulk		clks;
-	struct reset_ctl_bulk	resets;
-	fdt_addr_t regs;
-};
-
 struct dwc3_glue_ops {
 	void (*select_dr_mode)(struct udevice *dev, int index,
 			       enum usb_dr_mode mode);
@@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
+	if (glue->resets.count == 0) {
+		ret = dwc3_glue_reset_init(child, glue);
+		if (ret)
+			return ret;
+	}
+
 	while (child) {
 		enum usb_dr_mode dr_mode;
 
@@ -424,6 +443,8 @@ static const struct udevice_id dwc3_glue_ids[] = {
 	{ .compatible = "ti,dwc3", .data = (ulong)&ti_ops },
 	{ .compatible = "ti,am437x-dwc3", .data = (ulong)&ti_ops },
 	{ .compatible = "ti,am654-dwc3" },
+	{ .compatible = "rockchip,rk3328-dwc3" },
+	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ }
 };
 
-- 
2.17.1
