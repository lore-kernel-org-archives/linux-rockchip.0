From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 34/92] ram: rk3399: Add phy pctrl reset support
Date: Tue, 11 Jun 2019 20:20:37 +0530
Message-ID: <20190611145135.21399-35-jagan@amarulasolutions.com>
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

Add support for phy pctrl reset support for both channel 0, 1.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e3945feca3..bbf56f29ae 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -35,6 +35,10 @@
 #define PHY_DRV_ODT_40		0xe
 #define PHY_DRV_ODT_34_3	0xf
 
+#define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
+					((n) << (8 + (ch) * 4)))
+#define CRU_SFTRST_DDR_PHY(ch, n)	((0x1 << (9 + 16 + (ch) * 4)) | \
+					((n) << (9 + (ch) * 4)))
 struct chan_info {
 	struct rk3399_ddr_pctl_regs *pctl;
 	struct rk3399_ddr_pi_regs *pi;
@@ -79,6 +83,29 @@ static void copy_to_reg(u32 *dest, const u32 *src, u32 n)
 	}
 }
 
+static void rkclk_ddr_reset(struct rk3399_cru *cru, u32 channel, u32 ctl,
+			    u32 phy)
+{
+	channel &= 0x1;
+	ctl &= 0x1;
+	phy &= 0x1;
+	writel(CRU_SFTRST_DDR_CTRL(channel, ctl) |
+				   CRU_SFTRST_DDR_PHY(channel, phy),
+				   &cru->softrst_con[4]);
+}
+
+static void phy_pctrl_reset(struct rk3399_cru *cru,  u32 channel)
+{
+	rkclk_ddr_reset(cru, channel, 1, 1);
+	udelay(10);
+
+	rkclk_ddr_reset(cru, channel, 1, 0);
+	udelay(10);
+
+	rkclk_ddr_reset(cru, channel, 0, 0);
+	udelay(10);
+}
+
 static void phy_dll_bypass_set(struct rk3399_ddr_publ_regs *ddr_publ_regs,
 			       u32 freq)
 {
@@ -1126,6 +1153,7 @@ static int sdram_init(struct dram_info *dram,
 {
 	unsigned char dramtype = sdram_params->base.dramtype;
 	unsigned int ddr_freq = sdram_params->base.ddr_freq;
+	struct rk3399_cru *cru = dram->cru;
 	int channel;
 	int ret;
 
@@ -1142,6 +1170,7 @@ static int sdram_init(struct dram_info *dram,
 		const struct chan_info *chan = &dram->chan[channel];
 		struct rk3399_ddr_publ_regs *publ = chan->publ;
 
+		phy_pctrl_reset(cru, channel);
 		phy_dll_bypass_set(publ, ddr_freq);
 
 		if (channel >= sdram_params->base.num_channels)
-- 
2.18.0.321.gffc6fa0e3
