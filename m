From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v4 18/21] usb: dwc2: host: Add dwc2_hcd_get_future_frame_number() call
Date: Wed, 20 Jan 2016 21:04:29 -0800
Message-ID: <1453352672-27890-19-git-send-email-dianders@chromium.org>
References: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com, kever.yang@rock-chips.com
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

As we start getting more exact about our scheduling it's becoming more
and more important to know exactly how far through the current frame we
are.  This lets us make decisions about whether there's still time left
to start a new transaction in the current frame.

We'll add dwc2_hcd_get_future_frame_number() which will tell you what
the frame number will be a certain number of microseconds (us) from
now.  We can use this information to help decide if there's enough time
left in the frame for a transaction that will take a certain duration.

This is expected to be used by a future change ("usb: dwc2: host:
Properly set even/odd frame").

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Changes in v4:
- Add dwc2_hcd_get_future_frame_number() call new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/core.h |  4 ++++
 drivers/usb/dwc2/hcd.c  | 29 +++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 64d45a2053bb..52cbea28d0e9 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -1235,12 +1235,16 @@ static inline int dwc2_hsotg_set_test_mode(struct dwc2_hsotg *hsotg,
 
 #if IS_ENABLED(CONFIG_USB_DWC2_HOST) || IS_ENABLED(CONFIG_USB_DWC2_DUAL_ROLE)
 extern int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg);
+extern int dwc2_hcd_get_future_frame_number(struct dwc2_hsotg *hsotg, int us);
 extern void dwc2_hcd_connect(struct dwc2_hsotg *hsotg);
 extern void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force);
 extern void dwc2_hcd_start(struct dwc2_hsotg *hsotg);
 #else
 static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
 { return 0; }
+static inline int dwc2_hcd_get_future_frame_number(struct dwc2_hsotg *hsotg,
+						   int us)
+{ return 0; }
 static inline void dwc2_hcd_connect(struct dwc2_hsotg *hsotg) {}
 static inline void dwc2_hcd_disconnect(struct dwc2_hsotg *hsotg, bool force) {}
 static inline void dwc2_hcd_start(struct dwc2_hsotg *hsotg) {}
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 32c160e3e13e..69a2a175100a 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -1942,6 +1942,35 @@ int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
 	return (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT;
 }
 
+int dwc2_hcd_get_future_frame_number(struct dwc2_hsotg *hsotg, int us)
+{
+	u32 hprt = dwc2_readl(hsotg->regs + HPRT0);
+	u32 hfir = dwc2_readl(hsotg->regs + HFIR);
+	u32 hfnum = dwc2_readl(hsotg->regs + HFNUM);
+	unsigned int us_per_frame;
+	unsigned int frame_number;
+	unsigned int remaining;
+	unsigned int interval;
+	unsigned int phy_clks;
+
+	/* High speed has 125 us per (micro) frame; others are 1 ms per */
+	us_per_frame = (hprt & HPRT0_SPD_MASK) ? 1000 : 125;
+
+	/* Extract fields */
+	frame_number = (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT;
+	remaining = (hfnum & HFNUM_FRREM_MASK) >> HFNUM_FRREM_SHIFT;
+	interval = (hfir & HFIR_FRINT_MASK) >> HFIR_FRINT_SHIFT;
+
+	/*
+	 * Number of phy clocks since the last tick of the frame number after
+	 * "us" has passed.
+	 */
+	phy_clks = (interval - remaining) +
+		   DIV_ROUND_UP(interval * us, us_per_frame);
+
+	return dwc2_frame_num_inc(frame_number, phy_clks / interval);
+}
+
 int dwc2_hcd_is_b_host(struct dwc2_hsotg *hsotg)
 {
 	return hsotg->op_state == OTG_STATE_B_HOST;
-- 
2.7.0.rc3.207.g0ac5344
