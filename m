From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 5/9] fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
Date: Tue, 22 Oct 2019 23:24:54 +0530
Message-ID: <20191022175458.22604-6-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191022175458.22604-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Select CONFIG_FASTBOOT_FLASH, CONFIG_FASTBOOT_FLASH_MMC_DEV
for rockchip SoC plaforms in fastboot Kconfig file instead
of defined it in board defconfig.

This eventually drop the explicit configs defined in
supporting board defconfig files.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 configs/evb-rk3036_defconfig      | 2 --
 configs/evb-rk3128_defconfig      | 2 --
 configs/evb-rk3229_defconfig      | 2 --
 configs/evb-rk3288_defconfig      | 2 --
 configs/evb-rk3328_defconfig      | 2 --
 configs/firefly-rk3288_defconfig  | 2 --
 configs/kylin-rk3036_defconfig    | 2 --
 configs/miqi-rk3288_defconfig     | 2 --
 configs/phycore-rk3288_defconfig  | 2 --
 configs/popmetal-rk3288_defconfig | 2 --
 configs/rock64-rk3328_defconfig   | 2 --
 configs/tinker-rk3288_defconfig   | 2 --
 drivers/fastboot/Kconfig          | 4 +++-
 13 files changed, 3 insertions(+), 25 deletions(-)

diff --git a/configs/evb-rk3036_defconfig b/configs/evb-rk3036_defconfig
index c02ef6af4e..ca2ba9d0d8 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -36,8 +36,6 @@ CONFIG_REGMAP=y
 CONFIG_SYSCON=y
 # CONFIG_SPL_BLK is not set
 CONFIG_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3128_defconfig b/configs/evb-rk3128_defconfig
index a3189638a1..9d81d96e68 100644
--- a/configs/evb-rk3128_defconfig
+++ b/configs/evb-rk3128_defconfig
@@ -22,8 +22,6 @@ CONFIG_SYSCON=y
 CONFIG_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x60800800
 CONFIG_FASTBOOT_BUF_SIZE=0x04000000
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index e7b813d627..a365931e47 100644
--- a/configs/evb-rk3229_defconfig
+++ b/configs/evb-rk3229_defconfig
@@ -44,8 +44,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_SIZE=0x04000000
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index a6c57dfaa6..a88f391b96 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -44,8 +44,6 @@ CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index c9d056b4b9..d133477e62 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -48,8 +48,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x800800
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=1
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 2de166ae90..4bd81048e9 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -46,8 +46,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index ff20dea0fc..79188c16b7 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -38,8 +38,6 @@ CONFIG_REGMAP=y
 CONFIG_SYSCON=y
 # CONFIG_SPL_BLK is not set
 CONFIG_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index fbafbb857a..1b55008a96 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -46,8 +46,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 70e3bdc621..f44974b191 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -48,8 +48,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 611aff5e1d..af70684045 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -46,8 +46,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 5e64003dd3..fc9079eb4e 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -51,8 +51,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x800800
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=1
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 467065e3ad..a624270aff 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -48,8 +48,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/drivers/fastboot/Kconfig b/drivers/fastboot/Kconfig
index d63ecdd27e..34864ca613 100644
--- a/drivers/fastboot/Kconfig
+++ b/drivers/fastboot/Kconfig
@@ -64,7 +64,7 @@ config FASTBOOT_USB_DEV
 
 config FASTBOOT_FLASH
 	bool "Enable FASTBOOT FLASH command"
-	default y if ARCH_SUNXI
+	default y if ARCH_SUNXI || ARCH_ROCKCHIP
 	depends on MMC || (NAND && CMD_MTDPARTS)
 	select IMAGE_SPARSE
 	help
@@ -89,6 +89,8 @@ endchoice
 config FASTBOOT_FLASH_MMC_DEV
 	int "Define FASTBOOT MMC FLASH default device"
 	depends on FASTBOOT_FLASH_MMC
+	default 1 if ROCKCHIP_RK3328
+	default 0 if ARCH_ROCKCHIP
 	default 0 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA = -1
 	default 1 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA != -1
 	help
-- 
2.18.0.321.gffc6fa0e3
