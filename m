From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] usb: host: ohci-platform: Disable ohci for rk3288
Date: Thu,  2 Jul 2020 14:35:04 +0530
Message-ID: <20200702090504.36670-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, mylene.josserand@collabora.com
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

rk3288 has usb host0 ohci controller but doesn't actually work 
on real hardware but it works with new revision chip rk3288w.

So, disable ohci for rk3288.

For rk3288w chips the compatible update code is handled by bootloader.

Cc: William Wu <william.wu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note:
- U-Boot patch for compatible update
https://patchwork.ozlabs.org/project/uboot/patch/20200702084820.35942-1-jagan@amarulasolutions.com/

 drivers/usb/host/ohci-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
index 7addfc2cbadc..24655ed6a7e0 100644
--- a/drivers/usb/host/ohci-platform.c
+++ b/drivers/usb/host/ohci-platform.c
@@ -96,7 +96,7 @@ static int ohci_platform_probe(struct platform_device *dev)
 	struct ohci_hcd *ohci;
 	int err, irq, clk = 0;
 
-	if (usb_disabled())
+	if (usb_disabled() || of_machine_is_compatible("rockchip,rk3288"))
 		return -ENODEV;
 
 	/*
-- 
2.25.1
