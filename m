From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 03/13] pinctrl: rockchip: make driver be tristate module
Date: Fri, 17 Jul 2020 09:48:58 +0800
Message-ID: <20200717014908.13914-4-jay.xu@rock-chips.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-1-jay.xu@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Make pinctrl-rockchip driver to be tristate module, support to build as
a module, this is useful for GKI.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/Kconfig            | 2 +-
 drivers/pinctrl/pinctrl-rockchip.c | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 8828613c4e0e..dd4874e2ac67 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -207,7 +207,7 @@ config PINCTRL_OXNAS
 	select MFD_SYSCON
 
 config PINCTRL_ROCKCHIP
-	bool
+	tristate "Rockchip gpio and pinctrl driver"
 	select PINMUX
 	select GENERIC_PINCONF
 	select GENERIC_IRQ_CHIP
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 77c1e6744f6c..ec509ef8bd8d 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -16,10 +16,12 @@
  */
 
 #include <linux/init.h>
+#include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/io.h>
 #include <linux/bitops.h>
 #include <linux/gpio/driver.h>
+#include <linux/of_device.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
 #include <linux/pinctrl/machine.h>
@@ -4259,6 +4261,7 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 		.data = &rk3399_pin_ctrl },
 	{},
 };
+MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
 
 static struct platform_driver rockchip_pinctrl_driver = {
 	.probe		= rockchip_pinctrl_probe,
@@ -4274,3 +4277,7 @@ static int __init rockchip_pinctrl_drv_register(void)
 	return platform_driver_register(&rockchip_pinctrl_driver);
 }
 postcore_initcall(rockchip_pinctrl_drv_register);
+
+MODULE_DESCRIPTION("ROCKCHIP Pin Controller Driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:pinctrl-rockchip");
-- 
2.17.1
