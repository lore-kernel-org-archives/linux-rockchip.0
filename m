From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 4/4] usb: dwc2: host: Giveback URB in tasklet context
Date: Fri,  6 Nov 2015 17:24:02 -0800
Message-ID: <1446859442-5413-5-git-send-email-dianders@chromium.org>
References: <1446859442-5413-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446859442-5413-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In commit 94dfd7edfd5c ("USB: HCD: support giveback of URB in tasklet
context") support was added to give back the URB in tasklet context.
Let's take advantage of this in dwc2.

This speeds up the dwc2 interrupt handler considerably.

Note that this requires the change ("usb: dwc2: host: Add a delay before
releasing periodic bandwidth") to come first.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
---
Changes in v2:
- Commit message now says that URB giveback change needs delay change.

 drivers/usb/dwc2/hcd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index 33495b235b3c..b899b06b41cc 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -2266,9 +2266,7 @@ void dwc2_host_complete(struct dwc2_hsotg *hsotg, struct dwc2_qtd *qtd,
 	kfree(qtd->urb);
 	qtd->urb = NULL;
 
-	spin_unlock(&hsotg->lock);
 	usb_hcd_giveback_urb(dwc2_hsotg_to_hcd(hsotg), urb, status);
-	spin_lock(&hsotg->lock);
 }
 
 /*
@@ -2881,7 +2879,7 @@ static struct hc_driver dwc2_hc_driver = {
 	.hcd_priv_size = sizeof(struct wrapper_priv_data),
 
 	.irq = _dwc2_hcd_irq,
-	.flags = HCD_MEMORY | HCD_USB2,
+	.flags = HCD_MEMORY | HCD_USB2 | HCD_BH,
 
 	.start = _dwc2_hcd_start,
 	.stop = _dwc2_hcd_stop,
-- 
2.6.0.rc2.230.g3dd15c0
