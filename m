From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 1/2] pinctrl: rockchip: new rockchip dir for pinctrl-rockchip
Date: Fri, 17 Jan 2020 16:13:57 +0800
Message-ID: <20200117081358.5772-2-jay.xu@rock-chips.com>
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
 <20200117081358.5772-1-jay.xu@rock-chips.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200117081358.5772-1-jay.xu@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: linus.walleij@linaro.org, heiko@sntech.de, david.wu@rock-chips.com, kever.yang@rock-chips.com
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, jay.xu@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Create a new direcoty "rockchip" under pinctrl for pinctrl-rockchip.

This is base patch which prepares for spliting driver by SoC types.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/Kconfig                           |  7 -------
 drivers/pinctrl/rockchip/Kconfig                  | 12 ++++++++++++
 drivers/pinctrl/rockchip/Makefile                 |  2 ++
 drivers/pinctrl/{ => rockchip}/pinctrl-rockchip.c |  0
 4 files changed, 14 insertions(+), 7 deletions(-)
 create mode 100644 drivers/pinctrl/rockchip/Kconfig
 create mode 100644 drivers/pinctrl/rockchip/Makefile
 rename drivers/pinctrl/{ => rockchip}/pinctrl-rockchip.c (100%)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 3bfbf2ff6e2b..5a16020c733d 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -186,13 +186,6 @@ config PINCTRL_OXNAS
 	select GPIOLIB_IRQCHIP
 	select MFD_SYSCON
 
-config PINCTRL_ROCKCHIP
-	bool
-	select PINMUX
-	select GENERIC_PINCONF
-	select GENERIC_IRQ_CHIP
-	select MFD_SYSCON
-
 config PINCTRL_RZA1
 	bool "Renesas RZ/A1 gpio and pinctrl driver"
 	depends on OF
diff --git a/drivers/pinctrl/rockchip/Kconfig b/drivers/pinctrl/rockchip/Kconfig
new file mode 100644
index 000000000000..7a0077ca32dd
--- /dev/null
+++ b/drivers/pinctrl/rockchip/Kconfig
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+
+if (ARCH_ROCKCHIP || COMPILE_TEST)
+
+config PINCTRL_ROCKCHIP
+	bool
+	select PINMUX
+	select GENERIC_PINCONF
+	select GENERIC_IRQ_CHIP
+	select MFD_SYSCON
+
+endif
diff --git a/drivers/pinctrl/rockchip/Makefile b/drivers/pinctrl/rockchip/Makefile
new file mode 100644
index 000000000000..50568f4b6667
--- /dev/null
+++ b/drivers/pinctrl/rockchip/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PINCTRL_ROCKCHIP)	+= pinctrl-rockchip.o
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/rockchip/pinctrl-rockchip.c
similarity index 100%
rename from drivers/pinctrl/pinctrl-rockchip.c
rename to drivers/pinctrl/rockchip/pinctrl-rockchip.c
-- 
2.17.1
