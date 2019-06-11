From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 04/92] ram: rk3399: Handle data training return types
Date: Tue, 11 Jun 2019 20:20:07 +0530
Message-ID: <20190611145135.21399-5-jagan@amarulasolutions.com>
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

data trainings calls like ca, wl, rg, rl, wdql have proper
return types with -EIO and the return type missed to handle
in data_training function.

This patch, add proper return type checks along with useful
debug statement on each data training calls.

Incidentally this would help to prevent the sdram initialization
hang for single channel dram and when the code is trying to
initialize second channel with proper return type of relevant
data training call might failed.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 ++++++++++++++++++++++-------
 1 file changed, 38 insertions(+), 12 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b0850a88a0..73732e0767 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -878,6 +878,7 @@ static int data_training(const struct chan_info *chan, u32 channel,
 			 u32 training_flag)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
+	int ret;
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	setbits_le32(&denali_phy[927], (1 << 22));
@@ -898,24 +899,49 @@ static int data_training(const struct chan_info *chan, u32 channel,
 	}
 
 	/* ca training(LPDDR4,LPDDR3 support) */
-	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING)
-		data_training_ca(chan, channel, sdram_params);
+	if ((training_flag & PI_CA_TRAINING) == PI_CA_TRAINING) {
+		ret = data_training_ca(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training ca failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* write leveling(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING)
-		data_training_wl(chan, channel, sdram_params);
+	if ((training_flag & PI_WRITE_LEVELING) == PI_WRITE_LEVELING) {
+		ret = data_training_wl(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training wl failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* read gate training(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING)
-		data_training_rg(chan, channel, sdram_params);
+	if ((training_flag & PI_READ_GATE_TRAINING) == PI_READ_GATE_TRAINING) {
+		ret = data_training_rg(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training rg failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* read leveling(LPDDR4,LPDDR3,DDR3 support) */
-	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING)
-		data_training_rl(chan, channel, sdram_params);
+	if ((training_flag & PI_READ_LEVELING) == PI_READ_LEVELING) {
+		ret = data_training_rl(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training rl failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* wdq leveling(LPDDR4 support) */
-	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING)
-		data_training_wdql(chan, channel, sdram_params);
+	if ((training_flag & PI_WDQ_LEVELING) == PI_WDQ_LEVELING) {
+		ret = data_training_wdql(chan, channel, sdram_params);
+		if (ret < 0) {
+			debug("%s: data training wdql failed\n", __func__);
+			return ret;
+		}
+	}
 
 	/* PHY_927 PHY_PAD_DQS_DRIVE  RPULL offset_22 */
 	clrbits_le32(&denali_phy[927], (1 << 22));
@@ -1048,7 +1074,7 @@ static int switch_to_phy_index1(struct dram_info *dram,
 		clrsetbits_le32(&denali_phy[896], (0x3 << 8) | 1, 1 << 8);
 		ret = data_training(&dram->chan[channel], channel,
 				    sdram_params, PI_FULL_TRAINING);
-		if (ret) {
+		if (ret < 0) {
 			debug("index1 training failed\n");
 			return ret;
 		}
@@ -1093,7 +1119,7 @@ static int sdram_init(struct dram_info *dram,
 
 		if (data_training(chan, channel,
 				  sdram_params, PI_FULL_TRAINING)) {
-			printf("SDRAM initialization failed, reset\n");
+			printf("%s: data training failed\n", __func__);
 			return -EIO;
 		}
 
-- 
2.18.0.321.gffc6fa0e3
