From: Tao Huang <huangtao@rock-chips.com>
Subject: [PATCH] ARM: rockchip: select ARCH_DMA_ADDR_T_64BIT for LPAE
Date: Tue,  1 Aug 2017 17:55:55 +0800
Message-ID: <1501581355-3538-1-git-send-email-huangtao@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Tao Huang <huangtao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Rockchip RK3288 has some 64-bit capable DMA and therefore needs
dma_addr_t to be a 64-bit size. One user is the Mali GPU.

Signed-off-by: Tao Huang <huangtao@rock-chips.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 9ad84cd01ba0..240354963158 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -3,6 +3,7 @@ config ARCH_ROCKCHIP
 	depends on ARCH_MULTI_V7
 	select PINCTRL
 	select PINCTRL_ROCKCHIP
+	select ARCH_DMA_ADDR_T_64BIT if ARM_LPAE
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
 	select ARM_GIC
-- 
2.7.4
