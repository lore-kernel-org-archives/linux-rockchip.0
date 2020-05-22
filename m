From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 6/6] rockchip: Enable PCIe/M.2 on rock960 board
Date: Fri, 22 May 2020 12:35:41 +0530
Message-ID: <20200522070541.27046-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Shawn Lin <shawn.lin@rock-chips.com>, Patrick Wildt <patrick@blueri.se>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>, Tom Cubie <tom@radxa.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

Due to board limitation some SSD's would work
on rock960 PCIe M.2 only with 1.8V IO domain.

So, this patch enables grf io_sel explicitly to
make PCIe/M.2 to work.

Cc: Tom Cubie <tom@radxa.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- Add missing header bitops.h

 board/vamrs/rock960_rk3399/rock960-rk3399.c | 24 +++++++++++++++++++++
 configs/rock960-rk3399_defconfig            |  5 +++++
 2 files changed, 29 insertions(+)

diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 68a127b9ac..a7fc38d42f 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -2,3 +2,27 @@
 /*
  * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
+
+#include <common.h>
+#include <syscon.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/grf_rk3399.h>
+#include <asm/arch-rockchip/hardware.h>
+#include <linux/bitops.h>
+
+#ifdef CONFIG_MISC_INIT_R
+int misc_init_r(void)
+{
+	struct rk3399_grf_regs *grf =
+	    syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+
+	/**
+	 * Some SSD's to work on rock960 would require explicit
+	 * domain voltage change, so BT565 is in 1.8v domain
+	 */
+	rk_setreg(&grf->io_vsel, BIT(0));
+
+	return 0;
+}
+#endif
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 045d989a19..64517f9623 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -9,6 +9,7 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
+CONFIG_MISC_INIT_R=y
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
@@ -19,6 +20,7 @@ CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
 CONFIG_CMD_USB=y
+CONFIG_CMD_PCI=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
 CONFIG_CMD_PMIC=y
@@ -36,10 +38,13 @@ CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_SDMA=y
 CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
+CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
-- 
2.20.1
