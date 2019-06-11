From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 32/92] ram: rk3399: s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
Date: Tue, 11 Jun 2019 20:20:35 +0530
Message-ID: <20190611145135.21399-33-jagan@amarulasolutions.com>
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

Rename ca_tsel_wr_select_p to tsel_wr_select_ca_p based
on the bsp code and associated datasheet.

No functionality change.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index bfae4e78a9..d868621c93 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -161,14 +161,14 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
+	u32 tsel_wr_select_ca_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -178,7 +178,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -188,7 +188,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -229,7 +229,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3
