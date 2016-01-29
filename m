From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v6 16/22] usb: dwc2: host: Add scheduler logging for missed SOFs
Date: Thu, 28 Jan 2016 18:20:07 -0800
Message-ID: <1454034013-24657-17-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com, kever.yang@rock-chips.com
Cc: william.wu@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de, stefan.wahren@i2se.com, linux-rockchip@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

We'll use the new "scheduler verbose debugging" macro to log missed
SOFs.  This is fast enough (assuming you configure it to use the ftrace
buffer) that we can do it without worrying about the speed hit.  The
overhead hit if the scheduler tracing is set to "no_printk" should be
near zero.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
---
Changes in v6:
- Add Heiko's Tested-by.
- Add Stefan's Tested-by.

Changes in v5: None
Changes in v4:
- Add scheduler logging for missed SOFs new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/core.h     |  3 ++-
 drivers/usb/dwc2/hcd.c      |  2 +-
 drivers/usb/dwc2/hcd_intr.c | 12 ++++++++----
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 18f9e4045643..64d45a2053bb 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -809,9 +809,10 @@ struct dwc2_hsotg {
 	bool bus_suspended;
 	bool new_connection;
 
+	u16 last_frame_num;
+
 #ifdef CONFIG_USB_DWC2_TRACK_MISSED_SOFS
 #define FRAME_NUM_ARRAY_SIZE 1000
-	u16 last_frame_num;
 	u16 *frame_num_array;
 	u16 *last_frame_num_array;
 	int frame_num_idx;
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index fd731347daf7..f48da015fa5e 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -3084,8 +3084,8 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 			FRAME_NUM_ARRAY_SIZE, GFP_KERNEL);
 	if (!hsotg->last_frame_num_array)
 		goto error1;
-	hsotg->last_frame_num = HFNUM_MAX_FRNUM;
 #endif
+	hsotg->last_frame_num = HFNUM_MAX_FRNUM;
 
 	/* Check if the bus driver or platform code has setup a dma_mask */
 	if (hsotg->core_params->dma_enable > 0 &&
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index d929db5e7f3f..dc285667233a 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -55,12 +55,16 @@
 /* This function is for debug only */
 static void dwc2_track_missed_sofs(struct dwc2_hsotg *hsotg)
 {
-#ifdef CONFIG_USB_DWC2_TRACK_MISSED_SOFS
 	u16 curr_frame_number = hsotg->frame_number;
+	u16 expected = dwc2_frame_num_inc(hsotg->last_frame_num, 1);
+
+	if (expected != curr_frame_number)
+		dwc2_sch_vdbg(hsotg, "MISSED SOF %04x != %04x\n",
+			expected, curr_frame_number);
 
+#ifdef CONFIG_USB_DWC2_TRACK_MISSED_SOFS
 	if (hsotg->frame_num_idx < FRAME_NUM_ARRAY_SIZE) {
-		if (((hsotg->last_frame_num + 1) & HFNUM_MAX_FRNUM) !=
-		    curr_frame_number) {
+		if (expected != curr_frame_number) {
 			hsotg->frame_num_array[hsotg->frame_num_idx] =
 					curr_frame_number;
 			hsotg->last_frame_num_array[hsotg->frame_num_idx] =
@@ -79,8 +83,8 @@ static void dwc2_track_missed_sofs(struct dwc2_hsotg *hsotg)
 		}
 		hsotg->dumped_frame_num_array = 1;
 	}
-	hsotg->last_frame_num = curr_frame_number;
 #endif
+	hsotg->last_frame_num = curr_frame_number;
 }
 
 static void dwc2_hc_handle_tt_clear(struct dwc2_hsotg *hsotg,
-- 
2.7.0.rc3.207.g0ac5344
