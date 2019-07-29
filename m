From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 05/15] rockchip: rk3288/rk3399: Enable DISPLAY_CPUINFO
Date: Mon, 29 Jul 2019 13:17:01 +0530
Message-ID: <20190729074711.16988-6-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190729074711.16988-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

RK3288 and Rk3399 are now support cpu-info, so
enable them by default.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 configs/evb-rk3288_defconfig         | 1 -
 configs/evb-rk3399_defconfig         | 1 -
 configs/fennec-rk3288_defconfig      | 1 -
 configs/ficus-rk3399_defconfig       | 1 -
 configs/firefly-rk3288_defconfig     | 1 -
 configs/firefly-rk3399_defconfig     | 1 -
 configs/miqi-rk3288_defconfig        | 1 -
 configs/nanopc-t4-rk3399_defconfig   | 1 -
 configs/nanopi-m4-rk3399_defconfig   | 1 -
 configs/nanopi-neo4-rk3399_defconfig | 1 -
 configs/orangepi-rk3399_defconfig    | 1 -
 configs/phycore-rk3288_defconfig     | 1 -
 configs/popmetal-rk3288_defconfig    | 1 -
 configs/puma-rk3399_defconfig        | 1 -
 configs/rock-pi-4-rk3399_defconfig   | 1 -
 configs/rock960-rk3399_defconfig     | 1 -
 configs/rockpro64-rk3399_defconfig   | 1 -
 configs/tinker-rk3288_defconfig      | 1 -
 configs/vyasa-rk3288_defconfig       | 1 -
 19 files changed, 19 deletions(-)

diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index a6df143276..28b3e392ec 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -11,7 +11,6 @@ CONFIG_DEBUG_UART=y
 # CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-evb-rk808.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0
 CONFIG_CMD_GPIO=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index 764d32f259..3c48053480 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/fennec-rk3288_defconfig b/configs/fennec-rk3288_defconfig
index 16d8fb155c..21ff5a0efc 100644
--- a/configs/fennec-rk3288_defconfig
+++ b/configs/fennec-rk3288_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-fennec.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index d1425dc3d0..a146b0ced0 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 8abe8a648a..081744dc39 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -12,7 +12,6 @@ CONFIG_DEBUG_UART=y
 # CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-firefly.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 9f05f33ddd..71f8e56669 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index c9a35115fb..42f27b0ba8 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -12,7 +12,6 @@ CONFIG_DEBUG_UART=y
 # CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-miqi.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index bca4f08966..2d437f4d86 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index dd2065df5f..18cc9a4482 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-m4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
index 46039d1d07..037f3f7c5a 100644
--- a/configs/nanopi-neo4-rk3399_defconfig
+++ b/configs/nanopi-neo4-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-neo4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index 16a0a17c74..f3e8b6686c 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index dfddc4af5e..7766aa6d65 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-phycore-rdk.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 4c9a7f0824..97e814d1e3 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-popmetal.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 37f845cfb1..0e1ed3ec18 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -15,7 +15,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_SPL_FIT_GENERATOR="board/theobroma-systems/puma_rk3399/fit_spl_atf.sh"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 14ae39a561..c4c05d0d62 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock-pi-4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index ed11fef7c2..8890b547ba 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index 72bfff289b..32d8415b23 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rockpro64.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index b234539a53..06527c4933 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -12,7 +12,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-tinker.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0
 CONFIG_CMD_GPIO=y
diff --git a/configs/vyasa-rk3288_defconfig b/configs/vyasa-rk3288_defconfig
index eaea625007..29482a299e 100644
--- a/configs/vyasa-rk3288_defconfig
+++ b/configs/vyasa-rk3288_defconfig
@@ -12,7 +12,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-vyasa.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_SPL_STACK_R=y
-- 
2.18.0.321.gffc6fa0e3
