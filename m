Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF037C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBLP04xbmMwhBM8rU2UxNRCRjPZpZMzMQ2TVDOMx9j4=; b=vNGgi8a2lEAonq
	+HeOK/SH6LX3vNdwNjtjoqoQyPYmU/4FczoU/u+GWo4j2y5QW5kW1MpCpz2PKoxoeg5AIw6GJECW6
	dm/Ux7WF0gomaQdjJ/YGf28PJ8iducB07jwMnn/HW817M9RzvrPBr435/aPCwDY0OIhTJ2bI+9gI8
	OaAUt3bsExDGo8YX9OEQqELICWbgoDxCteC4TK68TiIRZwQpx+YEiq+z8LuIssFq+0AYibBdjxSn9
	8ULFjbeVTgdFIr5ERsORWvuI/sBdEgTE52FDb22f5YxJFZO1jJ6QZEonroUlSAOymOlC6M7cP4wK2
	jpbYRi6B+3EiXgb+OsdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXH-006Lip-21;
	Sat, 16 Dec 2023 16:29:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVb-006Jwu-2U;
	Sat, 16 Dec 2023 16:27:25 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a2331e7058aso33486866b.2;
        Sat, 16 Dec 2023 08:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744039; x=1703348839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/eFbXWfaMM0I74IrKyTPfTKiYx+jg35hR0AyiA/w9A=;
        b=YY+agYe0JqVhkXKsbq4Q0uWH12Lj5IaKcL2aR7U3abHBkgKcpaSDeA0/PWqCA0pZH2
         /Bn37pApO9SNKJrxYC3jb54t4KAYmtVjF5exn9CAq4T56cjjzHC2qDgjjb5v7luiJ2t/
         J2XMpwPvf0gcmlxpZoW0ZoQFZxu7yje8fCGLewRaauMtymMl4SAbK8JSLmBH2Eakz5vN
         lvrcjywBbtZkKcOUwxbS6ZlCh4pOB/rRed/CUmzGiztQQ+31pa6uaI8TRvm1MIj8JAfT
         JyWMyHOQeu6/rxPxkyMyu1oDJwgYTQinCyk22QDY22lS0ZBPLMgBrQnI1pwysQlfEd4M
         +t3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744039; x=1703348839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R/eFbXWfaMM0I74IrKyTPfTKiYx+jg35hR0AyiA/w9A=;
        b=d0znh1JHdD/PRnAJtzCp0dxcyKbF/JmjEn77s4PhII69fIoOk1K6M7DRgemRF8xo67
         KJkHu5V+C7aWUqgShuIzNunGJwtp1OFcY/oeRE9IPTo9o+IarrWxdmXeOdOJ54ZdSWg4
         jlaKxe0AXEfzAuuCXbSoberhtIO54cH4qo6Wm828iImn8k+n5KaK7fp5mcASahUPuxIE
         jI4vOxMsSyWZkOS1L+UQK7fDuxL4D0ZtHrxyDyxD+CMPoVmgID5XT1IPu8x8u72H8M1i
         m4BrpOqIR6wjSrG0qIl6b8UvakrTLQ+Eqoqe743QaMqGCh7XWDUIkDK2jRUsMxxpq0db
         fL1A==
X-Gm-Message-State: AOJu0YxPU4wvJqXw64DnInx5L+dhJXfMnowapBHi9lAb0zGz9/KmMa9G
	fQvJ/Eou27eLezgRNUgI1g==
X-Google-Smtp-Source: AGHT+IFcXZmVFLxYHlvqMbP/xbdnhMTM7dR1bMRRMLYfTq4p6bSRSS6zHWkOWzhS8av038yeCD6ZRw==
X-Received: by 2002:a17:907:cbc8:b0:a19:a1ba:bae1 with SMTP id vk8-20020a170907cbc800b00a19a1babae1mr4432738ejc.135.1702744039030;
        Sat, 16 Dec 2023 08:27:19 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:18 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 18/27] drm/rockchip: inno_hdmi: Subclass connector state
Date: Sat, 16 Dec 2023 17:26:29 +0100
Message-ID: <20231216162639.125215-19-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082723_829720_3976B4F9 
X-CRM114-Status: GOOD (  17.32  )
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

 drivers/gpu/drm/rockchip/inno_hdmi.c | 67 +++++++++++++++++++++-------
 1 file changed, 50 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 62c7e2275246..f9bfae1e97a2 100644
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
 
@@ -54,8 +49,12 @@ struct inno_hdmi {
 	struct i2c_adapter *ddc;
 
 	unsigned int tmds_rate;
+};
 
-	struct hdmi_data_info	hdmi_data;
+struct inno_hdmi_connector_state {
+	struct drm_connector_state	base;
+	unsigned int			enc_out_format;
+	unsigned int			colorimetry;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -70,6 +69,9 @@ static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
 	return container_of(connector, struct inno_hdmi, connector);
 }
 
+#define to_inno_hdmi_conn_state(_state) \
+	container_of_const(_state, struct inno_hdmi_connector_state, base)
+
 enum {
 	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
 	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
@@ -248,6 +250,10 @@ static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
 static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 				      struct drm_display_mode *mode)
 {
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 	union hdmi_infoframe frame;
 	int rc;
 
@@ -259,9 +265,9 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
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
@@ -271,7 +277,10 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 
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
@@ -289,7 +298,7 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		v_VIDEO_INPUT_CSP(0);
 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
 
-	if (data->enc_out_format == HDMI_COLORSPACE_RGB) {
+	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_RGB) {
 		value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
 		hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
 
@@ -300,15 +309,15 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
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
@@ -386,16 +395,20 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
 	u8 vic = drm_match_cea_mode(mode);
+	struct drm_connector *connector = &hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi_connector_state *inno_conn_state =
+					to_inno_hdmi_conn_state(conn_state);
 
-	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
+	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
 
 	if (vic == 6 || vic == 7 ||
 	    vic == 21 || vic == 22 ||
 	    vic == 2 || vic == 3 ||
 	    vic == 17 || vic == 18)
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
+		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_601;
 	else
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
+		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
 
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
@@ -522,12 +535,32 @@ static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 	drm_connector_cleanup(connector);
 }
 
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
 	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
