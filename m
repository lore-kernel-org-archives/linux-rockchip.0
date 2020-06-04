From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 2/4] roc-rk3399-pc: Mark default env from SPI
Date: Thu,  4 Jun 2020 20:21:39 +0530
Message-ID: <20200604145141.356702-3-jagan@amarulasolutions.com>
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200604145141.356702-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Mark the default U-Boot environment as SPI flash since
this is an on board flash device.

Updated env offset, size in contrast with default since
the U-Boot proper has to start from 384K.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
Changes for v3:
- updated env settings

 configs/roc-pc-mezzanine-rk3399_defconfig | 6 ++++--
 configs/roc-pc-rk3399_defconfig           | 6 ++++--
 include/configs/roc-pc-rk3399.h           | 4 ----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 1c1539bcb9..3b91c25ff4 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ENV_SIZE=0x6000
+CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
@@ -25,7 +27,7 @@ CONFIG_CMD_TIME=y
 CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
-CONFIG_ENV_IS_IN_MMC=y
+CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 76e76c160e..6edd4a8822 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ENV_SIZE=0x6000
+CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
@@ -24,7 +26,7 @@ CONFIG_CMD_TIME=y
 CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
-CONFIG_ENV_IS_IN_MMC=y
+CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/include/configs/roc-pc-rk3399.h b/include/configs/roc-pc-rk3399.h
index d4cbc3532e..59fe22289c 100644
--- a/include/configs/roc-pc-rk3399.h
+++ b/include/configs/roc-pc-rk3399.h
@@ -13,10 +13,6 @@
 
 #include <configs/rk3399_common.h>
 
-#if defined(CONFIG_ENV_IS_IN_MMC)
-# define CONFIG_SYS_MMC_ENV_DEV		0
-#endif
-
 #define SDRAM_BANK_SIZE			(2UL << 30)
 
 #endif
-- 
2.25.1
