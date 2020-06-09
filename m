From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v9 10/11] drm: bridge: dw-mipi-dsi: fix bad register field offsets
Date: Tue,  9 Jun 2020 19:26:59 +0300
Message-ID: <20200609162700.953260-11-adrian.ratiu@collabora.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200609162700.953260-1-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-imx-3arQi8VN3Tc@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

According to the DSI Host Registers sections available in the IMX,
STM and RK ref manuals for 1.01, 1.30 and 1.31, the register fields
are smaller or bigger than what's coded in the driver, leading to
r/w in reserved spaces which might cause undefined behaviours.

Tested-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
New in v6.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 46 +++++++++----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 1e47d40b5becb..d274216c5a7c2 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -316,7 +316,7 @@ struct dw_mipi_dsi_variant {
 static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_dpi_color_coding =		REG_FIELD(DSI_DPI_COLOR_CODING, 0, 3),
 	.cfg_dpi_18loosely_en =		REG_FIELD(DSI_DPI_COLOR_CODING, 8, 8),
-	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_VCID, 0, 2),
+	.cfg_dpi_vid =			REG_FIELD(DSI_DPI_VCID, 0, 1),
 	.cfg_dpi_vsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 1, 1),
 	.cfg_dpi_hsync_active_low =	REG_FIELD(DSI_DPI_CFG_POL, 2, 2),
 	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG, 1, 1),
@@ -325,29 +325,29 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_cmd_mode_dcs_sw_sr_en =	REG_FIELD(DSI_CMD_MODE_CFG, 16, 18),
 	.cfg_cmd_mode_dcs_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 19, 19),
 	.cfg_cmd_mode_max_rd_pkt_size =	REG_FIELD(DSI_CMD_MODE_CFG, 24, 24),
-	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
-	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 31),
-	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 31),
+	.cfg_cmd_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 0),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS, 0, 6),
+	.cfg_vid_mode_en =		REG_FIELD(DSI_MODE_CFG, 0, 0),
 	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG, 0, 1),
 	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG, 8, 13),
 	.cfg_vid_mode_vpg_en =		REG_FIELD(DSI_VID_MODE_CFG, 16, 16),
 	.cfg_vid_mode_vpg_horiz =	REG_FIELD(DSI_VID_MODE_CFG, 24, 24),
-	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_SIZE, 0, 10),
-	.cfg_vid_hsa_time =		REG_FIELD(DSI_VID_HSA_TIME, 0, 31),
-	.cfg_vid_hbp_time =		REG_FIELD(DSI_VID_HBP_TIME, 0, 31),
-	.cfg_vid_hline_time =		REG_FIELD(DSI_VID_HLINE_TIME, 0, 31),
-	.cfg_vid_vsa_time =		REG_FIELD(DSI_VID_VSA_LINES, 0, 31),
-	.cfg_vid_vbp_time =		REG_FIELD(DSI_VID_VBP_LINES, 0, 31),
-	.cfg_vid_vfp_time =		REG_FIELD(DSI_VID_VFP_LINES, 0, 31),
-	.cfg_vid_vactive_time =		REG_FIELD(DSI_VID_VACTIVE_LINES, 0, 31),
+	.cfg_vid_pkt_size =		REG_FIELD(DSI_VID_PKT_SIZE, 0, 13),
+	.cfg_vid_hsa_time =		REG_FIELD(DSI_VID_HSA_TIME, 0, 11),
+	.cfg_vid_hbp_time =		REG_FIELD(DSI_VID_HBP_TIME, 0, 11),
+	.cfg_vid_hline_time =		REG_FIELD(DSI_VID_HLINE_TIME, 0, 14),
+	.cfg_vid_vsa_time =		REG_FIELD(DSI_VID_VSA_LINES, 0, 9),
+	.cfg_vid_vbp_time =		REG_FIELD(DSI_VID_VBP_LINES, 0, 9),
+	.cfg_vid_vfp_time =		REG_FIELD(DSI_VID_VFP_LINES, 0, 9),
+	.cfg_vid_vactive_time =		REG_FIELD(DSI_VID_VACTIVE_LINES, 0, 13),
 	.cfg_phy_txrequestclkhs =	REG_FIELD(DSI_LPCLK_CTRL, 0, 0),
-	.cfg_phy_bta_time =		REG_FIELD(DSI_BTA_TO_CNT, 0, 31),
-	.cfg_phy_max_rd_time =		REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
+	.cfg_phy_bta_time =		REG_FIELD(DSI_BTA_TO_CNT, 0, 15),
+	.cfg_phy_max_rd_time =		REG_FIELD(DSI_PHY_TMR_CFG, 0, 14),
 	.cfg_phy_lp2hs_time =		REG_FIELD(DSI_PHY_TMR_CFG, 16, 23),
 	.cfg_phy_hs2lp_time =		REG_FIELD(DSI_PHY_TMR_CFG, 24, 31),
-	.cfg_phy_max_rd_time_v131 =	REG_FIELD(DSI_PHY_TMR_RD_CFG, 0, 15),
-	.cfg_phy_lp2hs_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 0, 15),
-	.cfg_phy_hs2lp_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 16, 31),
+	.cfg_phy_max_rd_time_v131 =	REG_FIELD(DSI_PHY_TMR_RD_CFG, 0, 14),
+	.cfg_phy_lp2hs_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 0, 9),
+	.cfg_phy_hs2lp_time_v131 =	REG_FIELD(DSI_PHY_TMR_CFG, 16, 25),
 	.cfg_phy_clklp2hs_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 0, 15),
 	.cfg_phy_clkhs2lp_time =	REG_FIELD(DSI_PHY_TMR_LPCLK_CFG, 16, 31),
 	.cfg_phy_testclr =		REG_FIELD(DSI_PHY_TST_CTRL0, 0, 0),
@@ -361,11 +361,11 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
 	.cfg_pckhdl_cfg =		REG_FIELD(DSI_PCKHDL_CFG, 0, 4),
 	.cfg_hstx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 16, 31),
 	.cfg_lprx_timeout_counter =	REG_FIELD(DSI_TO_CNT_CFG, 0, 15),
-	.cfg_int_stat0 =		REG_FIELD(DSI_INT_ST0, 0, 31),
-	.cfg_int_stat1 =		REG_FIELD(DSI_INT_ST1, 0, 31),
-	.cfg_int_mask0 =		REG_FIELD(DSI_INT_MSK0, 0, 31),
-	.cfg_int_mask1 =		REG_FIELD(DSI_INT_MSK1, 0, 31),
-	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR, 0, 31),
+	.cfg_int_stat0 =		REG_FIELD(DSI_INT_ST0, 0, 20),
+	.cfg_int_stat1 =		REG_FIELD(DSI_INT_ST1, 0, 12),
+	.cfg_int_mask0 =		REG_FIELD(DSI_INT_MSK0, 0, 20),
+	.cfg_int_mask1 =		REG_FIELD(DSI_INT_MSK1, 0, 12),
+	.cfg_gen_hdr =			REG_FIELD(DSI_GEN_HDR, 0, 23),
 	.cfg_gen_payload =		REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
 };
 
@@ -382,7 +382,7 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {
 	.cfg_cmd_mode_gen_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 11, 11),
 	.cfg_cmd_mode_dcs_lw_en =	REG_FIELD(DSI_CMD_MODE_CFG, 12, 12),
 	.cfg_cmd_mode_ack_rqst_en =	REG_FIELD(DSI_CMD_MODE_CFG_V101, 13, 13),
-	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 14),
+	.cfg_cmd_pkt_status =		REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 6),
 	.cfg_vid_mode_en =		REG_FIELD(DSI_VID_MODE_CFG_V101, 0, 0),
 	.cfg_vid_mode_type =		REG_FIELD(DSI_VID_MODE_CFG_V101, 1, 2),
 	.cfg_vid_mode_low_power =	REG_FIELD(DSI_VID_MODE_CFG_V101, 3, 8),
-- 
2.27.0
