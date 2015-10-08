From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 4/5] usb: dwc2: Speed dwc2_get_hwparams() on some host-only
 ports
Date: Wed,  7 Oct 2015 17:48:40 -0700
Message-ID: <1444265321-16768-5-git-send-email-dianders@chromium.org>
References: <1444265321-16768-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1444265321-16768-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On some host-only DWC2 ports (like the one in rk3288) when we set
GUSBCFG_FORCEHOSTMODE in GUSBCFG and then read back, we don't see the
bit set.  Presumably that's because the port is always forced to HOST
mode so there's no reason to implement these status bits.

Since we know dwc2_core_reset() is always called before
dwc2_get_hwparams() and we know dwc2_core_reset() should have set
GUSBCFG_FORCEHOSTMODE whenever hsotg->dr_mode == USB_DR_MODE_HOST, we
can just check hsotg->dr_mode to decide that we can skip the delays in
dwc2_get_hwparams().

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/dwc2/core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 9f1c438..27ade0c 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -3070,7 +3070,7 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 	unsigned width;
 	u32 hwcfg1, hwcfg2, hwcfg3, hwcfg4;
 	u32 hptxfsiz, grxfsiz, gnptxfsiz;
-	u32 gusbcfg;
+	u32 gusbcfg = 0;
 
 	/*
 	 * Attempt to ensure this device is really a DWC_otg Controller.
@@ -3103,8 +3103,8 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 	dev_dbg(hsotg->dev, "grxfsiz=%08x\n", grxfsiz);
 
 	/* Force host mode to get HPTXFSIZ / GNPTXFSIZ exact power on value */
-	gusbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
-	if (!(gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
+	if (hsotg->dr_mode != USB_DR_MODE_HOST) {
+		gusbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
 		dwc2_writel(gusbcfg | GUSBCFG_FORCEHOSTMODE,
 			    hsotg->regs + GUSBCFG);
 		usleep_range(100000, 150000);
@@ -3114,7 +3114,7 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 	hptxfsiz = dwc2_readl(hsotg->regs + HPTXFSIZ);
 	dev_dbg(hsotg->dev, "gnptxfsiz=%08x\n", gnptxfsiz);
 	dev_dbg(hsotg->dev, "hptxfsiz=%08x\n", hptxfsiz);
-	if (!(gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
+	if (hsotg->dr_mode != USB_DR_MODE_HOST) {
 		dwc2_writel(gusbcfg, hsotg->regs + GUSBCFG);
 		usleep_range(100000, 150000);
 	}
-- 
2.6.0.rc2.230.g3dd15c0
