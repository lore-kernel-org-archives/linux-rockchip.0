From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 70/92] ram: rk3399: Add IO settings
Date: Tue, 11 Jun 2019 20:21:13 +0530
Message-ID: <20190611145135.21399-71-jagan@amarulasolutions.com>
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

Add IO settings for dram ctl and phy.

IO settings are useful for configuring ctl, phy odt, vref,
mr5, mode select and other needed input output operations
for lpddr4 or any other dramtype sdram.

Right now, this patch added IO setting for all supported
sdram frequencies.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 104 ++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9151b023e2..5db7cbe116 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -80,6 +80,110 @@ struct rockchip_dmc_plat {
 	struct regmap *map;
 };
 
+struct io_setting {
+	u32 mhz;
+	u32 mr5;
+	/* dram side */
+	u32 dq_odt;
+	u32 ca_odt;
+	u32 pdds;
+	u32 dq_vref;
+	u32 ca_vref;
+	/* phy side */
+	u32 rd_odt;
+	u32 wr_dq_drv;
+	u32 wr_ca_drv;
+	u32 wr_ckcs_drv;
+	u32 rd_odt_en;
+	u32 rd_vref;
+} lpddr4_io_setting[] = {
+	{
+		50 * MHz,
+		0,
+		/* dram side */
+		0,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_40,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en;*/
+		41,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		600 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		800 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		933 * MHz,
+		0,
+		/* dram side */
+		3,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x59,	/* dq_vref; 32% */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		1066 * MHz,
+		0,
+		/* dram side */
+		6,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x10,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_60,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+};
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
-- 
2.18.0.321.gffc6fa0e3
