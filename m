From: Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [PATCH 07/12] drm: bridge/dw_hdmi: enable audio only if sink supports
 audio
Date: Sat, 08 Aug 2015 17:03:55 +0100
Message-ID: <E1ZO6bD-0002r7-KP@rmk-PC.arm.linux.org.uk>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150808160251.GM7557@n2100.arm.linux.org.uk>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Fabio Estevam <fabio.estevam@freescale.com>, Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon.nettleton@gmail.com>, David Airlie <airlied@linux.ie>
List-Id: linux-rockchip.vger.kernel.org

Only enable audio support if the sink supports audio in some form, as
defined via its EDID.  We discover this capability using the generic
drm_detect_monitor_audio() function.

Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index 7f764716f3c4..578d7362cd65 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -123,6 +123,7 @@ struct dw_hdmi {
 	struct i2c_adapter *ddc;
 	void __iomem *regs;
 	bool sink_is_hdmi;
+	bool sink_has_audio;
 
 	spinlock_t audio_lock;
 	struct mutex audio_mutex;
@@ -1271,13 +1272,17 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 	/* HDMI Initialization Step B.3 */
 	dw_hdmi_enable_video_path(hdmi);
 
-	/* not for DVI mode */
-	if (hdmi->sink_is_hdmi) {
-		dev_dbg(hdmi->dev, "%s HDMI mode\n", __func__);
+	if (hdmi->sink_has_audio) {
+		dev_dbg(hdmi->dev, "sink has audio support\n");
 
 		/* HDMI Initialization Step E - Configure audio */
 		hdmi_clk_regenerator_update_pixel_clock(hdmi);
 		hdmi_enable_audio_clk(hdmi);
+	}
+
+	/* not for DVI mode */
+	if (hdmi->sink_is_hdmi) {
+		dev_dbg(hdmi->dev, "%s HDMI mode\n", __func__);
 
 		/* HDMI Initialization Step F - Configure AVI InfoFrame */
 		hdmi_config_AVI(hdmi, mode);
@@ -1442,6 +1447,7 @@ static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
 			edid->width_cm, edid->height_cm);
 
 		hdmi->sink_is_hdmi = drm_detect_hdmi_monitor(edid);
+		hdmi->sink_has_audio = drm_detect_monitor_audio(edid);
 		drm_mode_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
 		kfree(edid);
-- 
2.1.0
