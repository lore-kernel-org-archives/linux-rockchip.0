From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v5 05/13] arm: rockchip: rk3399: Move common configs in Kconfig
Date: Fri, 26 Apr 2019 22:56:49 +0530
Message-ID: <20190426172653.2930-6-jagan@amarulasolutions.com>
References: <20190426172653.2930-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190426172653.2930-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Few SPL and U-Boot proper configs are common to all rk3399 target
defconfigs, move them and select it from platform kconfig.

Moved configs:
-  SPL_ATF
-  SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
-  SPL_LOAD_FIT
-  SPL_CLK if SPL
-  SPL_PINCTRL if SPL
-  SPL_RAM if SPL
-  SPL_REGMAP if SPL
-  SPL_SYSCON if SPL
-  CLK
-  FIT
-  PINCTRL
-  RAM
-  REGMAP
-  SYSCON
-  DM_PMIC
-  DM_REGULATOR_FIXED

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
---
 arch/arm/mach-rockchip/Kconfig   | 16 ++++++++++++++++
 configs/chromebook_bob_defconfig | 16 ----------------
 configs/evb-rk3399_defconfig     | 16 ----------------
 configs/ficus-rk3399_defconfig   | 16 ----------------
 configs/firefly-rk3399_defconfig | 16 ----------------
 configs/puma-rk3399_defconfig    | 16 ----------------
 configs/rock960-rk3399_defconfig | 16 ----------------
 7 files changed, 16 insertions(+), 96 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index b9a026abb5..dbe7f11d39 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -132,9 +132,25 @@ config ROCKCHIP_RK3399
 	select ARM64
 	select SUPPORT_SPL
 	select SPL
+	select SPL_ATF
+	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
+	select SPL_LOAD_FIT
+	select SPL_CLK if SPL
+	select SPL_PINCTRL if SPL
+	select SPL_RAM if SPL
+	select SPL_REGMAP if SPL
+	select SPL_SYSCON if SPL
 	select SPL_SEPARATE_BSS
 	select SPL_SERIAL_SUPPORT
 	select SPL_DRIVERS_MISC_SUPPORT
+	select CLK
+	select FIT
+	select PINCTRL
+	select RAM
+	select REGMAP
+	select SYSCON
+	select DM_PMIC
+	select DM_REGULATOR_FIXED
 	select DEBUG_UART_BOARD_INIT
 	select BOARD_LATE_INIT
 	select ROCKCHIP_BROM_HELPER
diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
index 04e25e1d4f..fdcbabf912 100644
--- a/configs/chromebook_bob_defconfig
+++ b/configs/chromebook_bob_defconfig
@@ -17,16 +17,12 @@ CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
 CONFIG_SPL_SPI_LOAD=y
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_GPT=y
@@ -45,12 +41,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-gru-bob"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_I2C_CROS_EC_TUNNEL=y
 CONFIG_SYS_I2C_ROCKCHIP=y
@@ -70,16 +60,10 @@ CONFIG_SPI_FLASH_GIGADEVICE=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_ROCKCHIP_SPI=y
 CONFIG_SYSRESET=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index 49b2e2e089..1ba9dcba62 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -32,12 +28,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-evb"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
 CONFIG_NET_RANDOM_ETHADDR=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -47,16 +37,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index fe3b9964e8..67c62065aa 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -11,14 +11,10 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -31,12 +27,6 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-ficus"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
 CONFIG_NET_RANDOM_ETHADDR=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -48,17 +38,11 @@ CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_RGMII=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_DM_REGULATOR_GPIO=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 914304bb43..1d3a7f2982 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -31,12 +27,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-firefly"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -47,16 +37,10 @@ CONFIG_SF_DEFAULT_SPEED=20000000
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 3547ec6b27..e5ea2fe0b3 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,8 +15,6 @@ CONFIG_SPL_SPI_FLASH_SUPPORT=y
 CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
@@ -31,8 +29,6 @@ CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR=0x200
 CONFIG_SPL_I2C_SUPPORT=y
 CONFIG_SPL_POWER_SUPPORT=y
 CONFIG_SPL_SPI_LOAD=y
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_I2C=y
@@ -51,12 +47,6 @@ CONFIG_OF_LIVE=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-puma-ddr1600"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MISC=y
@@ -74,20 +64,14 @@ CONFIG_PHY_MICREL_KSZ90X1=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_DM_PMIC_FAN53555=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_SPL_DM_REGULATOR=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_SPL_DM_REGULATOR_FIXED=y
 CONFIG_DM_REGULATOR_GPIO=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_DM_RTC=y
 CONFIG_RTC_ISL1208=y
 CONFIG_DEBUG_UART_SHIFT=2
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 5e6778ea20..cc7d6f89b1 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -11,15 +11,11 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
-CONFIG_FIT=y
-CONFIG_SPL_LOAD_FIT=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
-CONFIG_SPL_ATF=y
-CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
 CONFIG_SYS_PROMPT="rock960 => "
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
@@ -32,12 +28,6 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-rock960"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
-CONFIG_REGMAP=y
-CONFIG_SPL_REGMAP=y
-CONFIG_SYSCON=y
-CONFIG_SPL_SYSCON=y
-CONFIG_CLK=y
-CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
@@ -45,16 +35,10 @@ CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_SF_DEFAULT_SPEED=20000000
-CONFIG_PINCTRL=y
-CONFIG_SPL_PINCTRL=y
-CONFIG_DM_PMIC=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
-CONFIG_DM_REGULATOR_FIXED=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
-CONFIG_RAM=y
-CONFIG_SPL_RAM=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
-- 
2.18.0.321.gffc6fa0e3
