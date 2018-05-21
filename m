From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH] usb: dwc2: fix the incorrect bitmaps for the ports of multi_tt hub
Date: Mon, 21 May 2018 18:12:00 +0800
Message-ID: <1526897520-9340-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: hminas@synopsys.com, felipe.balbi@linux.intel.com, gregkh@linuxfoundation.org
Cc: sergei.shtylyov@cogentembedded.com, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, william.wu@rock-chips.com, fml@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

The dwc2_get_ls_map() use ttport to reference into the
bitmap if we're on a multi_tt hub. But the bitmaps index
from 0 to (hub->maxchild - 1), while the ttport index from
1 to hub->maxchild. This will cause invalid memory access
when the number of ttport is hub->maxchild.

Without this patch, I can easily meet a Kernel panic issue
if connect a low-speed USB mouse with the max port of FE2.1
multi-tt hub (1a40:0201) on rk3288 platform.

Signed-off-by: William Wu <william.wu@rock-chips.com>
---
 drivers/usb/dwc2/hcd_queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
index d7c3d6c..9c55d1a 100644
--- a/drivers/usb/dwc2/hcd_queue.c
+++ b/drivers/usb/dwc2/hcd_queue.c
@@ -383,7 +383,7 @@ static unsigned long *dwc2_get_ls_map(struct dwc2_hsotg *hsotg,
 	/* Get the map and adjust if this is a multi_tt hub */
 	map = qh->dwc_tt->periodic_bitmaps;
 	if (qh->dwc_tt->usb_tt->multi)
-		map += DWC2_ELEMENTS_PER_LS_BITMAP * qh->ttport;
+		map += DWC2_ELEMENTS_PER_LS_BITMAP * (qh->ttport - 1);
 
 	return map;
 }
-- 
2.0.0
