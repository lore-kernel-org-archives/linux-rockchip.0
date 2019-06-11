From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 25/92] ram: rk3399: Add ddr version enc macro
Date: Tue, 11 Jun 2019 20:20:28 +0530
Message-ID: <20190611145135.21399-26-jagan@amarulasolutions.com>
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

Add dram config macro for handling ddr version number.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 637a0de902..8021ca21ed 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -28,6 +28,7 @@
  * [1:0]	dbw_ch0
 */
 #define SYS_REG_DDRTYPE_SHIFT		13
+#define DDR_SYS_REG_VERSION		2
 #define SYS_REG_DDRTYPE_MASK		7
 #define SYS_REG_NUM_CH_SHIFT		12
 #define SYS_REG_NUM_CH_MASK		1
@@ -60,6 +61,7 @@
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
+#define SYS_REG_ENC_VERSION(n)		((n) << 28)
 #define SYS_REG_ENC_CS0_ROW(n, os_reg2, os_reg3, ch) do { \
 			(os_reg2) |= (((n) - 13) & 0x3) << (6 + 16 * (ch)); \
 			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d77a8310cd..5b87524b7c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1033,7 +1033,9 @@ static void dram_all_config(struct dram_info *dram,
 		if (info->cs1_row)
 			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
 					    sys_reg3, channel);
+
 		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->col, channel);
+		sys_reg3 |= SYS_REG_ENC_VERSION(DDR_SYS_REG_VERSION);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3
