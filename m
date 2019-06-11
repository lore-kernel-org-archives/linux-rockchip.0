From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 72/92] ram: rk3399: Add tsel control clock drive
Date: Tue, 11 Jun 2019 20:21:15 +0530
Message-ID: <20190611145135.21399-73-jagan@amarulasolutions.com>
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

tsel contrl clock drives are required to configure PHY
929, 939 controls drive settings.

Add support for these control clock for all dramtype
sdrams.

Thse control clock drives are configure via tsel_ckcs_select_p
and tsel_ckcs_select_n variables.

tsel_ckcs_select_n is PHY_DRV_ODT_34_3 value where as
tsel_ckcs_select_p is retrived from IO settings for lpddr4
and rest uses PHY_DRV_ODT_34_3.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 6385df5600..8eaa304e95 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -561,6 +561,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_rd_select_n;
 	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
+	u32 tsel_ckcs_select_p, tsel_ckcs_select_n;
 	struct io_setting *io = NULL;
 	u32 reg_value;
 
@@ -578,6 +579,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = io->wr_ca_drv;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
+
+		tsel_ckcs_select_p = io->wr_ckcs_drv;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -590,6 +594,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
+
+		tsel_ckcs_select_p = PHY_DRV_ODT_34_3;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -602,6 +609,9 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
+
+		tsel_ckcs_select_p = PHY_DRV_ODT_34_3;
+		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	}
 
 	if (sdram_params->base.odt == 1)
@@ -660,10 +670,12 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[935], 0xff, reg_value);
 
 	/* phy_pad_cs_drive 8bits DENALI_PHY_939 offset_0 */
-	clrsetbits_le32(&denali_phy[939], 0xff, reg_value);
+	clrsetbits_le32(&denali_phy[939], 0xff,
+			tsel_ckcs_select_n | (tsel_ckcs_select_p << 0x4));
 
 	/* phy_pad_clk_drive 8bits DENALI_PHY_929 offset_0 */
-	clrsetbits_le32(&denali_phy[929], 0xff, reg_value);
+	clrsetbits_le32(&denali_phy[929], 0xff,
+			tsel_ckcs_select_n | (tsel_ckcs_select_p << 0x4));
 
 	/* phy_pad_fdbk_drive 23bit DENALI_PHY_924/925 */
 	clrsetbits_le32(&denali_phy[924], 0xff,
-- 
2.18.0.321.gffc6fa0e3
