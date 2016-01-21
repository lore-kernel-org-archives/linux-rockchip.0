From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 15/21] usb: dwc2: host: Add scheduler logging for missed
 SOFs
Date: Wed, 20 Jan 2016 21:04:26 -0800
Message-ID: <1453352672-27890-16-git-send-email-dianders@chromium.org>
References: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1453352672-27890-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

We'll use the new "scheduler verbose debugging" macro to log missed
SOFs.  This is fast enough (assuming you configure it to use the ftrace
buffer) that we can do it without worrying about the speed hit.  The
overhead hit if the scheduler tracing is set to "no_printk" should be
near zero.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
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
index 350453999bad..32c160e3e13e 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -3077,8 +3077,8 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 			FRAME_NUM_ARRAY_SIZE, GFP_KERNEL);
 	if (!hsotg->last_frame_num_array)
 		goto error1;
-	hsotg->last_frame_num = HFNUM_MAX_FRNUM;
 #endif
+	hsotg->last_frame_num = HFNUM_MAX_FRNUM;
 
 	/* Check if the bus driver or platform code has setup a dma_mask */
 	if (hsotg->core_params->dma_enable > 0 &&
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index b54a0c41d34f..1875e4590a3c 100644
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
