From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 51/99] ram: rk3399: Add rank detection support
Date: Mon, 17 Jun 2019 13:02:04 +0530
Message-ID: <20190617073252.27810-52-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190617073252.27810-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Right now the rk3399 sdram driver assume that the board
has configured with 2 channels, so any possibility to
enable single channel on the same driver will encounter
channel #1 data training failure.

Log:
U-Boot TPL board init
sdram_init: data training failed
rk3399_dmc_init DRAM init failed -5

So, add an algorithm that can capable to compute the active
or configured rank with associated channel like
a) do rank loop to compute the active rank, with associated
   channel numbers
b) then, succeed the data training only for configured channel
c) preserve the rank for given channel
d) do channel loop for setting the active channel
e) if given rank is zero or inactive on the specific channel,
   clear the timings for the associated channel
f) finally, return error if number of channels is zero

Tested in NanoPI-NEO4 since it support single channel sdram
configuration.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 110 ++++++++++++++++++++++------
 1 file changed, 86 insertions(+), 24 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 87eda06055..a3acb75dba 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1251,13 +1251,52 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 	return stride;
 }
 
+static void clear_channel_params(struct rk3399_sdram_params *params, u8 channel)
+{
+	params->ch[channel].cap_info.rank = 0;
+	params->ch[channel].cap_info.col = 0;
+	params->ch[channel].cap_info.bk = 0;
+	params->ch[channel].cap_info.bw = 32;
+	params->ch[channel].cap_info.dbw = 32;
+	params->ch[channel].cap_info.row_3_4 = 0;
+	params->ch[channel].cap_info.cs0_row = 0;
+	params->ch[channel].cap_info.cs1_row = 0;
+	params->ch[channel].cap_info.ddrconfig = 0;
+}
+
+static int pctl_init(struct dram_info *dram, struct rk3399_sdram_params *params)
+{
+	int channel;
+	int ret;
+
+	for (channel = 0; channel < 2; channel++) {
+		const struct chan_info *chan = &dram->chan[channel];
+		struct rk3399_cru *cru = dram->cru;
+		struct rk3399_ddr_publ_regs *publ = chan->publ;
+
+		phy_pctrl_reset(cru, channel);
+		phy_dll_bypass_set(publ, params->base.ddr_freq);
+
+		ret = pctl_cfg(dram, chan, channel, params);
+		if (ret < 0) {
+			printf("%s: pctl config failed\n", __func__);
+			return ret;
+		}
+
+		/* start to trigger initialization */
+		pctl_start(dram, channel);
+	}
+
+	return 0;
+}
+
 static int sdram_init(struct dram_info *dram,
 		      struct rk3399_sdram_params *params)
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
-	struct rk3399_cru *cru = dram->cru;
-	int channel;
+	u32 training_flag = PI_READ_GATE_TRAINING;
+	int channel, ch, rank;
 	int ret;
 
 	debug("Starting SDRAM initialization...\n");
@@ -1269,36 +1308,59 @@ static int sdram_init(struct dram_info *dram,
 		return -E2BIG;
 	}
 
-	for (channel = 0; channel < 2; channel++) {
-		const struct chan_info *chan = &dram->chan[channel];
-		struct rk3399_ddr_publ_regs *publ = chan->publ;
+	for (ch = 0; ch < 2; ch++) {
+		params->ch[ch].cap_info.rank = 2;
+		for (rank = 2; rank != 0; rank--) {
+			ret = pctl_init(dram, params);
+			if (ret < 0) {
+				printf("%s: pctl init failed\n", __func__);
+				return ret;
+			}
 
-		phy_pctrl_reset(cru, channel);
-		phy_dll_bypass_set(publ, ddr_freq);
+			/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
+			if (dramtype == LPDDR3)
+				udelay(10);
 
-		if (channel >= params->base.num_channels)
-			continue;
+			params->ch[ch].cap_info.rank = rank;
 
-		ret = pctl_cfg(dram, chan, channel, params);
-		if (ret < 0) {
-			printf("%s: pctl config failed\n", __func__);
-			return ret;
-		}
+			/*
+			 * LPDDR3 CA training msut be trigger before
+			 * other training.
+			 * DDR3 is not have CA training.
+			 */
+			if (params->base.dramtype == LPDDR3)
+				training_flag |= PI_CA_TRAINING;
 
-		/* start to trigger initialization */
-		pctl_start(dram, channel);
+			if (!(data_training(&dram->chan[ch], ch,
+					    params, training_flag)))
+				break;
+		}
+		/* Computed rank with associated channel number */
+		params->ch[ch].cap_info.rank = rank;
+	}
 
-		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
-		if (dramtype == LPDDR3)
-			udelay(10);
+	params->base.num_channels = 0;
+	for (channel = 0; channel < 2; channel++) {
+		const struct chan_info *chan = &dram->chan[channel];
+		struct sdram_cap_info *cap_info = &params->ch[channel].cap_info;
 
-		if (data_training(chan, channel, params, PI_FULL_TRAINING)) {
-			printf("%s: data training failed\n", __func__);
-			return -EIO;
+		if (cap_info->rank == 0) {
+			clear_channel_params(params, channel);
+			continue;
+		} else {
+			params->base.num_channels++;
 		}
 
-		set_ddrconfig(chan, params, channel,
-			      params->ch[channel].cap_info.ddrconfig);
+		debug("Channel ");
+		debug(channel ? "1: " : "0: ");
+
+		set_ddrconfig(chan, params, channel, cap_info->ddrconfig);
+	}
+
+	if (params->base.num_channels == 0) {
+		printf("%s: ", __func__);
+		printf(" - %dMHz failed!\n", params->base.ddr_freq);
+		return -EINVAL;
 	}
 
 	params->base.stride = calculate_stride(params);
-- 
2.18.0.321.gffc6fa0e3
