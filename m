From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 1/5] usb: dwc2: Restore GUSBCFG in dwc2_get_hwparams()
Date: Wed,  7 Oct 2015 17:48:37 -0700
Message-ID: <1444265321-16768-2-git-send-email-dianders@chromium.org>
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

Previously dwc2_get_hwparams() was changing GUSBCFG and not putting it
back the way it was (specifically it set and cleared FORCEHOSTMODE).
Since we want to move dwc2_core_reset() _before_ dwc2_get_hwparams() we
should make sure dwc2_get_hwparams() isn't messing with things in a
permanent way.

Since we're now looking at GUSBCFG, it's obvious that we shouldn't need
all the extra delays if FORCEHOSTMODE was already set.  This will avoid
some delays for any ports that have forced host mode.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/dwc2/core.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index bf5e951..43c8bf4 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -3097,18 +3097,20 @@ int dwc2_get_hwparams(struct dwc2_hsotg *hsotg)
 
 	/* Force host mode to get HPTXFSIZ / GNPTXFSIZ exact power on value */
 	gusbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
-	gusbcfg |= GUSBCFG_FORCEHOSTMODE;
-	dwc2_writel(gusbcfg, hsotg->regs + GUSBCFG);
-	usleep_range(100000, 150000);
+	if (!(gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
+		dwc2_writel(gusbcfg | GUSBCFG_FORCEHOSTMODE,
+			    hsotg->regs + GUSBCFG);
+		usleep_range(100000, 150000);
+	}
 
 	gnptxfsiz = dwc2_readl(hsotg->regs + GNPTXFSIZ);
 	hptxfsiz = dwc2_readl(hsotg->regs + HPTXFSIZ);
 	dev_dbg(hsotg->dev, "gnptxfsiz=%08x\n", gnptxfsiz);
 	dev_dbg(hsotg->dev, "hptxfsiz=%08x\n", hptxfsiz);
-	gusbcfg = dwc2_readl(hsotg->regs + GUSBCFG);
-	gusbcfg &= ~GUSBCFG_FORCEHOSTMODE;
-	dwc2_writel(gusbcfg, hsotg->regs + GUSBCFG);
-	usleep_range(100000, 150000);
+	if (!(gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
+		dwc2_writel(gusbcfg, hsotg->regs + GUSBCFG);
+		usleep_range(100000, 150000);
+	}
 
 	/* hwcfg2 */
 	hw->op_mode = (hwcfg2 & GHWCFG2_OP_MODE_MASK) >>
-- 
2.6.0.rc2.230.g3dd15c0
