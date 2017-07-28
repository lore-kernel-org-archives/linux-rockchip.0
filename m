From: Tao Huang <huangtao@rock-chips.com>
Subject: [PATCH] ARM: rockchip: enable ZONE_DMA for non 64-bit capable peripherals
Date: Fri, 28 Jul 2017 14:40:02 +0800
Message-ID: <1501224002-9966-1-git-send-email-huangtao@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Tao Huang <huangtao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Most IP cores on ARM Rockchip platforms can only address 32 bits of
physical memory for DMA. Thus ZONE_DMA should be enabled when LPAE
is activated.

Signed-off-by: Tao Huang <huangtao@rock-chips.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 9ad84cd01ba0..fafd3d7f9f8c 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -16,6 +16,7 @@ config ARCH_ROCKCHIP
 	select ROCKCHIP_TIMER
 	select ARM_GLOBAL_TIMER
 	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
+	select ZONE_DMA if ARM_LPAE
 	help
 	  Support for Rockchip's Cortex-A9 Single-to-Quad-Core-SoCs
 	  containing the RK2928, RK30xx and RK31xx series.
-- 
2.7.4
