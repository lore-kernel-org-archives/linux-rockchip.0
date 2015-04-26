From: Yunzhi Li <lyz@rock-chips.com>
Subject: [PATCH] usb: dwc2: gadget: cleanup useless code
Date: Sun, 26 Apr 2015 15:35:38 +0800
Message-ID: <1430033738-20914-1-git-send-email-lyz@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: johnyoun@synopsys.com, gregory.herrero@intel.com, yousaf.kaukab@intel.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, rockchip-discuss@chromium.org, Yunzhi Li <lyz@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

dwc2 gadget driver s3c_hsotg_of_probe() run twice in
dwc2_gadget_init() and the first one is useless, so remove it.

Signed-off-by: Yunzhi Li <lyz@rock-chips.com>
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
