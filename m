From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 44/92] ram: rockchip: Add debug sdram driver
Date: Tue, 11 Jun 2019 20:20:47 +0530
Message-ID: <20190611145135.21399-45-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190611145135.21399-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add sdram driver to handle debug across rockchip SoCs.

This would help to improve code debugging feature for
sdram drivers in rockchip family, whoever wants to
debug the driver should call these core debug code on
their respective platform sdram drivers.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  9 +++++
 drivers/ram/rockchip/Kconfig                  |  9 +++++
 drivers/ram/rockchip/Makefile                 |  1 +
 drivers/ram/rockchip/sdram_debug.c            | 34 +++++++++++++++++++
 4 files changed, 53 insertions(+)
 create mode 100644 drivers/ram/rockchip/sdram_debug.c

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index d723e6dacc..ebf4148b4d 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -122,4 +122,13 @@ size_t rockchip_sdram_size(phys_addr_t reg);
 
 /* Called by U-Boot board_init_r for Rockchip SoCs */
 int dram_init(void);
+
+#if !defined(CONFIG_RAM_ROCKCHIP_DEBUG)
+inline void sdram_print_dram_type(unsigned char dramtype)
+{
+}
+#else
+void sdram_print_dram_type(unsigned char dramtype);
+#endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
+
 #endif
diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
index 995cb487b8..151ffb684d 100644
--- a/drivers/ram/rockchip/Kconfig
+++ b/drivers/ram/rockchip/Kconfig
@@ -7,6 +7,15 @@ config RAM_ROCKCHIP
 
 if RAM_ROCKCHIP
 
+config RAM_ROCKCHIP_DEBUG
+	bool "Rockchip ram drivers debugging"
+	help
+	  This enables debugging ram driver API's for the platforms
+	  based on Rockchip SoCs.
+
+	  This is an option for developers to understand the ram drivers
+	  initialization, configurations and etc.
+
 config RAM_RK3399
 	bool "Ram driver for Rockchip RK3399"
 	default ROCKCHIP_RK3399
diff --git a/drivers/ram/rockchip/Makefile b/drivers/ram/rockchip/Makefile
index 07d4b62a9d..feb1f82d00 100644
--- a/drivers/ram/rockchip/Makefile
+++ b/drivers/ram/rockchip/Makefile
@@ -3,6 +3,7 @@
 # Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
 #
 
+obj-$(CONFIG_RAM_ROCKCHIP_DEBUG) += sdram_debug.o
 obj-$(CONFIG_ROCKCHIP_RK3368) = dmc-rk3368.o
 obj-$(CONFIG_ROCKCHIP_RK3128) = sdram_rk3128.o
 obj-$(CONFIG_ROCKCHIP_RK3188) = sdram_rk3188.o
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
new file mode 100644
index 0000000000..c13e140fa5
--- /dev/null
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2019 Rockchip Electronics Co., Ltd
+ * (C) Copyright 2019 Amarula Solutions.
+ * Author: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include <common.h>
+#include <debug_uart.h>
+#include <asm/arch-rockchip/sdram_common.h>
+
+void sdram_print_dram_type(unsigned char dramtype)
+{
+	switch (dramtype) {
+	case DDR3:
+		printascii("DDR3");
+		break;
+	case DDR4:
+		printascii("DDR4");
+		break;
+	case LPDDR2:
+		printascii("LPDDR2");
+		break;
+	case LPDDR3:
+		printascii("LPDDR3");
+		break;
+	case LPDDR4:
+		printascii("LPDDR4");
+		break;
+	default:
+		printascii("Unknown Device");
+		break;
+	}
+}
-- 
2.18.0.321.gffc6fa0e3
