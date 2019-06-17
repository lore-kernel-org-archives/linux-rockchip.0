From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 80/99] ram: rk3399: Simplify data training first argument
Date: Mon, 17 Jun 2019 13:02:33 +0530
Message-ID: <20190617073252.27810-81-jagan@amarulasolutions.com>
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

data training is using chan_info as first argument with
channel number as second argument instead of that use
dram_info as first argument so-that we can get the
chan_info at data training definition.

This was the argument handling is meaningful, readable
and it would help to add similar data training for
lpddr4 in future.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e3180d0ef2..927c7cced3 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1286,10 +1286,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	return 0;
 }
 
-static int data_training(const struct chan_info *chan, u32 channel,
+static int data_training(struct dram_info *dram, u32 channel,
 			 const struct rk3399_sdram_params *params,
 			 u32 training_flag)
 {
+	struct chan_info *chan = &dram->chan[channel];
 	u32 *denali_phy = chan->publ->denali_phy;
 	int ret;
 
@@ -1499,8 +1500,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	for (channel = 0; channel < ch_count; channel++) {
 		denali_phy = dram->chan[channel].publ->denali_phy;
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
-		ret = data_training(&dram->chan[channel], channel,
-				    params, PI_FULL_TRAINING);
+		ret = data_training(dram, channel, params, PI_FULL_TRAINING);
 		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
@@ -1663,8 +1663,7 @@ static int sdram_init(struct dram_info *dram,
 			if (params->base.dramtype == LPDDR3)
 				training_flag |= PI_CA_TRAINING;
 
-			if (!(data_training(&dram->chan[ch], ch,
-					    params, training_flag)))
+			if (!(data_training(dram, ch, params, training_flag)))
 				break;
 		}
 		/* Computed rank with associated channel number */
-- 
2.18.0.321.gffc6fa0e3
