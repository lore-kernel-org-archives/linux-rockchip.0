From: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] usb: dwc2: gadget: cleanup useless code
Date: Sun, 26 Apr 2015 15:30:17 +0800
Message-ID: <1430033417-19624-1-git-send-email-lyz@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

dwc2 gadget driver s3c_hsotg_of_probe() run twice in
dwc2_gadget_init() and the first one is useless, so remove it.

Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/usb/dwc2/gadget.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 6a30887..2ae74f2 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -3851,8 +3851,6 @@ int dwc2_gadget_init(struct dwc2_hsotg *hsotg, int irq)
 	/* Set default UTMI width */
 	hsotg->phyif = GUSBCFG_PHYIF16;
 
-	s3c_hsotg_of_probe(hsotg);
-
 	/* Initialize to legacy fifo configuration values */
 	hsotg->g_rx_fifo_sz = 2048;
 	hsotg->g_np_g_tx_fifo_sz = 1024;
-- 
2.0.0
