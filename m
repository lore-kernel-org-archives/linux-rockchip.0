From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 2/2] drm/bridge/synopsys: dw-hdmi: Allow platforms to provide custom audio tables
Date: Wed, 19 Jun 2019 14:07:18 -0700
Message-ID: <20190619210718.134951-2-dianders@chromium.org>
References: <20190619210718.134951-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190619210718.134951-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, seanpaul@chromium.org
Cc: jernej.skrabec@siol.net, heiko@sntech.de, jonas@kwiboo.se, maxime.ripard@bootlin.com, narmstrong@baylibre.com, linux-rockchip@lists.infradead.org, dgreid@chromium.org, cychiang@chromium.org, jbrunet@baylibre.com, Douglas Anderson <dianders@chromium.org>, David Airlie <airlied@linux.ie>, Zheng Yang <zhengyang@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On some platforms using dw_hdmi it may not be possible to make an HDMI
pixel clock exactly, but it may be possible to make a rate that is
close enough to be within spec.  For instance on rk3288 we can make
25,176,471 Hz instead of 25,174,825.1748... Hz (25.2 MHz / 1.001).  A
future patch to the rk3288 platform code could enable support for this
clock rate and specify the N/CTS that would be ideal.

NOTE: I haven't yet posted said patch due to complexities with knowing
whether dw_hdmi can control the dynamic PLL on rk3288.  Thus for now
there are no users of this feature yet.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Split out the ability of a platform to provide custom tables.

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 27 ++++++++++++++---------
 include/drm/bridge/dw_hdmi.h              |  8 +++++++
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 7cdffebcc7cb..b6027edf2942 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -60,13 +60,6 @@ enum hdmi_datamap {
 	YCbCr422_12B = 0x12,
 };
 
-struct dw_hdmi_audio_tmds_n {
-	unsigned long tmds;
-	unsigned int n_32k;
-	unsigned int n_44k1;
-	unsigned int n_48k;
-};
-
 /*
  * Unless otherwise noted, entries in this table are 100% optimization.
  * Values can be obtained from hdmi_compute_n() but that function is
@@ -603,6 +596,7 @@ static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
 static int hdmi_match_tmds_n_table(struct dw_hdmi *hdmi, unsigned int freq,
 				   unsigned long pixel_clk)
 {
+	const struct dw_hdmi_plat_data *plat_data = hdmi->plat_data;
 	const struct dw_hdmi_audio_tmds_n *tmds_n = NULL;
 	int mult = 1;
 	int i;
@@ -612,10 +606,21 @@ static int hdmi_match_tmds_n_table(struct dw_hdmi *hdmi, unsigned int freq,
 		freq /= 2;
 	}
 
-	for (i = 0; common_tmds_n_table[i].tmds != 0; i++) {
-		if (pixel_clk == common_tmds_n_table[i].tmds) {
-			tmds_n = &common_tmds_n_table[i];
-			break;
+	if (plat_data->tmds_n_table) {
+		for (i = 0; plat_data->tmds_n_table[i].tmds != 0; i++) {
+			if (pixel_clk == plat_data->tmds_n_table[i].tmds) {
+				tmds_n = &plat_data->tmds_n_table[i];
+				break;
+			}
+		}
+	}
+
+	if (tmds_n == NULL) {
+		for (i = 0; common_tmds_n_table[i].tmds != 0; i++) {
+			if (pixel_clk == common_tmds_n_table[i].tmds) {
+				tmds_n = &common_tmds_n_table[i];
+				break;
+			}
 		}
 	}
 
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index c402364aec0d..5ee6b0a127aa 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -90,6 +90,13 @@ enum dw_hdmi_phy_type {
 	DW_HDMI_PHY_VENDOR_PHY = 0xfe,
 };
 
+struct dw_hdmi_audio_tmds_n {
+	unsigned long tmds;
+	unsigned int n_32k;
+	unsigned int n_44k1;
+	unsigned int n_48k;
+};
+
 struct dw_hdmi_mpll_config {
 	unsigned long mpixelclock;
 	struct {
@@ -137,6 +144,7 @@ struct dw_hdmi_plat_data {
 	const struct dw_hdmi_mpll_config *mpll_cfg;
 	const struct dw_hdmi_curr_ctrl *cur_ctr;
 	const struct dw_hdmi_phy_config *phy_config;
+	const struct dw_hdmi_audio_tmds_n *tmds_n_table;
 	int (*configure_phy)(struct dw_hdmi *hdmi,
 			     const struct dw_hdmi_plat_data *pdata,
 			     unsigned long mpixelclock);
-- 
2.22.0.410.gd8fdbe21b5-goog
