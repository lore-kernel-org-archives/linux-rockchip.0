From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2] usb: dwc2: Fix NULL qh in dwc2_queue_transaction
Date: Wed, 23 Oct 2019 14:06:31 -0700
Message-ID: <20191023140530.v2.1.I9850aab29e945168070b0a9c50c421d5485e7d97@changeid>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <hminas@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Felipe Balbi <felipe.balbi@linux.intel.com>
Cc: linux-rockchip@lists.infradead.org, stefan.wahren@i2se.com, mka@chromium.org, Alexandru M Stan <amstan@chromium.org>, Douglas Anderson <dianders@chromium.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Alexandru M Stan <amstan@chromium.org>

When a usb device disconnects in a certain way, dwc2_queue_transaction
still gets called after dwc2_hcd_cleanup_channels.

dwc2_hcd_cleanup_channels does "channel->qh = NULL;" but
dwc2_queue_transaction still wants to dereference qh.
This adds a check for a null qh.

Signed-off-by: Alexandru M Stan <amstan@chromium.org>
[dianders: rebased to mainline]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
While testing a newer version of the Linux kernel on rk3288-veyron
devices we saw a bunch of crashes reported in dwc2_queue_transaction()
where chan->qh was NULL [1].  I don't know how to reproduce those
crashes myself, but I noticed that in our 3.14 kernel we had a patch
that probably fixed it.  That patch was sent upstream ages ago [2] but
never landed.  Here I've rebased the patch.  While I haven't
reproduced the crash myself, it seems fairly likely that this will fix
the problem.

[1] https://crbug.com/1017388
[2] https://lore.kernel.org/r/1442952651-4341-2-git-send-email-amstan@chromium.org

Changes in v2:
- Rebased to mainline

 drivers/usb/dwc2/hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 81afe553aa66..b90f858af960 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -2824,7 +2824,7 @@ static int dwc2_queue_transaction(struct dwc2_hsotg *hsotg,
 		list_move_tail(&chan->split_order_list_entry,
 			       &hsotg->split_order);
 
-	if (hsotg->params.host_dma) {
+	if (hsotg->params.host_dma && chan->qh) {
 		if (hsotg->params.dma_desc_enable) {
 			if (!chan->xfer_started ||
 			    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
-- 
2.23.0.866.gb869b98d4c-goog
