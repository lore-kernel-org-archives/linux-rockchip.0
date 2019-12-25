From: Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH] Revert "rockchip: make sure timer7 is enabled on rk3288 platforms"
Date: Wed, 25 Dec 2019 10:59:08 +0800
Message-ID: <20191225025908.25305-1-kever.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This reverts commit 2a9fe3ca84afff6259820c4f62e579f41476becc.
All the U-Boot version for rk3288 including mainline, rockchip
legacy/next-dev, have init the timer7, so no need to init it in kernel
again.

One more reason is that if  we enable the trust for rk3288, then timer7 is
not able to be accessed in kernel.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm/mach-rockchip/rockchip.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index f9797a2b5d0d..f6e1851ed46a 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -21,31 +21,8 @@
 #include "core.h"
 #include "pm.h"
 
-#define RK3288_TIMER6_7_PHYS 0xff810000
-
 static void __init rockchip_timer_init(void)
 {
-	if (of_machine_is_compatible("rockchip,rk3288")) {
-		void __iomem *reg_base;
-
-		/*
-		 * Most/all uboot versions for rk3288 don't enable timer7
-		 * which is needed for the architected timer to work.
-		 * So make sure it is running during early boot.
-		 */
-		reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
-		if (reg_base) {
-			writel(0, reg_base + 0x30);
-			writel(0xffffffff, reg_base + 0x20);
-			writel(0xffffffff, reg_base + 0x24);
-			writel(1, reg_base + 0x30);
-			dsb();
-			iounmap(reg_base);
-		} else {
-			pr_err("rockchip: could not map timer7 registers\n");
-		}
-	}
-
 	of_clk_init(NULL);
 	timer_probe();
 }
-- 
2.17.1
