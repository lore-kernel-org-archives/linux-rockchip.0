From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH] usb: dwc2: add shutdown callback to platform variant
Date: Fri, 18 Dec 2015 19:30:59 +0100
Message-ID: <2135194.vFtAtbOFPb@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: balbi-l0cyMroinI0@public.gmane.org
Cc: john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In specific conditions (involving usb hubs) dwc2 devices can create a
lot of interrupts, even to the point of overwhelming devices running
at low frequencies. Some devices need to do special clock handling
at shutdown-time which may bring the system clock below the threshold
of being able to handle the dwc2 interrupts. Disabling dwc2-irqs
in a shutdown callbacks prevents reboots/poweroffs from getting stuck
in such cases.

The hsotg struct already contains an unused irq element, so we can
just use it to store the irq number for the shutdown callback.

Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
I'm also adapting the code on the clock-side to lessen the effects of
the slow clock (see clk: rockchip: only enter pll slow-mode directly
before reboots on rk3288), but this patch also fixes the issue of the
overwhelming irq-number in itself and may be interesting for other/future
platforms using the dwc2.


 drivers/usb/dwc2/platform.c | 35 +++++++++++++++++++++++++++--------
 1 file changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 39c1cbf..5510d07 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -306,6 +306,25 @@ static int dwc2_driver_remove(struct platform_device *dev)
 	return 0;
 }
 
+/**
+ * dwc2_driver_shutdown() - Called on device shutdown
+ *
+ * @dev: Platform device
+ *
+ * In specific conditions (involving usb hubs) dwc2 devices can create a
+ * lot of interrupts, even to the point of overwhelming devices running
+ * at low frequencies. Some devices need to do special clock handling
+ * at shutdown-time which may bring the system clock below the threshold
+ * of being able to handle the dwc2 interrupts. Disabling dwc2-irqs
+ * prevents reboots/poweroffs from getting stuck in such cases.
+ */
+static void dwc2_driver_shutdown(struct platform_device *dev)
+{
+	struct dwc2_hsotg *hsotg = platform_get_drvdata(dev);
+
+	disable_irq(hsotg->irq);
+}
+
 static const struct of_device_id dwc2_of_match_table[] = {
 	{ .compatible = "brcm,bcm2835-usb", .data = &params_bcm2835 },
 	{ .compatible = "rockchip,rk3066-usb", .data = &params_rk3066 },
@@ -335,7 +354,6 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	struct dwc2_hsotg *hsotg;
 	struct resource *res;
 	int retval;
-	int irq;
 
 	match = of_match_device(dwc2_of_match_table, &dev->dev);
 	if (match && match->data) {
@@ -401,15 +419,15 @@ static int dwc2_driver_probe(struct platform_device *dev)
 
 	dwc2_set_all_params(hsotg->core_params, -1);
 
-	irq = platform_get_irq(dev, 0);
-	if (irq < 0) {
+	hsotg->irq = platform_get_irq(dev, 0);
+	if (hsotg->irq < 0) {
 		dev_err(&dev->dev, "missing IRQ resource\n");
-		return irq;
+		return hsotg->irq;
 	}
 
 	dev_dbg(hsotg->dev, "registering common handler for irq%d\n",
-		irq);
-	retval = devm_request_irq(hsotg->dev, irq,
+		hsotg->irq);
+	retval = devm_request_irq(hsotg->dev, hsotg->irq,
 				  dwc2_handle_common_intr, IRQF_SHARED,
 				  dev_name(hsotg->dev), hsotg);
 	if (retval)
@@ -428,14 +446,14 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	dwc2_set_parameters(hsotg, params);
 
 	if (hsotg->dr_mode != USB_DR_MODE_HOST) {
-		retval = dwc2_gadget_init(hsotg, irq);
+		retval = dwc2_gadget_init(hsotg, hsotg->irq);
 		if (retval)
 			goto error;
 		hsotg->gadget_enabled = 1;
 	}
 
 	if (hsotg->dr_mode != USB_DR_MODE_PERIPHERAL) {
-		retval = dwc2_hcd_init(hsotg, irq);
+		retval = dwc2_hcd_init(hsotg, hsotg->irq);
 		if (retval) {
 			if (hsotg->gadget_enabled)
 				dwc2_hsotg_remove(hsotg);
@@ -502,6 +520,7 @@ static struct platform_driver dwc2_platform_driver = {
 	},
 	.probe = dwc2_driver_probe,
 	.remove = dwc2_driver_remove,
+	.shutdown = dwc2_driver_shutdown,
 };
 
 module_platform_driver(dwc2_platform_driver);
-- 
2.6.2


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
