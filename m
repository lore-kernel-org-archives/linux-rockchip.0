From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v6 5/5] rockchip: roc-rk3399-pc: Set LED only during POR and
 pwr_key=y
Date: Tue, 21 Jul 2020 20:36:04 +0530
Message-ID: <20200721150604.35410-6-jagan@amarulasolutions.com>
References: <20200721150604.35410-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721150604.35410-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

ROC-RK3399-PC has specific set of configurations for
on-board led setup.

Due to easiness for user to know the state of the board
roc-rk339-pc board code will setup the low power led
on/off, and waiting for user to press power key and then
glow full power led.

All this needs to happen only during power-on-reset not
for soft reset or WDT.

Also, it is not a proper usage to ask the user to press
the Power key if the board connected remotely, so add
the environment variable 'pwr_key' to check as well.

So, user need to press Power key only
- during POR
- pwr_key=y

Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v6:
- increase SPL _R malloc

 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 38 +++++++++++++++++++--
 configs/roc-pc-mezzanine-rk3399_defconfig   |  4 ++-
 configs/roc-pc-rk3399_defconfig             |  4 ++-
 3 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
index 2b447df8aa..93e7d776fb 100644
--- a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
+++ b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
@@ -5,11 +5,15 @@
 
 #include <common.h>
 #include <dm.h>
+#include <env.h>
 #include <log.h>
-#include <power/regulator.h>
 #include <spl_gpio.h>
 #include <asm/io.h>
+#include <power/regulator.h>
+
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/gpio.h>
+#include <asm/arch-rockchip/grf_rk3399.h>
 
 #ifndef CONFIG_SPL_BUILD
 int board_early_init_f(void)
@@ -32,13 +36,43 @@ out:
 
 #else
 
+#define PMUGRF_BASE	0xff320000
 #define GPIO0_BASE	0xff720000
 
+/**
+ * LED setup for roc-rk3399-pc
+ *
+ * 1. Set the low power leds (only during POR, pwr_key env is 'y')
+ *    glow yellow LED, termed as low power
+ *    poll for on board power key press
+ *    once powe key pressed, turn off yellow
+ * 2. Turn on red LED, indicating full power mode
+ */
 void led_setup(void)
 {
 	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
+	struct rk3399_pmugrf_regs * const pmugrf = (void *)PMUGRF_BASE;
+	bool press_pwr_key = false;
+
+	if (IS_ENABLED(CONFIG_SPL_ENV_SUPPORT)) {
+		env_init();
+		env_load();
+		if (env_get_yesno("pwr_key") == 1)
+			press_pwr_key = true;
+	}
+
+	if (press_pwr_key && !strcmp(get_reset_cause(), "POR")) {
+		spl_gpio_output(gpio0, GPIO(BANK_A, 2), 1);
+
+		spl_gpio_set_pull(&pmugrf->gpio0_p, GPIO(BANK_A, 5),
+				  GPIO_PULL_NORMAL);
+		while (readl(&gpio0->ext_port) & 0x20)
+			;
+
+		spl_gpio_output(gpio0, GPIO(BANK_A, 2), 0);
+	}
 
-	/* Turn on red LED, indicating full power mode */
 	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
 }
+
 #endif
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 15d511741f..9a01de454f 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -19,7 +19,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -34,6 +35,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 2a6d0d22c8..6181da763d 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -19,7 +19,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -33,6 +34,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
-- 
2.25.1
