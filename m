From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 87/92] ram: rk3399: Set lpddr4 MR3
Date: Tue, 11 Jun 2019 20:21:30 +0530
Message-ID: <20190611145135.21399-88-jagan@amarulasolutions.com>
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

Set MR3 based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 48 +++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 2c02c51fdf..f1fb16c130 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1949,6 +1949,53 @@ static void set_lpddr4_ca_odt(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_MR3(const struct chan_info *chan,
+			   struct rk3399_sdram_params *params, u32 ctl,
+			   bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = ((io->pdds << 3) | 1);
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[138], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[152], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[131], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[139], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[146], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[154], 0xFFFF, reg_value);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[138], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[152], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[129], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[136], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[144], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[151], 0xFFFF << 16, reg_value << 16);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[139], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[153], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[126], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[134], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[141], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[149], 0xFFFF, reg_value);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2197,6 +2244,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	ctl = lpddr4_get_ctl(timings, phy);
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
-- 
2.18.0.321.gffc6fa0e3
