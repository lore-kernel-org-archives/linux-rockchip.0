From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 06/11] env: kconfig: Restrict rockchip env for MMC
Date: Sat, 21 Dec 2019 13:24:35 +0530
Message-ID: <20191221075440.6944-7-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191221075440.6944-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Rockchip do support SPI flash as well, so there is
a possibility of using flash environment for those
use cases.

So, restrict the current env offset, size for MMC.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 env/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/env/Kconfig b/env/Kconfig
index ed12609f6a..9416a70022 100644
--- a/env/Kconfig
+++ b/env/Kconfig
@@ -488,7 +488,7 @@ config ENV_OFFSET
 	hex "Environment offset"
 	depends on ENV_IS_IN_EEPROM || ENV_IS_IN_MMC || ENV_IS_IN_NAND || \
 		    ENV_IS_IN_SPI_FLASH
-	default 0x3f8000 if ARCH_ROCKCHIP
+	default 0x3f8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
 	default 0x88000 if ARCH_SUNXI
 	default 0xE0000 if ARCH_ZYNQ
 	default 0x1E00000 if ARCH_ZYNQMP
@@ -511,7 +511,8 @@ config ENV_SIZE
 	hex "Environment Size"
 	default 0x40000 if ENV_IS_IN_SPI_FLASH && ARCH_ZYNQMP
 	default 0x20000 if ARCH_SUNXI || ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
-	default 0x8000 if ARCH_ROCKCHIP || ARCH_ZYNQMP || ARCH_VERSAL
+	default 0x8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
+	default 0x8000 if ARCH_ZYNQMP || ARCH_VERSAL
 	default 0x4000 if ARC
 	default 0x1f000
 	help
-- 
2.18.0.321.gffc6fa0e3
