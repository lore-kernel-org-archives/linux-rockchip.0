From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 2/8] rockchip: rk3399: Support common spl_board_init
Date: Fri, 21 Jun 2019 00:25:00 +0530
Message-ID: <20190620185506.11449-3-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190620185506.11449-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Support common spl_board_init by moving code from puma
board file into, common rk3399-board-spl.c.

Part of the code has sysreset-gpio, regulators_enable_boot_on
but right now only puma board is using this with relevant
config options rest remains common for all targets.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/mach-rockchip/rk3399-board-spl.c     | 63 +++++++++++++++++++
 board/rockchip/evb_rk3399/evb-rk3399.c        |  8 ---
 .../puma_rk3399/puma-rk3399.c                 | 58 -----------------
 board/vamrs/rock960_rk3399/rock960-rk3399.c   |  8 ---
 4 files changed, 63 insertions(+), 74 deletions(-)

diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
index 800ca80022..65c98b697d 100644
--- a/arch/arm/mach-rockchip/rk3399-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
@@ -11,13 +11,16 @@
 #include <spl.h>
 #include <spl_gpio.h>
 #include <syscon.h>
+#include <asm/gpio.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/bootrom.h>
 #include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/periph.h>
 #include <asm/arch-rockchip/sys_proto.h>
+#include <power/regulator.h>
 #include <dm/pinctrl.h>
 
 void board_return_to_bootrom(void)
@@ -202,6 +205,66 @@ void board_init_f(ulong dummy)
 	}
 }
 
+#if defined(SPL_GPIO_SUPPORT)
+static void rk3399_force_power_on_reset(void)
+{
+	ofnode node;
+	struct gpio_desc sysreset_gpio;
+
+	debug("%s: trying to force a power-on reset\n", __func__);
+
+	node = ofnode_path("/config");
+	if (!ofnode_valid(node)) {
+		debug("%s: no /config node?\n", __func__);
+		return;
+	}
+
+	if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
+				       &sysreset_gpio, GPIOD_IS_OUT)) {
+		debug("%s: could not find a /config/sysreset-gpio\n", __func__);
+		return;
+	}
+
+	dm_gpio_set_value(&sysreset_gpio, 1);
+}
+#endif
+
+void spl_board_init(void)
+{
+#if defined(SPL_GPIO_SUPPORT)
+	struct rk3399_cru *cru = rockchip_get_cru();
+
+	/*
+	 * The RK3399 resets only 'almost all logic' (see also in the TRM
+	 * "3.9.4 Global software reset"), when issuing a software reset.
+	 * This may cause issues during boot-up for some configurations of
+	 * the application software stack.
+	 *
+	 * To work around this, we test whether the last reset reason was
+	 * a power-on reset and (if not) issue an overtemp-reset to reset
+	 * the entire module.
+	 *
+	 * While this was previously fixed by modifying the various places
+	 * that could generate a software reset (e.g. U-Boot's sysreset
+	 * driver, the ATF or Linux), we now have it here to ensure that
+	 * we no longer have to track this through the various components.
+	 */
+	if (cru->glb_rst_st != 0)
+		rk3399_force_power_on_reset();
+#endif
+
+#if defined(SPL_DM_REGULATOR)
+	/*
+	 * Turning the eMMC and SPI back on (if disabled via the Qseven
+	 * BIOS_ENABLE) signal is done through a always-on regulator).
+	 */
+	if (regulators_enable_boot_on(false))
+		debug("%s: Cannot enable boot on regulator\n", __func__);
+#endif
+
+	preloader_console_init();
+}
+
 #ifdef CONFIG_SPL_LOAD_FIT
 int board_fit_config_name_match(const char *name)
 {
diff --git a/board/rockchip/evb_rk3399/evb-rk3399.c b/board/rockchip/evb_rk3399/evb-rk3399.c
index 769b5d146f..c600553ff6 100644
--- a/board/rockchip/evb_rk3399/evb-rk3399.c
+++ b/board/rockchip/evb_rk3399/evb-rk3399.c
@@ -8,7 +8,6 @@
 #include <dm/pinctrl.h>
 #include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
-#include <spl.h>
 
 int board_init(void)
 {
@@ -64,10 +63,3 @@ int board_init(void)
 out:
 	return 0;
 }
-
-void spl_board_init(void)
-{
-	preloader_console_init();
-
-	return;
-}
diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
index c6b509c109..251cd2d566 100644
--- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
+++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
@@ -13,10 +13,8 @@
 #include <dm/pinctrl.h>
 #include <dm/uclass-internal.h>
 #include <asm/io.h>
-#include <asm/gpio.h>
 #include <asm/setup.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/periph.h>
@@ -38,62 +36,6 @@ int board_init(void)
 	return 0;
 }
 
-static void rk3399_force_power_on_reset(void)
-{
-	ofnode node;
-	struct gpio_desc sysreset_gpio;
-
-	debug("%s: trying to force a power-on reset\n", __func__);
-
-	node = ofnode_path("/config");
-	if (!ofnode_valid(node)) {
-		debug("%s: no /config node?\n", __func__);
-		return;
-	}
-
-	if (gpio_request_by_name_nodev(node, "sysreset-gpio", 0,
-				       &sysreset_gpio, GPIOD_IS_OUT)) {
-		debug("%s: could not find a /config/sysreset-gpio\n", __func__);
-		return;
-	}
-
-	dm_gpio_set_value(&sysreset_gpio, 1);
-}
-
-void spl_board_init(void)
-{
-	int  ret;
-	struct rk3399_cru *cru = rockchip_get_cru();
-
-	/*
-	 * The RK3399 resets only 'almost all logic' (see also in the TRM
-	 * "3.9.4 Global software reset"), when issuing a software reset.
-	 * This may cause issues during boot-up for some configurations of
-	 * the application software stack.
-	 *
-	 * To work around this, we test whether the last reset reason was
-	 * a power-on reset and (if not) issue an overtemp-reset to reset
-	 * the entire module.
-	 *
-	 * While this was previously fixed by modifying the various places
-	 * that could generate a software reset (e.g. U-Boot's sysreset
-	 * driver, the ATF or Linux), we now have it here to ensure that
-	 * we no longer have to track this through the various components.
-	 */
-	if (cru->glb_rst_st != 0)
-		rk3399_force_power_on_reset();
-
-	/*
-	 * Turning the eMMC and SPI back on (if disabled via the Qseven
-	 * BIOS_ENABLE) signal is done through a always-on regulator).
-	 */
-	ret = regulators_enable_boot_on(false);
-	if (ret)
-		debug("%s: Cannot enable boot on regulator\n", __func__);
-
-	preloader_console_init();
-}
-
 static void setup_macaddr(void)
 {
 #if CONFIG_IS_ENABLED(CMD_NET)
diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 018e4b55b8..2eb7120e84 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -6,7 +6,6 @@
 #include <common.h>
 #include <dm.h>
 #include <power/regulator.h>
-#include <spl.h>
 
 int board_init(void)
 {
@@ -18,10 +17,3 @@ int board_init(void)
 
 	return 0;
 }
-
-void spl_board_init(void)
-{
-	preloader_console_init();
-
-	return;
-}
-- 
2.18.0.321.gffc6fa0e3
