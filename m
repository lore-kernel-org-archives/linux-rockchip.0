From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 35/92] ram: rk3399: Move pwrup_srefresh_exit to dram_info
Date: Tue, 11 Jun 2019 20:20:38 +0530
Message-ID: <20190611145135.21399-36-jagan@amarulasolutions.com>
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

Add pwrup_srefresh_exit to be part of dram_info so-that
the it can help to support pwrup_srefresh_exit in individual
channels while starting pctl in future.

No functionality change.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index bbf56f29ae..7ca76d304f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -49,6 +49,7 @@ struct chan_info {
 struct dram_info {
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
+	u32 pwrup_srefresh_exit;
 	struct chan_info chan[2];
 	struct clk ddr_clk;
 	struct rk3399_cru *cru;
@@ -487,8 +488,8 @@ static int phy_io_config(const struct chan_info *chan,
 	return 0;
 }
 
-static int pctl_cfg(const struct chan_info *chan, u32 channel,
-		    const struct rk3399_sdram_params *sdram_params)
+static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
+		    u32 channel, const struct rk3399_sdram_params *sdram_params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -496,7 +497,6 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	const u32 *params_ctl = sdram_params->pctl_regs.denali_ctl;
 	const u32 *params_phy = sdram_params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
-	u32 pwrup_srefresh_exit;
 	int ret;
 	const ulong timeout_ms = 200;
 
@@ -516,7 +516,8 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	writel(sdram_params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(sdram_params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	pwrup_srefresh_exit = readl(&denali_ctl[68]) & PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
+				    PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -592,7 +593,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	debug("DRAM (%s): phy locked after %ld ms\n", __func__, get_timer(tmp));
 
 	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
-			pwrup_srefresh_exit);
+			dram->pwrup_srefresh_exit);
 	return 0;
 }
 
@@ -1176,7 +1177,7 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= sdram_params->base.num_channels)
 			continue;
 
-		ret = pctl_cfg(chan, channel, sdram_params);
+		ret = pctl_cfg(dram, chan, channel, sdram_params);
 		if (ret < 0) {
 			printf("%s: pctl config failed\n", __func__);
 			return ret;
-- 
2.18.0.321.gffc6fa0e3
