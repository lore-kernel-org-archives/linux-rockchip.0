From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 01/15] arm: rockchip: Add common cru.h
Date: Mon, 29 Jul 2019 13:16:57 +0530
Message-ID: <20190729074711.16988-2-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190729074711.16988-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Few of the rockchip family SoC atleast rk3288,
rk3399 are sharing some cru register bits so
adding common code between these SoC families
would require to include both cru include files
that indeed resulting function declarations error.

So, create a common cru include as cru.h then
include the arch cru include file and move the
common cru register bit definitions into it.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/cru.h   | 16 ++++++++++++++++
 arch/arm/mach-rockchip/rk3288-board.c      |  2 +-
 arch/arm/mach-rockchip/rk3288/clk_rk3288.c |  2 +-
 arch/arm/mach-rockchip/rk3399-board-spl.c  |  2 +-
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c |  2 +-
 drivers/clk/rockchip/clk_rk3288.c          |  2 +-
 drivers/clk/rockchip/clk_rk3399.c          |  2 +-
 drivers/ram/rockchip/sdram_rk3288.c        |  2 +-
 drivers/ram/rockchip/sdram_rk3399.c        |  2 +-
 drivers/video/rockchip/rk3288_mipi.c       |  2 +-
 drivers/video/rockchip/rk3399_mipi.c       |  2 +-
 drivers/video/rockchip/rk_mipi.c           |  2 +-
 12 files changed, 27 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
new file mode 100644
index 0000000000..3b1a3bae71
--- /dev/null
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2019 Amarula Solutions.
+ * Author: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#ifndef _ROCKCHIP_CLOCK_H
+#define _ROCKCHIP_CLOCK_H
+
+#if defined(CONFIG_ROCKCHIP_RK3288)
+# include <asm/arch-rockchip/cru_rk3288.h>
+#elif defined(CONFIG_ROCKCHIP_RK3399)
+# include <asm/arch-rockchip/cru_rk3399.h>
+#endif
+
+#endif /* _ROCKCHIP_CLOCK_H */
diff --git a/arch/arm/mach-rockchip/rk3288-board.c b/arch/arm/mach-rockchip/rk3288-board.c
index a250d50387..d3ec141fea 100644
--- a/arch/arm/mach-rockchip/rk3288-board.c
+++ b/arch/arm/mach-rockchip/rk3288-board.c
@@ -10,7 +10,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/periph.h>
 #include <asm/arch-rockchip/pmu_rk3288.h>
 #include <asm/arch-rockchip/qos_rk3288.h>
diff --git a/arch/arm/mach-rockchip/rk3288/clk_rk3288.c b/arch/arm/mach-rockchip/rk3288/clk_rk3288.c
index e64ee86f08..1730f12443 100644
--- a/arch/arm/mach-rockchip/rk3288/clk_rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/clk_rk3288.c
@@ -8,7 +8,7 @@
 #include <dm.h>
 #include <syscon.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 
 int rockchip_get_clk(struct udevice **devp)
 {
diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
index 7154d8e5d0..5642c7f523 100644
--- a/arch/arm/mach-rockchip/rk3399-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
@@ -15,7 +15,7 @@
 #include <asm/io.h>
 #include <asm/arch-rockchip/bootrom.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/periph.h>
diff --git a/arch/arm/mach-rockchip/rk3399/clk_rk3399.c b/arch/arm/mach-rockchip/rk3399/clk_rk3399.c
index f0411c0a21..a80a46f1db 100644
--- a/arch/arm/mach-rockchip/rk3399/clk_rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/clk_rk3399.c
@@ -8,7 +8,7 @@
 #include <dm.h>
 #include <syscon.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 
 static int rockchip_get_cruclk(struct udevice **devp)
 {
diff --git a/drivers/clk/rockchip/clk_rk3288.c b/drivers/clk/rockchip/clk_rk3288.c
index 375d7f8acb..b05becd3d0 100644
--- a/drivers/clk/rockchip/clk_rk3288.c
+++ b/drivers/clk/rockchip/clk_rk3288.c
@@ -14,7 +14,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <dt-bindings/clock/rk3288-cru.h>
diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index d9950c159b..37a82788c6 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -14,7 +14,7 @@
 #include <bitfield.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <dm/lists.h>
 #include <dt-bindings/clock/rk3399-cru.h>
diff --git a/drivers/ram/rockchip/sdram_rk3288.c b/drivers/ram/rockchip/sdram_rk3288.c
index 6bb025a851..48b479d82b 100644
--- a/drivers/ram/rockchip/sdram_rk3288.c
+++ b/drivers/ram/rockchip/sdram_rk3288.c
@@ -16,7 +16,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/ddr_rk3288.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/pmu_rk3288.h>
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 81fc71c051..0801faf7a1 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -14,7 +14,7 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/pmu_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
diff --git a/drivers/video/rockchip/rk3288_mipi.c b/drivers/video/rockchip/rk3288_mipi.c
index 7c4a4cc53b..65891ce45c 100644
--- a/drivers/video/rockchip/rk3288_mipi.c
+++ b/drivers/video/rockchip/rk3288_mipi.c
@@ -18,7 +18,7 @@
 #include <dm/uclass-internal.h>
 #include <linux/kernel.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3288.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3288.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/rockchip_mipi_dsi.h>
diff --git a/drivers/video/rockchip/rk3399_mipi.c b/drivers/video/rockchip/rk3399_mipi.c
index a93b73400b..a5b7ba69a8 100644
--- a/drivers/video/rockchip/rk3399_mipi.c
+++ b/drivers/video/rockchip/rk3399_mipi.c
@@ -18,7 +18,7 @@
 #include <dm/uclass-internal.h>
 #include <linux/kernel.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/rockchip_mipi_dsi.h>
diff --git a/drivers/video/rockchip/rk_mipi.c b/drivers/video/rockchip/rk_mipi.c
index bcd039b7bc..f9280e8607 100644
--- a/drivers/video/rockchip/rk_mipi.c
+++ b/drivers/video/rockchip/rk_mipi.c
@@ -18,7 +18,7 @@
 #include <dm/uclass-internal.h>
 #include <linux/kernel.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/cru_rk3399.h>
+#include <asm/arch-rockchip/cru.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/rockchip_mipi_dsi.h>
 
-- 
2.18.0.321.gffc6fa0e3
