From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 1/5] rockchip: spl: Add spl_board_init
Date: Thu, 18 Jun 2020 21:09:44 +0530
Message-ID: <20200618153948.218506-2-jagan@amarulasolutions.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200618153948.218506-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

spl_board_init is a proper location and common practice
option to have a custom board initialization code after
relocation in SPL.

This patch add the feasibility to add the custom SPL board
initzlaization throughout rockchip platforms and adjust
existing the spl board code on respective boards.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v4:
- new patch

 arch/arm/Kconfig                              |  1 +
 arch/arm/mach-rockchip/Kconfig                |  2 -
 arch/arm/mach-rockchip/rk3188/rk3188.c        |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        | 57 -----------------
 arch/arm/mach-rockchip/spl.c                  | 10 +++
 board/firefly/firefly-rk3288/firefly-rk3288.c |  2 +-
 board/phytec/phycore_rk3288/phycore-rk3288.c  |  2 +-
 .../puma_rk3399/puma-rk3399.c                 | 61 +++++++++++++++++++
 8 files changed, 75 insertions(+), 62 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index edc9e38c6c..57ddf15cb3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1679,6 +1679,7 @@ config ARCH_ROCKCHIP
 	select ENABLE_ARM_SOC_BOOT0_HOOK
 	select OF_CONTROL
 	select SPI
+	select SPL_BOARD_INIT if SPL
 	select SPL_DM if SPL
 	select SYS_MALLOC_F
 	select SYS_THUMB_BUILD if !ARM64
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 0cb1f23d0f..b1008a5058 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -49,7 +49,6 @@ config ROCKCHIP_RK3128
 config ROCKCHIP_RK3188
 	bool "Support Rockchip RK3188"
 	select CPU_V7A
-	select SPL_BOARD_INIT if SPL
 	select SUPPORT_SPL
 	select SPL
 	select SPL_CLK
@@ -208,7 +207,6 @@ config ROCKCHIP_RK3399
 	select SPL
 	select SPL_ATF
 	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
-	select SPL_BOARD_INIT if SPL
 	select SPL_LOAD_FIT
 	select SPL_CLK if SPL
 	select SPL_PINCTRL if SPL
diff --git a/arch/arm/mach-rockchip/rk3188/rk3188.c b/arch/arm/mach-rockchip/rk3188/rk3188.c
index ef57dfd761..0c0fe84ad5 100644
--- a/arch/arm/mach-rockchip/rk3188/rk3188.c
+++ b/arch/arm/mach-rockchip/rk3188/rk3188.c
@@ -111,7 +111,7 @@ static int setup_led(void)
 	return 0;
 }
 
-void spl_board_init(void)
+void rk_spl_board_init(void)
 {
 	int ret;
 
diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
index 4fda93b152..b53a111769 100644
--- a/arch/arm/mach-rockchip/rk3399/rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
@@ -217,61 +217,4 @@ void spl_perform_fixups(struct spl_image_info *spl_image)
 			   "u-boot,spl-boot-device", boot_ofpath);
 }
 
-#if defined(SPL_GPIO_SUPPORT)
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
-#endif
-
-void spl_board_init(void)
-{
-#if defined(SPL_GPIO_SUPPORT)
-	struct rockchip_cru *cru = rockchip_get_cru();
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
-#endif
-
-#if defined(SPL_DM_REGULATOR)
-	/*
-	 * Turning the eMMC and SPI back on (if disabled via the Qseven
-	 * BIOS_ENABLE) signal is done through a always-on regulator).
-	 */
-	if (regulators_enable_boot_on(false))
-		debug("%s: Cannot enable boot on regulator\n", __func__);
-#endif
-}
 #endif
diff --git a/arch/arm/mach-rockchip/spl.c b/arch/arm/mach-rockchip/spl.c
index cddf4fd3d5..d4c83a1119 100644
--- a/arch/arm/mach-rockchip/spl.c
+++ b/arch/arm/mach-rockchip/spl.c
@@ -150,6 +150,16 @@ void board_init_f(ulong dummy)
 	preloader_console_init();
 }
 
+__weak void rk_spl_board_init(void)
+{
+}
+
+void spl_board_init(void)
+{
+	/* board specific spl init */
+	rk_spl_board_init();
+}
+
 #ifdef CONFIG_SPL_LOAD_FIT
 int __weak board_fit_config_name_match(const char *name)
 {
diff --git a/board/firefly/firefly-rk3288/firefly-rk3288.c b/board/firefly/firefly-rk3288/firefly-rk3288.c
index 1965985a0f..96d44b1d9f 100644
--- a/board/firefly/firefly-rk3288/firefly-rk3288.c
+++ b/board/firefly/firefly-rk3288/firefly-rk3288.c
@@ -31,7 +31,7 @@ static int setup_led(void)
 	return 0;
 }
 
-void spl_board_init(void)
+void rk_spl_board_init(void)
 {
 	int ret;
 
diff --git a/board/phytec/phycore_rk3288/phycore-rk3288.c b/board/phytec/phycore_rk3288/phycore-rk3288.c
index ecc73227a0..b33070f62e 100644
--- a/board/phytec/phycore_rk3288/phycore-rk3288.c
+++ b/board/phytec/phycore_rk3288/phycore-rk3288.c
@@ -104,7 +104,7 @@ static int phycore_init(void)
 }
 #endif
 
-void spl_board_init(void)
+void rk_spl_board_init(void)
 {
 #if !defined(CONFIG_SPL_OF_PLATDATA)
 	int ret;
diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
index deeba3084a..fd5cdd9ea1 100644
--- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
+++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
@@ -152,3 +152,64 @@ void get_board_serial(struct tag_serialnr *serialnr)
 	serialnr->low = (u32)(serial & 0xffffffff);
 }
 #endif
+
+#if defined(CONFIG_SPL_BUILD)
+
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
+void rk_spl_board_init(void)
+{
+#if defined(SPL_GPIO_SUPPORT)
+	struct rockchip_cru *cru = rockchip_get_cru();
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
+}
+#endif /* CONFIG_SPL_BUILD */
-- 
2.25.1
