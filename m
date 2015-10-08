From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 2/5] usb: dwc2: reset dwc2 core before dwc2_get_hwparams()
Date: Wed,  7 Oct 2015 17:48:38 -0700
Message-ID: <1444265321-16768-3-git-send-email-dianders@chromium.org>
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

We initiate dwc2 usb controller in BIOS, dwc2_core_reset() should
be called before dwc2_get_hwparams() to reset core registers to
default value. Without this the FIFO setting might be incorrect
because calculating FIFO size need power-on value of
GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.

This patch could avoid warnning massage like in rk3288 platform:
[    2.074764] dwc2 ff580000.usb: 256 invalid for
host_perio_tx_fifo_size. Check HW configuration.

Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/dwc2/core.c     | 2 +-
 drivers/usb/dwc2/core.h     | 1 +
 drivers/usb/dwc2/platform.c | 6 ++++++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 43c8bf4..f2002d2 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -481,7 +481,7 @@ static void dwc2_init_fs_ls_pclk_sel(struct dwc2_hsotg *hsotg)
  * Do core a soft reset of the core.  Be careful with this because it
  * resets all the internal state machines of the core.
  */
-static int dwc2_core_reset(struct dwc2_hsotg *hsotg)
+int dwc2_core_reset(struct dwc2_hsotg *hsotg)
 {
 	u32 greset;
 	int count = 0;
diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index ebf2504..c258d19 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -862,6 +862,7 @@ enum dwc2_halt_status {
  * The following functions support initialization of the core driver component
  * and the DWC_otg controller
  */
+extern int dwc2_core_reset(struct dwc2_hsotg *hsotg);
 extern void dwc2_core_host_init(struct dwc2_hsotg *hsotg);
 extern int dwc2_enter_hibernation(struct dwc2_hsotg *hsotg);
 extern int dwc2_exit_hibernation(struct dwc2_hsotg *hsotg, bool restore);
diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index b920e43..d27521c 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -254,6 +254,12 @@ static int dwc2_driver_probe(struct platform_device *dev)
 	spin_lock_init(&hsotg->lock);
 	mutex_init(&hsotg->init_mutex);
 
+	/*
+	 * Reset before dwc2_get_hwparams() then it could get power-on real
+	 * reset value form registers.
+	 */
+	dwc2_core_reset(hsotg);
+
 	/* Detect config values from hardware */
 	retval = dwc2_get_hwparams(hsotg);
 	if (retval)
-- 
2.6.0.rc2.230.g3dd15c0
