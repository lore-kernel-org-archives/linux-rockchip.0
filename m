From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v6 09/22] usb: dwc2: host: Giveback URB in tasklet context
Date: Thu, 28 Jan 2016 18:20:00 -0800
Message-ID: <1454034013-24657-10-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com, kever.yang@rock-chips.com
Cc: william.wu@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de, stefan.wahren@i2se.com, linux-rockchip@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In commit 94dfd7edfd5c ("USB: HCD: support giveback of URB in tasklet
context") support was added to give back the URB in tasklet context.
Let's take advantage of this in dwc2.

This speeds up the dwc2 interrupt handler considerably.

Note that this requires the change ("usb: dwc2: host: Add a delay before
releasing periodic bandwidth") to come first.

Note that, as per Alan Stern in
<https://patchwork.kernel.org/patch/7555771/>, we also need to make sure
that the extra delay before the device drivers submit more data doesn't
break the scheduler.  At the moment the scheduler is pretty broken (see
future patches) so it's hard to be 100% certain, but I have yet to see
any new breakage introduced by this delay.  ...and speeding up interrupt
processing for dwc2 is a huge deal because it means we've got a better
chance of not missing SOF interrupts.  That means we've got an overall
win here.

Note that when playing USB audio and using a USB webcam and having
several USB keyboards plugged in, the crackling on the USB audio device
is noticably reduced with this patch.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
---
Changes in v6:
- Add Stefan's Tested-by.

Changes in v5: None
Changes in v4:
- A bit earlier in the list of patches than in v3.

Changes in v3: None
Changes in v2:
- Commit message now says that URB giveback change needs delay change.

 drivers/usb/dwc2/hcd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 0b6ebc7fff3f..40558478a192 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -2341,9 +2341,7 @@ void dwc2_host_complete(struct dwc2_hsotg *hsotg, struct dwc2_qtd *qtd,
 	kfree(qtd->urb);
 	qtd->urb = NULL;
 
-	spin_unlock(&hsotg->lock);
 	usb_hcd_giveback_urb(dwc2_hsotg_to_hcd(hsotg), urb, status);
-	spin_lock(&hsotg->lock);
 }
 
 /*
@@ -2964,7 +2962,7 @@ static struct hc_driver dwc2_hc_driver = {
 	.hcd_priv_size = sizeof(struct wrapper_priv_data),
 
 	.irq = _dwc2_hcd_irq,
-	.flags = HCD_MEMORY | HCD_USB2,
+	.flags = HCD_MEMORY | HCD_USB2 | HCD_BH,
 
 	.start = _dwc2_hcd_start,
 	.stop = _dwc2_hcd_stop,
-- 
2.7.0.rc3.207.g0ac5344
