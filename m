From: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 5/7] ARM: shmobile: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:28 +0100
Message-ID: <20200212100830.446-6-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>, Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
List-Id: linux-rockchip.vger.kernel.org

The R-Car Gen2 platform code is not a clock provider, and just needs to
call of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.7.

 arch/arm/mach-shmobile/setup-rcar-gen2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-shmobile/setup-rcar-gen2.c b/arch/arm/mach-shmobile/setup-rcar-gen2.c
index 2faedf0af1f96fbc..3f549bcdbdf4b6a1 100644
--- a/arch/arm/mach-shmobile/setup-rcar-gen2.c
+++ b/arch/arm/mach-shmobile/setup-rcar-gen2.c
@@ -7,7 +7,6 @@
  * Copyright (C) 2014  Ulrich Hecht
  */
 
-#include <linux/clk-provider.h>
 #include <linux/clocksource.h>
 #include <linux/device.h>
 #include <linux/dma-contiguous.h>
@@ -15,6 +14,7 @@
 #include <linux/kernel.h>
 #include <linux/memblock.h>
 #include <linux/of.h>
+#include <linux/of_clk.h>
 #include <linux/of_fdt.h>
 #include <linux/of_platform.h>
 #include <linux/psci.h>
-- 
2.17.1
