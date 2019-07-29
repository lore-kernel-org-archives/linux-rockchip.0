From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 09/15] wdt: dw: Rename to dw_wdt.c
Date: Mon, 29 Jul 2019 13:17:05 +0530
Message-ID: <20190729074711.16988-10-jagan@amarulasolutions.com>
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
Cc: Dinh Nguyen <dinguyen-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Chin-Liang See <clsee-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

- use dw instead of designware for driver file since
  Linux following the same.
- add CONFIG macro start with CONFIG_WDT since the
  driver mode wdt drivers follow this.

Cc: Dinh Nguyen <dinguyen-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Chin-Liang See <clsee-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 common/board_f.c                                | 2 +-
 drivers/watchdog/Makefile                       | 2 +-
 drivers/watchdog/{designware_wdt.c => dw_wdt.c} | 0
 include/configs/socfpga_common.h                | 2 +-
 include/configs/socfpga_stratix10_socdk.h       | 2 +-
 scripts/config_whitelist.txt                    | 2 +-
 6 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/watchdog/{designware_wdt.c => dw_wdt.c} (100%)

diff --git a/common/board_f.c b/common/board_f.c
index 4760d728f3..79efef0792 100644
--- a/common/board_f.c
+++ b/common/board_f.c
@@ -95,7 +95,7 @@ static int init_func_watchdog_init(void)
 # if defined(CONFIG_HW_WATCHDOG) && \
 	(defined(CONFIG_M68K) || defined(CONFIG_MICROBLAZE) || \
 	defined(CONFIG_SH) || \
-	defined(CONFIG_DESIGNWARE_WATCHDOG) || \
+	defined(CONFIG_WDT_DW) || \
 	defined(CONFIG_IMX_WATCHDOG))
 	hw_watchdog_init();
 	puts("       Watchdog enabled\n");
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 68c989aa0b..a14fdabf8d 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -13,7 +13,6 @@ endif
 obj-$(CONFIG_S5P)               += s5p_wdt.o
 obj-$(CONFIG_XILINX_TB_WATCHDOG) += xilinx_tb_wdt.o
 obj-$(CONFIG_OMAP_WATCHDOG) += omap_wdt.o
-obj-$(CONFIG_DESIGNWARE_WATCHDOG) += designware_wdt.o
 obj-$(CONFIG_ULP_WATCHDOG) += ulp_wdog.o
 obj-$(CONFIG_WDT) += wdt-uclass.o
 obj-$(CONFIG_WDT_SANDBOX) += sandbox_wdt.o
@@ -23,6 +22,7 @@ obj-$(CONFIG_WDT_BCM6345) += bcm6345_wdt.o
 obj-$(CONFIG_BCM2835_WDT)       += bcm2835_wdt.o
 obj-$(CONFIG_WDT_ORION) += orion_wdt.o
 obj-$(CONFIG_WDT_CDNS) += cdns_wdt.o
+obj-$(CONFIG_WDT_DW) += dw_wdt.o
 obj-$(CONFIG_WDT_MPC8xx) += mpc8xx_wdt.o
 obj-$(CONFIG_WDT_MT7621) += mt7621_wdt.o
 obj-$(CONFIG_WDT_MTK) += mtk_wdt.o
diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/dw_wdt.c
similarity index 100%
rename from drivers/watchdog/designware_wdt.c
rename to drivers/watchdog/dw_wdt.c
diff --git a/include/configs/socfpga_common.h b/include/configs/socfpga_common.h
index d1034ac280..65f02eca2e 100644
--- a/include/configs/socfpga_common.h
+++ b/include/configs/socfpga_common.h
@@ -105,7 +105,7 @@
  * L4 Watchdog
  */
 #ifdef CONFIG_HW_WATCHDOG
-#define CONFIG_DESIGNWARE_WATCHDOG
+#define CONFIG_WDT_DW
 #define CONFIG_DW_WDT_BASE		SOCFPGA_L4WD0_ADDRESS
 #define CONFIG_DW_WDT_CLOCK_KHZ		25000
 #define CONFIG_WATCHDOG_TIMEOUT_MSECS	30000
diff --git a/include/configs/socfpga_stratix10_socdk.h b/include/configs/socfpga_stratix10_socdk.h
index 8d2971c6e2..3582aec822 100644
--- a/include/configs/socfpga_stratix10_socdk.h
+++ b/include/configs/socfpga_stratix10_socdk.h
@@ -161,7 +161,7 @@ unsigned int cm_get_qspi_controller_clk_hz(void);
  */
 #ifdef CONFIG_SPL_BUILD
 #define CONFIG_HW_WATCHDOG
-#define CONFIG_DESIGNWARE_WATCHDOG
+#define CONFIG_WDT_DW
 #define CONFIG_DW_WDT_BASE		SOCFPGA_L4WD0_ADDRESS
 #ifndef __ASSEMBLY__
 unsigned int cm_get_l4_sys_free_clk_hz(void);
diff --git a/scripts/config_whitelist.txt b/scripts/config_whitelist.txt
index e616f7229b..f2453728c6 100644
--- a/scripts/config_whitelist.txt
+++ b/scripts/config_whitelist.txt
@@ -323,7 +323,7 @@ CONFIG_DEFAULT_IMMR
 CONFIG_DEF_HWCONFIG
 CONFIG_DELAY_ENVIRONMENT
 CONFIG_DESIGNWARE_ETH
-CONFIG_DESIGNWARE_WATCHDOG
+CONFIG_WDT_DW
 CONFIG_DEVELOP
 CONFIG_DEVICE_TREE_LIST
 CONFIG_DFU_ALT
-- 
2.18.0.321.gffc6fa0e3
