From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v6 3/5] rockchip: Don't clear the reset status reg
Date: Tue, 21 Jul 2020 20:36:02 +0530
Message-ID: <20200721150604.35410-4-jagan@amarulasolutions.com>
References: <20200721150604.35410-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721150604.35410-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

reset reason can be used several stages of U-Boot bootloader
like SPL, U-Boot proper based on the requirements.

Clearing the status register end of get_reset_cause will end
up showing the wrong reset cause when it read the second time.
For example, if board resets, SPL reads the reset status as
RST whereas U-Boot proper reads the status as POR.

However, based on the latest testing clearing reset status
won't be required for determine the last reset cause or
following resets.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>
---
Changes for v6:
- collect Kever r-b

 arch/arm/include/asm/arch-rockchip/cru.h | 1 -
 arch/arm/mach-rockchip/cpu-info.c        | 6 ------
 2 files changed, 7 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 5eb17f9d55..d2057cb738 100644
--- a/arch/arm/include/asm/arch-rockchip/cru.h
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -26,7 +26,6 @@ enum {
 	SND_GLB_TSADC_RST_ST	= BIT(3),
 	FST_GLB_WDT_RST_ST	= BIT(4),
 	SND_GLB_WDT_RST_ST	= BIT(5),
-	GLB_RST_ST_MASK		= GENMASK(5, 0),
 };
 
 #define MHz		1000000
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
index 21ca9dedce..bb5a198039 100644
--- a/arch/arm/mach-rockchip/cpu-info.c
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -47,12 +47,6 @@ static char *get_reset_cause(void)
 	 */
 	env_set("reset_reason", cause);
 
-	/*
-	 * Clear glb_rst_st, so we can determine the last reset cause
-	 * for following resets.
-	 */
-	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
-
 	return cause;
 }
 
-- 
2.25.1
