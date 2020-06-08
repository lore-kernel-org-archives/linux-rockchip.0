From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 3/4] roc-rk3399-pc: Add SPI boot
Date: Mon,  8 Jun 2020 14:17:07 -0400
Message-ID: <20200608181708.17842-4-jagan@amarulasolutions.com>
References: <20200608181708.17842-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200608181708.17842-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

U-Boot TPL 2020.07-rc3-00090-gd4e919f927-dirty (Jun 01 2020 - 23:45:53)
Channel 0: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
Channel 1: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
256B stride
256B stride
lpddr4_set_rate: change freq to 400000000 mhz 0, 1
lpddr4_set_rate: change freq to 800000000 mhz 1, 0
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2020.07-rc3-00087-ga21e9fd385 (Jun 02 2020 - 00:09:45 +0530)
Trying to boot from MMC1
NOTICE:  BL31: v2.2(release):
NOTICE:  BL31: Built : 15:05:37, May 12 2020

U-Boot 2020.07-rc3-00087-ga21e9fd385 (Jun 02 2020 - 00:09:45 +0530)

SoC: Rockchip rk3399
Reset cause: POR
Model: Firefly ROC-RK3399-PC Board
DRAM:  3.9 GiB
PMIC:  RK808
MMC:   mmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from SPI Flash... SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
*** Warning - bad CRC, using default environment

In:    serial
Out:   serial
Err:   serial
Model: Firefly ROC-RK3399-PC Board

Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v4:
- none

 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 +++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  3 +++
 configs/roc-pc-rk3399_defconfig           |  3 +++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
index 141dd0b306..fc155e6903 100644
--- a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
@@ -12,7 +12,11 @@
 	};
 
 	chosen {
-		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
+		u-boot,spl-boot-order = "same-as-spl", &spi_flash, &sdhci, &sdmmc;
+	};
+
+	config {
+		u-boot,spl-payload-offset = <0x60000>; /* @ 384KB */
 	};
 
 	vcc_hub_en: vcc_hub_en-regulator {
@@ -40,6 +44,12 @@
 	vin-supply = <&vcc_vbus_typec0>;
 };
 
+&spi1 {
+	spi_flash: flash@0 {
+		u-boot,dm-pre-reloc;
+	};
+};
+
 &vdd_log {
 	regulator-min-microvolt = <430000>;
 	regulator-init-microvolt = <950000>;
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 9c6fd0c98c..03ba519af1 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -9,12 +9,15 @@ CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SPL_SPI_FLASH_SUPPORT=y
+CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_TPL_GPIO_SUPPORT=y
 CONFIG_CMD_BOOTZ=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index b225eb38fe..b59b54bd89 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -9,12 +9,15 @@ CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SPL_SPI_FLASH_SUPPORT=y
+CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_SPI_LOAD=y
 CONFIG_TPL=y
 CONFIG_TPL_GPIO_SUPPORT=y
 CONFIG_CMD_BOOTZ=y
-- 
2.20.1
