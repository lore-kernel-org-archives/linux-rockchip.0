From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH 2/2] usb: dwc2: fix isoc split in transfer with no data
Date: Tue, 24 Apr 2018 10:43:44 +0800
Message-ID: <1524537824-22010-3-git-send-email-william.wu@rock-chips.com>
References: <1524537824-22010-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1524537824-22010-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: hminas@synopsys.com, felipe.balbi@linux.intel.com, gregkh@linuxfoundation.org
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, william.wu@rock-chips.com, wzz@rock-chips.com, zsq@rock-chips.com, Allen.Hsu@quantatw.com, StanTsui@AOPEN.com
List-Id: linux-rockchip.vger.kernel.org

If isoc split in transfer with no data (the length of DATA0
packet is 0), we can't simply return immediately. Because the
DATA0 can be the first transaction or the second transaction for
the isoc split in transaction. If the DATA0 packet with on data
is in the first transaction, we can return immediately. But if
the the DATA0 packet with on data is in the second transaction
of isoc split in transaction sequence, we need to increase the
qtd->isoc_frame_index and giveback urb to device driver if needed,
otherwise, the MDATA packet will be lost.

A typical test case is that connect the dwc2 controller with an
usb hs Hub (GL852G-12), and plug an usb fs audio device (Plantronics
headset) into the downstream port of Hub. Then use the usb mic
to record, we can find noise when playback.

In the case, the isoc split in transaction sequence like this:

- SSPLIT IN transaction
- CSPLIT IN transaction
  - MDATA packet (176 bytes)
- CSPLIT IN transaction
  - DATA0 packet (0 byte)

This patch use both the length of DATA0 and qtd->isoc_split_offset
to check if the DATA0 is in the second transaction.

Signed-off-by: William Wu <william.wu@rock-chips.com>
---
 drivers/usb/dwc2/hcd_intr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 5e2378f..479f628 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -930,7 +930,7 @@ static int dwc2_xfercomp_isoc_split_in(struct dwc2_hsotg *hsotg,
 	frame_desc = &qtd->urb->iso_descs[qtd->isoc_frame_index];
 	len = dwc2_get_actual_xfer_length(hsotg, chan, chnum, qtd,
 					  DWC2_HC_XFER_COMPLETE, NULL);
-	if (!len) {
+	if (!len && !qtd->isoc_split_offset) {
 		qtd->complete_split = 0;
 		qtd->isoc_split_offset = 0;
 		return 0;
-- 
2.0.0
