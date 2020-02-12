From: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 3/7] ARM: mmp: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Wed, 12 Feb 2020 11:08:26 +0100
Message-ID: <20200212100830.446-4-geert+renesas@glider.be>
References: <20200212100830.446-1-geert+renesas@glider.be>
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200212100830.446-1-geert+renesas@glider.be>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>, Matthias Brugger <matthias.bgg@gmail.com>, Lubomir Rintel <lkundrak@v3.sk>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
List-Id: linux-rockchip.vger.kernel.org

The Marvell MMP platform code is not a clock provider, and just needs to
call of_clk_init().

Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/mach-mmp/mmp-dt.c  | 2 +-
 arch/arm/mach-mmp/mmp2-dt.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-mmp/mmp-dt.c b/arch/arm/mach-mmp/mmp-dt.c
index 91214996acecc9fb..3f43c0867dcae4ed 100644
--- a/arch/arm/mach-mmp/mmp-dt.c
+++ b/arch/arm/mach-mmp/mmp-dt.c
@@ -8,7 +8,7 @@
 
 #include <linux/irqchip.h>
 #include <linux/of_platform.h>
-#include <linux/clk-provider.h>
+#include <linux/of_clk.h>
 #include <linux/clocksource.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/time.h>
diff --git a/arch/arm/mach-mmp/mmp2-dt.c b/arch/arm/mach-mmp/mmp2-dt.c
index 510c762ddc484c40..34a5fe4b3949167e 100644
--- a/arch/arm/mach-mmp/mmp2-dt.c
+++ b/arch/arm/mach-mmp/mmp2-dt.c
@@ -9,7 +9,7 @@
 #include <linux/io.h>
 #include <linux/irqchip.h>
 #include <linux/of_platform.h>
-#include <linux/clk-provider.h>
+#include <linux/of_clk.h>
 #include <linux/clocksource.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/time.h>
-- 
2.17.1
