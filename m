From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 75/99] ram: rk3399: Configure soc odt support
Date: Mon, 17 Jun 2019 13:02:28 +0530
Message-ID: <20190617073252.27810-76-jagan@amarulasolutions.com>
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

CTL 145, 146, 159, 160 registers are used to configure
soc odt on rk3399.

These soc odt values are updated from CS0_MR22_VAL and
CS1_MR22_VAL and for lpddr4 these values ORed with
tsel_rd_select_n.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 49 ++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index caf8180018..5f118fc0c6 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -40,6 +40,8 @@
 #define PHY_SLEWP_EN		0x1
 #define PHY_SLEWN_EN		0x1
 #define PHY_RX_CM_INPUT		0x1
+#define CS0_MR22_VAL		0
+#define CS1_MR22_VAL		3
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -554,7 +556,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		       const struct rk3399_sdram_params *params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
-
+	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_rd_select_p;
 	u32 tsel_idle_select_n, tsel_rd_select_n;
@@ -562,6 +564,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
 	u32 tsel_ckcs_select_p, tsel_ckcs_select_n;
 	struct io_setting *io = NULL;
+	u32 soc_odt = 0;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
@@ -581,6 +584,35 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_ckcs_select_p = io->wr_ckcs_drv;
 		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
+		switch (tsel_rd_select_n) {
+		case PHY_DRV_ODT_240:
+			soc_odt = 1;
+			break;
+		case PHY_DRV_ODT_120:
+			soc_odt = 2;
+			break;
+		case PHY_DRV_ODT_80:
+			soc_odt = 3;
+			break;
+		case PHY_DRV_ODT_60:
+			soc_odt = 4;
+			break;
+		case PHY_DRV_ODT_48:
+			soc_odt = 5;
+			break;
+		case PHY_DRV_ODT_40:
+			soc_odt = 6;
+			break;
+		case PHY_DRV_ODT_34_3:
+			soc_odt = 6;
+			printf("%s: Unable to support LPDDR4 MR22 Soc ODT\n",
+			       __func__);
+			break;
+		case PHY_DRV_ODT_HI_Z:
+		default:
+			soc_odt = 0;
+			break;
+		}
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -621,6 +653,21 @@ static void set_ds_odt(const struct chan_info *chan,
 	tsel_wr_en = 0;
 	tsel_idle_en = 0;
 
+	/* F0_0 */
+	clrsetbits_le32(&denali_ctl[145], 0xFF << 16,
+			(soc_odt | (CS0_MR22_VAL << 3)) << 16);
+	/* F2_0, F1_0 */
+	clrsetbits_le32(&denali_ctl[146], 0xFF00FF,
+			((soc_odt | (CS0_MR22_VAL << 3)) << 16) |
+			(soc_odt | (CS0_MR22_VAL << 3)));
+	/* F0_1 */
+	clrsetbits_le32(&denali_ctl[159], 0xFF << 16,
+			(soc_odt | (CS1_MR22_VAL << 3)) << 16);
+	/* F2_1, F1_1 */
+	clrsetbits_le32(&denali_ctl[160], 0xFF00FF,
+			((soc_odt | (CS1_MR22_VAL << 3)) << 16) |
+			(soc_odt | (CS1_MR22_VAL << 3)));
+
 	/*
 	 * phy_dq_tsel_select_X 24bits DENALI_PHY_6/134/262/390 offset_0
 	 * sets termination values for read/idle cycles and drive strength
-- 
2.18.0.321.gffc6fa0e3
