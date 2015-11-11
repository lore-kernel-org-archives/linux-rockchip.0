From: Douglas Anderson <dianders@chromium.org>
Subject: [REPOST PATCH] usb: dwc2: host: Support immediate retries for split transactions
Date: Wed, 11 Nov 2015 10:33:52 -0800
Message-ID: <1447266833-32096-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In some cases, like when you've got a "Microsoft Wireless Keyboard 2000"
connected to dwc2 with a hub, expected that we'll get some transfer
errors sometimes.  The controller is expected to try at least 3 times
before giving up.  See figure "Figure A-67. Normal HS CSPLIT 3 Strikes
Smash" in the USB spec.

The dwc2 controller has a way to support this by using the "EC_MC"
field.  The Raspberry Pi driver has logic for setting this right.  See
fiq_fsm_queue_split_transaction() in their "dwc_otg_hcd.c".  Let's use
the same logic.

After making this change, we no longer get dropped characters from the
above mentioned keyboard.  Other devices on the same bus as the keyboard
also behave more properly.

Thanks for Julius Werner for the expert analysis and suggestions.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Repost without the WIP in tags (sorry for that).

 drivers/usb/dwc2/core.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index ef73e498e98f..dcb4cd1d3b34 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -1707,6 +1707,7 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
 	u32 hcchar;
 	u32 hctsiz = 0;
 	u16 num_packets;
+	u32 ec_mc;
 
 	if (dbg_hc(chan))
 		dev_vdbg(hsotg->dev, "%s()\n", __func__);
@@ -1743,6 +1744,13 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
 
 		hctsiz |= chan->xfer_len << TSIZ_XFERSIZE_SHIFT &
 			  TSIZ_XFERSIZE_MASK;
+
+		/* For split set ec_mc for immediate retries */
+		if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
+		    chan->ep_type == USB_ENDPOINT_XFER_ISOC)
+			ec_mc = 3;
+		else
+			ec_mc = 1;
 	} else {
 		if (dbg_hc(chan))
 			dev_vdbg(hsotg->dev, "no split\n");
@@ -1805,6 +1813,9 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
 
 		hctsiz |= chan->xfer_len << TSIZ_XFERSIZE_SHIFT &
 			  TSIZ_XFERSIZE_MASK;
+
+		/* The ec_mc gets the multi_count for non-split */
+		ec_mc = chan->multi_count;
 	}
 
 	chan->start_pkt_count = num_packets;
@@ -1855,8 +1866,7 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
 
 	hcchar = dwc2_readl(hsotg->regs + HCCHAR(chan->hc_num));
 	hcchar &= ~HCCHAR_MULTICNT_MASK;
-	hcchar |= chan->multi_count << HCCHAR_MULTICNT_SHIFT &
-		  HCCHAR_MULTICNT_MASK;
+	hcchar |= (ec_mc << HCCHAR_MULTICNT_SHIFT) & HCCHAR_MULTICNT_MASK;
 	dwc2_hc_set_even_odd_frame(hsotg, chan, &hcchar);
 
 	if (hcchar & HCCHAR_CHDIS)
-- 
2.6.0.rc2.230.g3dd15c0
