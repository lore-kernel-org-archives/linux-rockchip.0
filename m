From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 5/8] rockchip: rk3399: Enable SPL_BOARD_INIT
Date: Fri, 21 Jun 2019 00:25:03 +0530
Message-ID: <20190620185506.11449-6-jagan@amarulasolutions.com>
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

Enable SPL_BOARD_INIT globally to rk3399, this would
help to print the SPL banner during bootup.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 configs/puma-rk3399_defconfig  | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index c05e3c3f48..ce039022df 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -158,6 +158,7 @@ config ROCKCHIP_RK3399
 	select SPL
 	select SPL_ATF
 	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
+	select SPL_BOARD_INIT if SPL
 	select SPL_LOAD_FIT
 	select SPL_CLK if SPL
 	select SPL_PINCTRL if SPL
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index ebc78fb216..5cb2273a15 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -21,7 +21,6 @@ CONFIG_MISC_INIT_R=y
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
-CONFIG_SPL_BOARD_INIT=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 # CONFIG_SPL_LEGACY_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-- 
2.18.0.321.gffc6fa0e3
