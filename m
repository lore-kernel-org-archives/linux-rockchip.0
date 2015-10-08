From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 5/5] usb: dwc2: reduce dwc2 driver probe time
Date: Wed,  7 Oct 2015 17:48:41 -0700
Message-ID: <1444265321-16768-6-git-send-email-dianders@chromium.org>
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

From: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

I found that the probe function of dwc2 driver takes much time
when kernel boot up. There are many long delays in the probe
function these take almost 1 second.

This patch trying to reduce unnecessary delay time.

In dwc2_core_reset() I see it use two at least 20ms delays to
wait AHB idle and core soft reset, but dwc2 data book said that
dwc2 core soft reset and AHB idle just need a few clocks (I think
it refers to AHB clock, and AHB clock run at 150MHz in my RK3288
board), so 20ms is too long, delay 1us for wait AHB idle and soft
reset is enough.

And in dwc2_get_hwparams() it takes 150ms to wait ForceHostMode
and ForceDeviceMode valid but in data book it said software must
wait at least 25ms before the change to take effect, so I reduce
this time to 25ms~50ms. By the way, is there any state bit show
that the force mode take effect ? Could we poll curmod bit for
figuring out if the change take effect ?

It seems that usleep_range() at boot time will pick the longest
value in the range. In dwc2_core_reset() there is a very long
delay takes 200ms, and this function run twice when probe, could
any one tell me is this delay time resonable ?

I have tried this patch in my RK3288-evb board. It works well.

Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/dwc2/core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 27ade0c..59fe48f 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -491,7 +491,7 @@ int dwc2_core_reset(struct dwc2_hsotg *hsotg)
 
 	/* Wait for AHB master IDLE state */
 	do {
-		usleep_range(20000, 40000);
+		udelay(1);
 		greset = dwc2_readl(hsotg->regs + GRSTCTL);
 		if (++count > 50) {
 			dev_warn(hsotg->dev,
@@ -506,7 +506,7 @@ int dwc2_core_reset(struct dwc2_hsotg *hsotg)
 	greset |= GRSTCTL_CSFTRST;
 	dwc2_writel(greset, hsotg->regs + GRSTCTL);
 	do {
-		usleep_range(20000, 40000);
+		udelay(1);
 		greset = dwc2_readl(hsotg->regs + GRSTCTL);
 		if (++count > 50) {
 			dev_warn(hsotg->dev,
@@ -537,7 +537,7 @@ int dwc2_core_reset(struct dwc2_hsotg *hsotg)
 	 * NOTE: This long sleep is _very_ important, otherwise the core will
 	 * not stay in host mode after a connector ID change!
 	 */
-	usleep_range(150000, 200000);
+	usleep_range(150000, 160000);
 
 	return 0;
 }
@@ -3107,7 +3107,7 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 		gusbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
 		dwc2_writel(gusbcfg | GUSBCFG_FORCEHOSTMODE,
 			    hsotg->regs + GUSBCFG);
-		usleep_range(100000, 150000);
+		usleep_range(25000, 50000);
 	}
 
 	gnptxfsiz = dwc2_readl(hsotg->regs + GNPTXFSIZ);
@@ -3116,7 +3116,7 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 	dev_dbg(hsotg->dev, "hptxfsiz=%08x\n", hptxfsiz);
 	if (hsotg->dr_mode != USB_DR_MODE_HOST) {
 		dwc2_writel(gusbcfg, hsotg->regs + GUSBCFG);
-		usleep_range(100000, 150000);
+		usleep_range(25000, 50000);
 	}
 
 	/* hwcfg2 */
-- 
2.6.0.rc2.230.g3dd15c0
