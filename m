From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 5/5] roc-rk3399-pc: Set LED only during POR and pwr_key=y
Date: Mon,  8 Jun 2020 14:31:44 -0400
Message-ID: <20200608183144.26809-6-jagan@amarulasolutions.com>
References: <20200608183144.26809-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200608183144.26809-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Tested-by: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v3:
- new patch

 board/firefly/roc-pc-rk3399/spl.c         | 35 ++++++++++++++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  4 ++-
 configs/roc-pc-rk3399_defconfig           |  4 ++-
 3 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/board/firefly/roc-pc-rk3399/spl.c b/board/firefly/roc-pc-rk3399/spl.c
index a7664c6b86..771a7fb2f2 100644
--- a/board/firefly/roc-pc-rk3399/spl.c
+++ b/board/firefly/roc-pc-rk3399/spl.c
@@ -4,16 +4,49 @@
  */
 
 #include <common.h>
+#include <env.h>
 #include <spl_gpio.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/gpio.h>
+#include <asm/arch-rockchip/grf_rk3399.h>
 
+#define PMUGRF_BASE		0xff320000
 #define GPIO0_BASE		0xff720000
 
+/**
+ * LED setup for roc-rk3399-pc
+ *
+ * 1. Set the low power leds (only during POR, pwr_key env is 'y')
+ *    glow yellow LED, termed as low power
+ *    poll for on board power key press
+ *    once powe key pressed, turn off yellow
+ * 2. Turn on red LED, indicating full power mode
+ */
 static void led_setup(void)
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
 
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 8ad74dc408..d3369063ea 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -17,7 +17,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -32,6 +33,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 6fd06d6381..0650b941c2 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -17,7 +17,8 @@ CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x20000
+CONFIG_SPL_ENV_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
@@ -31,6 +32,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_SPL_DM_SEQ_ALIAS=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
-- 
2.20.1
