From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 69/92] ram: rk3399: Don't disable dfi dram clk for lpddr4,
 rank 1
Date: Tue, 11 Jun 2019 20:21:12 +0530
Message-ID: <20190611145135.21399-70-jagan@amarulasolutions.com>
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

The hardware for LPDDR4 with
- CLK0P/N connect to lower 16-bits
- CLK1P/N connect to higher 16-bits

and usually dfi dram clk is configured via CLK1P/N, so
disabling dfi dram clk will disable the CLK1P/N as well.

So, add patch to not to disable dfi dram clk for lpddr4,
with rank 1.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a251fc6045..9151b023e2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1233,8 +1233,18 @@ static void dram_all_config(struct dram_info *dram,
 		writel(noc_timing->ddrmode.d32,
 		       &ddr_msch_regs->ddrmode);
 
-		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (sdram_params->ch[channel].cap_info.rank == 1)
+		/**
+		 * rank 1 memory clock disable (dfi_dram_clk_disable = 1)
+		 *
+		 * The hardware for LPDDR4 with
+		 * - CLK0P/N connect to lower 16-bits
+		 * - CLK1P/N connect to higher 16-bits
+		 *
+		 * dfi dram clk is configured via CLK1P/N, so disabling
+		 * dfi dram clk will disable the CLK1P/N as well for lpddr4.
+		 */
+		if (sdram_params->ch[channel].cap_info.rank == 1 &&
+		    sdram_params->base.dramtype != LPDDR4)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
-- 
2.18.0.321.gffc6fa0e3
