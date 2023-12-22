Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 282EAC46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmWJA0jrVuEjeOIBPYhEaB3eBM8SgMHfAt99V3txfYE=; b=LHOZewI+xoQo8G
	e8cv8eLmFFZyC1TMTGKLC4iycRGIViUJ5xbqLB5LjAXThN1Vx5jBy8aALjL85k7WhND7dgW+J8+AB
	qo3UXM5jzHac4rf9ytzRnE7t3M4MA1DjcatmYH7zzzsJsDOTengnq+5rBiQwnmxCoc7txTSnrIPGc
	NWRhwrRHJRP+v0iAv6kDW9ej+8OYzEdSrPip76skSpykqKJwiykRNpQrVektTon+WVy0O/QcF2QhK
	jf3qzdamxUkl2OgUkKzuxkCi1JMp/Joe25sgcy+v3ONeikmB02lvrlNBnJZeRMFKCPmUJ5GTIcwDf
	W0ckwdoIUZm6bGMu8eLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjZc-006YIq-1u;
	Fri, 22 Dec 2023 17:44:36 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXh-006WT6-0o;
	Fri, 22 Dec 2023 17:42:40 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-33674f60184so2029593f8f.1;
        Fri, 22 Dec 2023 09:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266956; x=1703871756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nTJLdrH0LrbSbPhi76eSCJAOBnRdB++mitsqsoondcw=;
        b=TWA+t9udwohPZg/0DdIUJg/8vw5Rd6TP/dTYFyXkQUO7NY66/t7CA9S1goFtI5rum+
         IDXmWpSRMMYc31oXYSeY80xvgGY7SAwFMsaBkIUjB7Bqo1XWq28i6mqhBsLvEKjdaKvc
         OVHLOWid4VdDgSzuGdTePXjnUPSeQicDkRDq4WOuqVbmu+ia65Rz2E4lDMjiKf+aPeZc
         rHxK6croeYqek/CCS0VgBP6CcMsUZoUkfhwT3BVY7+waTpBeYxPxApT00oCTJy6nFThb
         F/PT3DfjFWP1qx5SnqEB8uOy4h9Wub/fvy9QjlbVzP5mkcDhZQdvQOAvHWILDekTMMwr
         KALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266956; x=1703871756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nTJLdrH0LrbSbPhi76eSCJAOBnRdB++mitsqsoondcw=;
        b=UJ5Ldq5vYrOg+BT+TNFt7+1JP9Yzo/9gjF7r2E1Z0xdGQ6MxoxvpLZlQENOo/jhVEz
         Vf/ZJM3qEoUb5jIh2f6vnXVknU7DA+aOkVWpZJhCRsieHsysrQU20V6zaX8MQBKIl4Qo
         8Fh9jgfWb3jtCU4g2TJ9TQksBwtv9LR5bJCChY5FLEw8K2cTASlh4FsSunld0O1bcvBW
         mkm6PdZ5j9KfMiypXP2FoUpWae2RY8mFE9eGQeraVEoUD4RKkt1wWZ2LV0MvXvBo5h+M
         DfxpJ0zuXg4EmY7PeryTSAqM+KYxPSFdoFHkk/7eWtG+RSB+/SSvFUQYLhw3k8r3Vf/W
         zdhw==
X-Gm-Message-State: AOJu0YzGb3fIZNgdasUOTYVrMx0o6+cXBlwCaSJL0N3T5VA0Mvl/lulw
	U2VgMldK5DkqVfNfyYT+Fw==
X-Google-Smtp-Source: AGHT+IH/eqhhQrbQNb9jDPPXogkNUwK+iKCCinjmR4Spd1WlqPNxfwU5vXPt4aNHH23pnHO1bk0eYA==
X-Received: by 2002:adf:b318:0:b0:336:7a35:4115 with SMTP id j24-20020adfb318000000b003367a354115mr868279wrd.0.1703266955745;
        Fri, 22 Dec 2023 09:42:35 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:35 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 19/29] drm/rockchip: inno_hdmi: Subclass connector state
Date: Fri, 22 Dec 2023 18:42:10 +0100
Message-ID: <20231222174220.55249-20-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094237_422208_825CCADF 
X-CRM114-Status: GOOD (  18.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The data which is currently hold in hdmi_data should not be part of device
itself but of the connector state.
Introduce a connector state subclass and move the data from hdmi_data in
there.

Suggested-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - new patch

changes in v3:
 - added missing customizations of reset and atomic_destroy_state connector hooks
 - moved inno_conn_state member assignments to atomic_check

changes in v4:
 - added missing state destroy in reset hook

 drivers/gpu/drm/rockchip/inno_hdmi.c | 117 ++++++++++++++++++++-------
 1 file changed, 90 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index c306db90832a..e43fce968310 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -26,11 +26,6 @@
 
 #include "inno_hdmi.h"
 
-struct hdmi_data_info {
-	unsigned int enc_out_format;
-	unsigned int colorimetry;
-};
-
 struct inno_hdmi_i2c {
 	struct i2c_adapter adap;
 
@@ -52,8 +47,12 @@ struct inno_hdmi {
 
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;
+};
 
-	struct hdmi_data_info	hdmi_data;
+struct inno_hdmi_connector_state {
+	struct drm_connector_state	base;
+	unsigned int			enc_out_format;
+	unsigned int			colorimetry;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -68,6 +67,9 @@ static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
 	return container_of(connector, struct inno_hdmi, connector);
 }
 
+#define to_inno_hdmi_conn_state(conn_state) \
+	container_of_const(conn_state, struct inno_hdmi_connector_state, base)
+
 enum {
 	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
 	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
@@ -246,6 +248,10 @@ static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
 static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 				      struct drm_display_mode *mode)
 {
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 	union hdmi_infoframe frame;
 	int rc;
 
@@ -257,9 +263,9 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 		return rc;
 	}
 
-	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
+	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444)
 		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
-	else if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV422)
+	else if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV422)
 		frame.avi.colorspace = HDMI_COLORSPACE_YUV422;
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
@@ -269,7 +275,10 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 {
-	struct hdmi_data_info *data = &hdmi->hdmi_data;
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 	int c0_c2_change = 0;
 	int csc_enable = 0;
 	int csc_mode = 0;
@@ -287,7 +296,7 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		v_VIDEO_INPUT_CSP(0);
 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
 
-	if (data->enc_out_format == HDMI_COLORSPACE_RGB) {
+	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_RGB) {
 		value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
 		hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
 
@@ -298,15 +307,15 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		return 0;
 	}
 
-	if (data->colorimetry == HDMI_COLORIMETRY_ITU_601) {
-		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
+	if (inno_conn_state->colorimetry == HDMI_COLORIMETRY_ITU_601) {
+		if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
 		}
 	} else {
-		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
+		if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
@@ -383,17 +392,6 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-	u8 vic = drm_match_cea_mode(mode);
-
-	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
-
-	if (vic == 6 || vic == 7 ||
-	    vic == 21 || vic == 22 ||
-	    vic == 2 || vic == 3 ||
-	    vic == 17 || vic == 18)
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
-	else
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
 
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
@@ -458,10 +456,24 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_connector_state *conn_state)
 {
 	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
+	u8 vic = drm_match_cea_mode(mode);
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 
 	s->output_mode = ROCKCHIP_OUT_MODE_P888;
 	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
 
+	if (vic == 6 || vic == 7 ||
+	    vic == 21 || vic == 22 ||
+	    vic == 2 || vic == 3 ||
+	    vic == 17 || vic == 18)
+		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_601;
+	else
+		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
+
+	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
+
 	return 0;
 }
 
@@ -519,13 +531,63 @@ static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 	drm_connector_cleanup(connector);
 }
 
+static void
+inno_hdmi_connector_destroy_state(struct drm_connector *connector,
+				  struct drm_connector_state *state)
+{
+	struct inno_hdmi_connector_state *inno_conn_state =
+						to_inno_hdmi_conn_state(state);
+
+	__drm_atomic_helper_connector_destroy_state(&inno_conn_state->base);
+	kfree(inno_conn_state);
+}
+
+static void inno_hdmi_connector_reset(struct drm_connector *connector)
+{
+	struct inno_hdmi_connector_state *inno_conn_state;
+
+	if (connector->state) {
+		inno_hdmi_connector_destroy_state(connector, connector->state);
+		connector->state = NULL;
+	}
+
+	inno_conn_state = kzalloc(sizeof(*inno_conn_state), GFP_KERNEL);
+	if (!inno_conn_state)
+		return;
+
+	__drm_atomic_helper_connector_reset(connector, &inno_conn_state->base);
+
+	inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
+	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
+}
+
+static struct drm_connector_state *
+inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
+{
+	struct inno_hdmi_connector_state *inno_conn_state;
+
+	if (WARN_ON(!connector->state))
+		return NULL;
+
+	inno_conn_state = kmemdup(to_inno_hdmi_conn_state(connector->state),
+				  sizeof(*inno_conn_state), GFP_KERNEL);
+
+	if (!inno_conn_state)
+		return NULL;
+
+	__drm_atomic_helper_connector_duplicate_state(connector,
+						      &inno_conn_state->base);
+
+	return &inno_conn_state->base;
+}
+
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
 	.fill_modes = inno_hdmi_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.reset = inno_hdmi_connector_reset,
+	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
+	.atomic_destroy_state = inno_hdmi_connector_destroy_state,
 };
 
 static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
