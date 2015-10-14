From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] usb: dwc2: host: Protect PCGCTL with lock in dwc2_port_resume()
Date: Wed, 14 Oct 2015 15:58:27 -0700
Message-ID: <1444863507-27463-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From code inspection, it appears to be unsafe to do a read-modify-write
of PCGCTL in dwc2_port_resume().  Let's make sure the spinlock is held
around this operation.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
 drivers/usb/dwc2/hcd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index af4e4a2..e79baf7 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -1500,6 +1500,8 @@ static void dwc2_port_resume(struct dwc2_hsotg *hsotg)
 	u32 hprt0;
 	u32 pcgctl;
 
+	spin_lock_irqsave(&hsotg->lock, flags);
+
 	/*
 	 * If hibernation is supported, Phy clock is already resumed
 	 * after registers restore.
@@ -1508,10 +1510,11 @@ static void dwc2_port_resume(struct dwc2_hsotg *hsotg)
 		pcgctl = dwc2_readl(hsotg->regs + PCGCTL);
 		pcgctl &= ~PCGCTL_STOPPCLK;
 		dwc2_writel(pcgctl, hsotg->regs + PCGCTL);
+		spin_unlock_irqrestore(&hsotg->lock, flags);
 		usleep_range(20000, 40000);
+		spin_lock_irqsave(&hsotg->lock, flags);
 	}
 
-	spin_lock_irqsave(&hsotg->lock, flags);
 	hprt0 = dwc2_read_hprt0(hsotg);
 	hprt0 |= HPRT0_RES;
 	hprt0 &= ~HPRT0_SUSP;
-- 
2.6.0.rc2.230.g3dd15c0
