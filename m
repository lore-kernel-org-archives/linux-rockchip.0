From: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 7/7] ARM: zynq: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:30 +0100
Message-ID: <20200212100830.446-8-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
Sender: linux-clk-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>, Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
List-Id: linux-rockchip.vger.kernel.org

The Zynq platform code is not a clock provider, and just needs to call
of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/mach-zynq/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/common.c b/arch/arm/mach-zynq/common.c
index 3a4248fd796281c3..a9dd2f71cd19d2a9 100644
--- a/arch/arm/mach-zynq/common.c
+++ b/arch/arm/mach-zynq/common.c
@@ -12,10 +12,10 @@
 #include <linux/cpumask.h>
 #include <linux/platform_device.h>
 #include <linux/clk.h>
-#include <linux/clk-provider.h>
 #include <linux/clk/zynq.h>
 #include <linux/clocksource.h>
 #include <linux/of_address.h>
+#include <linux/of_clk.h>
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/of.h>
-- 
2.17.1
