From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v6 19/22] usb: dwc2: host: Add
 dwc2_hcd_get_future_frame_number() call
Date: Thu, 28 Jan 2016 18:20:10 -0800
Message-ID: <1454034013-24657-20-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
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

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
---
Changes in v6:
- Add Heiko's Tested-by.
- Add Stefan's Tested-by.

Changes in v5: None
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
index f48da015fa5e..8edd0b45f41c 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -1947,6 +1947,35 @@ int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
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
