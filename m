From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH] drm: bridge: dw-hdmi: add HDMI vendor specific infoframe config
Date: Mon, 20 Mar 2017 14:10:49 +0800
Message-ID: <1489990249-29152-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: architt@codeaurora.org, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, laurent.pinchart+renesas@ideasonboard.com, joabreu@synopsys.com, andy.yan@rock-chips.com, nickey.yang@rock-chips.com, zhengyang@rock-chips.com, rmk+kernel@arm.linux.org.uk, vladimir_zapolskiy@mentor.com
List-Id: linux-rockchip.vger.kernel.org

Vendor specific infoframe is mandatory for 4K2K resolution.
Without this, the HDMI protocol compliance fails.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 drivers/gpu/drm/bridge/dw-hdmi.c | 50 ++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/bridge/dw-hdmi.h |  4 ++++
 2 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
index 9a9ec27..79e2e48 100644
--- a/drivers/gpu/drm/bridge/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/dw-hdmi.c
@@ -1195,6 +1195,55 @@ static void hdmi_config_AVI(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 	hdmi_writeb(hdmi, (frame.right_bar >> 8) & 0xff, HDMI_FC_AVISRB1);
 }
 
+static void hdmi_config_vendor_specific_infoframe(struct dw_hdmi *hdmi,
+						 struct drm_display_mode *mode)
+{
+	struct hdmi_vendor_infoframe frame;
+	u8 buffer[10];
+	ssize_t err;
+
+	err = drm_hdmi_vendor_infoframe_from_display_mode(&frame, mode);
+	if (err) {
+		dev_err(hdmi->dev,
+			"Failed to get vendor infoframe from mode: %zd\n", err);
+		return;
+	}
+
+	err = hdmi_vendor_infoframe_pack(&frame, buffer, sizeof(buffer));
+	if (!err) {
+		dev_err(hdmi->dev, "Failed to pack vendor infoframe: %zd\n",
+			err);
+		return;
+	}
+	hdmi_modb(hdmi, 0 << HDMI_FC_DATAUTO0_VSD_OFFSET,
+		  HDMI_FC_DATAUTO0_VSD_MASK, HDMI_FC_DATAUTO0);
+
+	/* Set the length of HDMI vendor specific InfoFrame payload */
+	hdmi_writeb(hdmi, buffer[2], HDMI_FC_VSDSIZE);
+
+	/* Set 24bit IEEE Registration Identifier */
+	hdmi_writeb(hdmi, buffer[4], HDMI_FC_VSDIEEEID0);
+	hdmi_writeb(hdmi, buffer[5], HDMI_FC_VSDIEEEID1);
+	hdmi_writeb(hdmi, buffer[6], HDMI_FC_VSDIEEEID2);
+
+	/* Set HDMI_Video_Format and HDMI_VIC/3D_Structure */
+	hdmi_writeb(hdmi, buffer[7], HDMI_FC_VSDPAYLOAD0);
+	hdmi_writeb(hdmi, buffer[8], HDMI_FC_VSDPAYLOAD1);
+
+	if (frame.s3d_struct >= HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF)
+		hdmi_writeb(hdmi, buffer[9], HDMI_FC_VSDPAYLOAD2);
+
+	/* Packet frame interpolation */
+	hdmi_writeb(hdmi, 1, HDMI_FC_DATAUTO1);
+
+	/* Auto packets per frame and line spacing */
+	hdmi_writeb(hdmi, 0x11, HDMI_FC_DATAUTO2);
+
+	/* Configures the Frame Composer On RDRB mode */
+	hdmi_modb(hdmi, 1 << HDMI_FC_DATAUTO0_VSD_OFFSET,
+		  HDMI_FC_DATAUTO0_VSD_MASK, HDMI_FC_DATAUTO0);
+}
+
 static void hdmi_av_composer(struct dw_hdmi *hdmi,
 			     const struct drm_display_mode *mode)
 {
@@ -1446,6 +1495,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 
 		/* HDMI Initialization Step F - Configure AVI InfoFrame */
 		hdmi_config_AVI(hdmi, mode);
+		hdmi_config_vendor_specific_infoframe(hdmi, mode);
 	} else {
 		dev_dbg(hdmi->dev, "%s DVI mode\n", __func__);
 	}
diff --git a/drivers/gpu/drm/bridge/dw-hdmi.h b/drivers/gpu/drm/bridge/dw-hdmi.h
index 325b0b8..c59f87e 100644
--- a/drivers/gpu/drm/bridge/dw-hdmi.h
+++ b/drivers/gpu/drm/bridge/dw-hdmi.h
@@ -854,6 +854,10 @@ enum {
 	HDMI_FC_DBGFORCE_FORCEAUDIO = 0x10,
 	HDMI_FC_DBGFORCE_FORCEVIDEO = 0x1,
 
+/* FC_DATAUTO0 field values */
+	HDMI_FC_DATAUTO0_VSD_MASK = 0x08,
+	HDMI_FC_DATAUTO0_VSD_OFFSET = 3,
+
 /* PHY_CONF0 field values */
 	HDMI_PHY_CONF0_PDZ_MASK = 0x80,
 	HDMI_PHY_CONF0_PDZ_OFFSET = 7,
-- 
1.9.1
