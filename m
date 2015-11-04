From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/3] usb: dwc2: rockchip: Make the max_transfer_size automatic
Date: Wed,  4 Nov 2015 14:53:03 -0800
Message-ID: <1446677585-28582-2-git-send-email-dianders@chromium.org>
References: <1446677585-28582-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446677585-28582-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Previously we needed to set the max_transfer_size to explicitly be 65535
because the old driver would detect that our hardware could support much
bigger transfers and then would try to do them.  This wouldn't work
since the DMA alignment code couldn't support it.

Later in commit e8f8c14d9da7 ("usb: dwc2: clip max_transfer_size to
65535") upstream added support for clipping this automatically.  Since
that commit it has been OK to just use "-1" (default), but nobody
bothered to change it.

Let's change it to default now for two reasons:
- It's nice to use autodetected params.
- If we can remove the 65535 limit, we can transfer more!

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
 drivers/usb/dwc2/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 5859b0fa19ee..f26e0c31c07e 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -95,7 +95,7 @@ static const struct dwc2_core_params params_rk3066 = {
 	.host_rx_fifo_size		= 520,	/* 520 DWORDs */
 	.host_nperio_tx_fifo_size	= 128,	/* 128 DWORDs */
 	.host_perio_tx_fifo_size	= 256,	/* 256 DWORDs */
-	.max_transfer_size		= 65535,
+	.max_transfer_size		= -1,
 	.max_packet_count		= -1,
 	.host_channels			= -1,
 	.phy_type			= -1,
-- 
2.6.0.rc2.230.g3dd15c0
