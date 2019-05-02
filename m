From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
Date: Thu,  2 May 2019 15:38:07 -0700
Message-ID: <20190502223808.185180-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: linux-rockchip@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>, mka@chromium.org, Sean Paul <seanpaul@chromium.org>, Douglas Anderson <dianders@chromium.org>, Zheng Yang <zhengyang@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, David Airlie <airlied@linux.ie>, Jernej Skrabec <jernej.skrabec@siol.net>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's add a hook to the core dw-hdmi driver so that we can call it in
dw_hdmi-rockchip in the next commit.

NOTE: the exact set of steps I've done here in resume come from
looking at the normal dw_hdmi init sequence in upstream Linux plus the
sequence that we did in downstream Chrome OS 3.14.  Testing show that
it seems to work, but if an extra step is needed or something here is
not needed we could improve it.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 +++++++++++++++++++++
 include/drm/bridge/dw_hdmi.h              |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index db761329a1e3..4b38bfd43e59 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2780,6 +2780,27 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
 
+int dw_hdmi_suspend(struct dw_hdmi *hdmi)
+{
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_suspend);
+
+int dw_hdmi_resume(struct dw_hdmi *hdmi)
+{
+	initialize_hdmi_ih_mutes(hdmi);
+
+	dw_hdmi_setup_i2c(hdmi);
+	if (hdmi->i2c)
+		dw_hdmi_i2c_init(hdmi);
+
+	if (hdmi->phy.ops->setup_hpd)
+		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_resume);
+
 MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
 MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
 MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 66e70770cce5..c4132e9a5ae3 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -154,6 +154,9 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
 			     struct drm_encoder *encoder,
 			     const struct dw_hdmi_plat_data *plat_data);
 
+int dw_hdmi_suspend(struct dw_hdmi *hdmi);
+int dw_hdmi_resume(struct dw_hdmi *hdmi);
+
 void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
-- 
2.21.0.1020.gf2820cf01a-goog
