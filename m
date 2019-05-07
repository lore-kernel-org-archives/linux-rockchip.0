From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 6/6] Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
Date: Wed,  8 May 2019 00:22:15 +0530
Message-ID: <20190507185215.15441-7-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507185215.15441-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add u-boot.itb BUILD_TARGET for Rockchip platform when SPL_LOAD_FIT
is being used.

This can get rid of building itb explicitly with 'make u-boot.itb'
so, from now all required images will build just by make.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 Kconfig             | 2 +-
 doc/README.rockchip | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/Kconfig b/Kconfig
index 91c1082ace..6bcff29659 100644
--- a/Kconfig
+++ b/Kconfig
@@ -240,7 +240,7 @@ config BUILD_TARGET
 	default "u-boot-with-spl.sfp" if TARGET_SOCFPGA_GEN5
 	default "u-boot-spl.kwb" if ARCH_MVEBU && SPL
 	default "u-boot-elf.srec" if RCAR_GEN3
-	default "u-boot.itb" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "u-boot.itb" if SPL_LOAD_FIT && (ROCKCHIP_RK3399 || ARCH_SUNXI)
 	default "u-boot.kwb" if KIRKWOOD
 	default "u-boot-with-spl.bin" if ARCH_AT91 && SPL_NAND_SUPPORT
 	help
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 88a4593392..c4e5f83da7 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -103,7 +103,6 @@ For example:
      => cd /path/to/u-boot
      => make nanopi-neo4-rk3399_defconfig
      => make
-     => make u-boot.itb
 
    - Get the rkbin
 
@@ -170,7 +169,6 @@ For example:
      => cd /path/to/u-boot
      => make orangepi-rk3399_defconfig
      => make
-     => make u-boot.itb
 
      (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
       spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
-- 
2.18.0.321.gffc6fa0e3
