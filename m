From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/4] rockchip: rk3288: Enable pre console buffer
Date: Thu, 23 Jan 2020 19:42:19 +0530
Message-ID: <20200123141222.486-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Enable pre console buffer for rk3288 platform.

This would help to capture the console messages prior to
the console being initialised. Enabling this would help
to capture all the console messages on video output source
like HDMI. So we can find the full console messages of
U-Boot proper on HDMI display when enabled it for RK3288
platform boards.

Buffer address used for pre console is 0x0f000000 which is
ram base plus 240MiB. right now the Allwinner SoC is using
similar computation.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 common/Kconfig                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 2f260a5c5f..ed7514ab75 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -102,6 +102,7 @@ config ROCKCHIP_RK3288
 	select SUPPORT_SPL
 	select SPL
 	select SUPPORT_TPL
+	imply PRE_CONSOLE_BUFFER
 	imply ROCKCHIP_COMMON_BOARD
 	imply SPL_ROCKCHIP_COMMON_BOARD
 	imply TPL_CLK
diff --git a/common/Kconfig b/common/Kconfig
index a7c5ba278a..21d0244050 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -567,6 +567,7 @@ config PRE_CON_BUF_ADDR
 	depends on PRE_CONSOLE_BUFFER
 	default 0x2f000000 if ARCH_SUNXI && MACH_SUN9I
 	default 0x4f000000 if ARCH_SUNXI && !MACH_SUN9I
+	default 0x0f000000 if ROCKCHIP_RK3288
 	help
 	  This sets the start address of the pre-console buffer. This must
 	  be in available memory and is accessed before relocation and
-- 
2.18.0.321.gffc6fa0e3
