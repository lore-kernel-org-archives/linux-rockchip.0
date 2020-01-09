From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 1/8] rockchip: Add cpu-info
Date: Thu,  9 Jan 2020 14:22:15 +0530
Message-ID: <20200109085222.22670-2-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
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

Add cpu information for rockchip soc.

This would help to print the SoC family number, with
associated temparature, clock and reason for reset etc.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Makefile   |  1 +
 arch/arm/mach-rockchip/cpu-info.c | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index a728acda24..5b38526fe0 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -22,6 +22,7 @@ ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
 # we can have the preprocessor correctly recognise both 0x0 and 0
 # meaning "turn it off".
 obj-y += boot_mode.o
+obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
 obj-$(CONFIG_ROCKCHIP_COMMON_BOARD) += board.o
 obj-$(CONFIG_MISC_INIT_R) += misc.o
 endif
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
new file mode 100644
index 0000000000..9bccbd4f68
--- /dev/null
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2019 Amarula Solutions(India)
+ * Author: Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include <common.h>
+
+int print_cpuinfo(void)
+{
+	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
+
+	/* TODO print operating temparature and clock */
+
+	return 0;
+}
-- 
2.18.0.321.gffc6fa0e3
