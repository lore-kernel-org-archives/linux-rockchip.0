From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v2 2/4] usb: dwc2: optionally assert phy reset when waking up
Date: Tue, 16 Apr 2019 14:53:49 -0700
Message-ID: <20190416215351.242246-3-dianders@chromium.org>
References: <20190416215351.242246-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190416215351.242246-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Minas Harutyunyan <hminas-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Felipe Balbi <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Cc: linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On the rk3288 USB host-only port (the one that's not the OTG-enabled
port) the PHY can get into a bad state when a wakeup is asserted (not
just a wakeup from full system suspend but also a wakeup from
autosuspend).

We can get the PHY out of its bad state by asserting its "port reset",
but unfortunately that seems to assert a reset onto the USB bus so it
could confuse things if we don't actually deenumerate / reenumerate the
device.

We can also get the PHY out of its bad state by fully resetting it using
the reset from the CRU (clock reset unit), which does a more full
reset.  The CRU-based reset appears to actually cause devices on the bus
to be removed and reinserted, which fixes the problem (albeit in a hacky
way).

It's unfortunate that we need to do a full re-enumeration of devices at
wakeup time, but this is better than alternative of letting the bus get
wedged.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2:
- Cancel the work when dwc2 is freed (Matthias).

 drivers/usb/dwc2/core.h      |  5 +++++
 drivers/usb/dwc2/core_intr.c | 12 ++++++++++++
 drivers/usb/dwc2/hcd.c       | 18 +++++++++++++++---
 drivers/usb/dwc2/platform.c  |  9 +++++++++
 4 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 30bab8463c96..f30748f4fe7e 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -859,6 +859,8 @@ struct dwc2_hregs_backup {
  * @gadget_enabled:	Peripheral mode sub-driver initialization indicator.
  * @ll_hw_enabled:	Status of low-level hardware resources.
  * @hibernated:		True if core is hibernated
+ * @reset_phy_on_wake:	Quirk saying that we should assert PHY reset on a
+ *			remote wakeup.
  * @frame_number:       Frame number read from the core. For both device
  *			and host modes. The value ranges are from 0
  *			to HFNUM_MAX_FRNUM.
@@ -972,6 +974,7 @@ struct dwc2_hregs_backup {
  * @status_buf_dma:     DMA address for status_buf
  * @start_work:         Delayed work for handling host A-cable connection
  * @reset_work:         Delayed work for handling a port reset
+ * @phy_reset_work:     Work structure for doing a PHY reset
  * @otg_port:           OTG port number
  * @frame_list:         Frame list
  * @frame_list_dma:     Frame list DMA address
@@ -1045,6 +1048,7 @@ struct dwc2_hsotg {
 	unsigned int gadget_enabled:1;
 	unsigned int ll_hw_enabled:1;
 	unsigned int hibernated:1;
+	unsigned int reset_phy_on_wake:1;
 	u16 frame_number;
 
 	struct phy *phy;
@@ -1147,6 +1151,7 @@ struct dwc2_hsotg {
 
 	struct delayed_work start_work;
 	struct delayed_work reset_work;
+	struct work_struct phy_reset_work;
 	u8 otg_port;
 	u32 *frame_list;
 	dma_addr_t frame_list_dma;
diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
index 19ae2595f1c3..16ff33574116 100644
--- a/drivers/usb/dwc2/core_intr.c
+++ b/drivers/usb/dwc2/core_intr.c
@@ -435,6 +435,18 @@ static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
 			/* Restart the Phy Clock */
 			pcgcctl &= ~PCGCTL_STOPPCLK;
 			dwc2_writel(hsotg, pcgcctl, PCGCTL);
+
+			/*
+			 * If we've got this quirk then the PHY is stuck upon
+			 * wakeup.  Assert reset.  This will propagate out and
+			 * eventually we'll re-enumerate the device.  Not great
+			 * but the best we can do.  We can't call phy_reset()
+			 * at interrupt time but there's no hurry, so we'll
+			 * schedule it for later.
+			 */
+			if (hsotg->reset_phy_on_wake)
+				schedule_work(&hsotg->phy_reset_work);
+
 			mod_timer(&hsotg->wkp_timer,
 				  jiffies + msecs_to_jiffies(71));
 		} else {
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 3f087962f498..e272d020012e 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -4376,6 +4376,17 @@ static void dwc2_hcd_reset_func(struct work_struct *work)
 	spin_unlock_irqrestore(&hsotg->lock, flags);
 }
 
+static void dwc2_hcd_phy_reset_func(struct work_struct *work)
+{
+	struct dwc2_hsotg *hsotg = container_of(work, struct dwc2_hsotg,
+						phy_reset_work);
+	int ret;
+
+	ret = phy_reset(hsotg->phy);
+	if (ret)
+		dev_warn(hsotg->dev, "PHY reset failed\n");
+}
+
 /*
  * =========================================================================
  *  Linux HC Driver Functions
@@ -5130,6 +5141,8 @@ static void dwc2_hcd_free(struct dwc2_hsotg *hsotg)
 		destroy_workqueue(hsotg->wq_otg);
 	}
 
+	cancel_work_sync(&hsotg->phy_reset_work);
+
 	del_timer(&hsotg->wkp_timer);
 }
 
@@ -5271,11 +5284,10 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg)
 		hsotg->hc_ptr_array[i] = channel;
 	}
 
-	/* Initialize hsotg start work */
+	/* Initialize work */
 	INIT_DELAYED_WORK(&hsotg->start_work, dwc2_hcd_start_func);
-
-	/* Initialize port reset work */
 	INIT_DELAYED_WORK(&hsotg->reset_work, dwc2_hcd_reset_func);
+	INIT_WORK(&hsotg->phy_reset_work, dwc2_hcd_phy_reset_func);
 
 	/*
 	 * Allocate space for storing data on status transactions. Normally no
diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index c0b64d483552..9b65b766e0b9 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -481,6 +481,15 @@ static int dwc2_driver_probe(struct platform_device *dev)
 		hsotg->gadget_enabled = 1;
 	}
 
+	hsotg->reset_phy_on_wake =
+		of_property_read_bool(dev->dev.of_node,
+				      "snps,reset-phy-on-wake");
+	if (hsotg->reset_phy_on_wake && !hsotg->phy) {
+		dev_warn(hsotg->dev,
+			 "Quirk reset-phy-on-wake only supports generic PHYs\n");
+		hsotg->reset_phy_on_wake = false;
+	}
+
 	if (hsotg->dr_mode != USB_DR_MODE_PERIPHERAL) {
 		retval = dwc2_hcd_init(hsotg);
 		if (retval) {
-- 
2.21.0.593.g511ec345e18-goog
