From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH] WIP: usb: dwc2: host: Support immediate retries for split transactions
Date: Wed, 11 Nov 2015 10:31:03 -0800
Message-ID: <1447266663-31167-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
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

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
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

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
