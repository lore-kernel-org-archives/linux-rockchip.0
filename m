From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 3/7] drm: bridge: dw-hdmi: change hdmi phy hpd read function to export
Date: Sat, 30 Sep 2017 09:44:21 +0800
Message-ID: <1506735861-151711-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Change dw_hdmi_phy_read_hpd from static to export.
inno hdmi phy ops will call this interface to get
hpd status.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 5 +++--
 include/drm/bridge/dw_hdmi.h              | 3 ++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index bf14214..34eeaf6 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -1250,12 +1250,13 @@ static void dw_hdmi_phy_disable(struct dw_hdmi *hdmi, void *data)
 	dw_hdmi_phy_power_off(hdmi);
 }
 
-static enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
-						      void *data)
+enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
+					       void *data)
 {
 	return hdmi_readb(hdmi, HDMI_PHY_STAT0) & HDMI_PHY_HPD ?
 		connector_status_connected : connector_status_disconnected;
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_phy_read_hpd);
 
 static void dw_hdmi_phy_update_hpd(struct dw_hdmi *hdmi, void *data,
 				   bool force, bool disabled, bool rxsense)
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index fdb1f0a..01e4979 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -161,7 +161,8 @@ int dw_hdmi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
 		 const struct dw_hdmi_plat_data *plat_data);
 
 void dw_hdmi_setup_rx_sense(struct device *dev, bool hpd, bool rx_sense);
-
+enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
+					       void *data);
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
 void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
 void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
-- 
2.7.4
