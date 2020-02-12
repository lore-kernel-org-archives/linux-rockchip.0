From: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/7] ARM/time: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:24 +0100
Message-ID: <20200212100830.446-2-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
Sender: linux-clk-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>, Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
List-Id: linux-rockchip.vger.kernel.org

The ARM time code is not a clock provider, and just needs to call
of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/kernel/time.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/time.c b/arch/arm/kernel/time.c
index dddc7ebf4db4418d..09b149b09c43850b 100644
--- a/arch/arm/kernel/time.c
+++ b/arch/arm/kernel/time.c
@@ -8,7 +8,6 @@
  *  This file contains the ARM-specific time handling details:
  *  reading the RTC at bootup, etc...
  */
-#include <linux/clk-provider.h>
 #include <linux/clockchips.h>
 #include <linux/clocksource.h>
 #include <linux/errno.h>
@@ -17,6 +16,7 @@
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/kernel.h>
+#include <linux/of_clk.h>
 #include <linux/profile.h>
 #include <linux/sched.h>
 #include <linux/sched_clock.h>
-- 
2.17.1
