From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 03/92] ram: rk3399: Add proper spaces in data training
Date: Tue, 11 Jun 2019 20:20:06 +0530
Message-ID: <20190611145135.21399-4-jagan@amarulasolutions.com>
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

Add proper spaces in the code of data training functions.

No functionality change.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8191ab6176..b0850a88a0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -620,8 +620,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[100], 0x3 << 8, 0x2 << 8);
+
 		/* PI_92 PI_CALVL_REQ:WR:16:1,PI_CALVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[92],
 				(0x1 << 16) | (0x3 << 24),
@@ -651,9 +653,11 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[100], 0x3 << 8);
 
 	return 0;
@@ -670,8 +674,10 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_60 PI_WRLVL_EN:RW:8:2 */
 		clrsetbits_le32(&denali_pi[60], 0x3 << 8, 0x2 << 8);
+
 		/* PI_59 PI_WRLVL_REQ:WR:8:1,PI_WRLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[59],
 				(0x1 << 8) | (0x3 << 16),
@@ -705,6 +711,7 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
@@ -726,8 +733,10 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_GATE_EN:RW:24:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 24, 0x2 << 24);
+
 		/*
 		 * PI_74 PI_RDLVL_GATE_REQ:WR:16:1
 		 * PI_RDLVL_CS:RW:24:2
@@ -764,9 +773,11 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 				 (obs_err == 1))
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 24);
 
 	return 0;
@@ -781,8 +792,10 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/* PI_80 PI_RDLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[80], 0x3 << 16, 0x2 << 16);
+
 		/* PI_74 PI_RDLVL_REQ:WR:8:1,PI_RDLVL_CS:RW:24:2 */
 		clrsetbits_le32(&denali_pi[74],
 				(0x1 << 8) | (0x3 << 24),
@@ -805,9 +818,11 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 2) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[80], 0x3 << 16);
 
 	return 0;
@@ -822,13 +837,16 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
+
 		/*
 		 * disable PI_WDQLVL_VREF_EN before wdq leveling?
 		 * PI_181 PI_WDQLVL_VREF_EN:RW:8:1
 		 */
 		clrbits_le32(&denali_pi[181], 0x1 << 8);
+
 		/* PI_124 PI_WDQLVL_EN:RW:16:2 */
 		clrsetbits_le32(&denali_pi[124], 0x3 << 16, 0x2 << 16);
+
 		/* PI_121 PI_WDQLVL_REQ:WR:8:1,PI_WDQLVL_CS:RW:16:2 */
 		clrsetbits_le32(&denali_pi[121],
 				(0x1 << 8) | (0x3 << 16),
@@ -845,9 +863,11 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 			else if (((tmp >> 6) & 0x1) == 0x1)
 				return -EIO;
 		}
+
 		/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 		writel(0x00003f7c, (&denali_pi[175]));
 	}
+
 	clrbits_le32(&denali_pi[124], 0x3 << 16);
 
 	return 0;
-- 
2.18.0.321.gffc6fa0e3
