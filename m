From: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 6/7] ARM: sunxi: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:29 +0100
Message-ID: <20200212100830.446-7-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
Sender: linux-clk-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>, Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
List-Id: linux-rockchip.vger.kernel.org

The Allwinner platform code is not a clock provider, and just needs to
call of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/mach-sunxi/sunxi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-sunxi/sunxi.c b/arch/arm/mach-sunxi/sunxi.c
index 933b6930f024f03a..06da2747a90bc21d 100644
--- a/arch/arm/mach-sunxi/sunxi.c
+++ b/arch/arm/mach-sunxi/sunxi.c
@@ -10,9 +10,9 @@
  * warranty of any kind, whether express or implied.
  */
 
-#include <linux/clk-provider.h>
 #include <linux/clocksource.h>
 #include <linux/init.h>
+#include <linux/of_clk.h>
 #include <linux/platform_device.h>
 #include <linux/reset/sunxi.h>
 
-- 
2.17.1
