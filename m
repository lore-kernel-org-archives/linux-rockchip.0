From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v5 04/13] Kconfig: Add default SPL_FIT_GENERATOR for rockchip
Date: Fri, 26 Apr 2019 22:56:48 +0530
Message-ID: <20190426172653.2930-5-jagan@amarulasolutions.com>
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

Add default SPL_FIT_GENERATOR py script for rockchip platforms if
specific target enabled SPL_LOAD_FIT.

So, this would help get rid of explicitly mentioning the default
SPL FIT generator in defconfigs. however some targets, like puma_rk3399
still require their own FIT generator so in those cases the default will
override with defconfig defined generator.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
---
 Kconfig                          | 1 +
 configs/chromebook_bob_defconfig | 1 -
 configs/evb-rk3399_defconfig     | 1 -
 configs/ficus-rk3399_defconfig   | 1 -
 configs/firefly-rk3399_defconfig | 1 -
 configs/rock960-rk3399_defconfig | 1 -
 6 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/Kconfig b/Kconfig
index 305b265ed7..5679a288ec 100644
--- a/Kconfig
+++ b/Kconfig
@@ -424,6 +424,7 @@ config SPL_FIT_GENERATOR
 	string ".its file generator script for U-Boot FIT image"
 	depends on SPL_FIT
 	default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
 	help
 	  Specifies a (platform specific) script file to generate the FIT
 	  source file used to build the U-Boot FIT image file. This gets
diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
index ce3deccb8a..04e25e1d4f 100644
--- a/configs/chromebook_bob_defconfig
+++ b/configs/chromebook_bob_defconfig
@@ -19,7 +19,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index d98535357a..49b2e2e089 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index 94c565efc2..fe3b9964e8 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 6725b48970..914304bb43 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index cb5a35f4f5..5e6778ea20 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
-- 
2.18.0.321.gffc6fa0e3
