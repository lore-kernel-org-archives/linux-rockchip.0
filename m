Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A06E77184
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 00:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lNkExVyUFwsP8kWV5EyZgDsiv2ajITf0+wG1VfYSbA=; b=vqNig1QuJGYtfu
	f7HIXGDOGeABAr3WLx1L3Q7vbgW/yKEMWx3D68SchzhM6gNf4PGLvkY6+bR5GmZj438MATrHQw940
	b1bySSyO/ARGXHhOzXGdisFpht9aqZfKeUN0Na3qDwGNTYSc8DiQKjUDqir5/mLBDkNqnu9ZghuA6
	jNcUgbS6vrajYg/yWr0ywnCVeSioGtifApTg74lCugtyUL1nqeQJavcZ9TByfIEegp3A8bBjvQvav
	Asj5EwtMGbhUON7xpKiW4dV2UystpNJH3eTdhWcgo4aJFqs8WerxTowie+ylzpOCy7uSPXywA1k7m
	w7pD8xk49WEwCe/tjUCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLhs-0000000Bm9S-2GTx;
	Tue, 17 Dec 2024 00:45:00 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLdg-0000000Bkgb-0mOx
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 00:40:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-53df6322ea7so6520070e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 16:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734396039; x=1735000839; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9/uHPXK/8E1yESmbWnhFymql7tY9M8diwZIDgU0aHhE=;
        b=mDS7lVpJ/mHOfq8QO4ag0Ce9kEYTiha6DDFCCXeCwPgORVHopbTRon+DIkECB8A+tp
         FPhwUEnYyvp5QPNpjqidHLogkltAHHKFUbvWJifLgSNMk+vdQrLpvGrG19rYiVA0DWuE
         TS82ngHMJM0cgV+K47ebG5Kd4R+/5IDZkdeuwiToNoZ0CAGOn52pLw6qLEx45MTcQwCC
         WqkXhEVTB6ube/3FmnNLbwxw5WqHE/K4wNkE8LUzG9bSEnifogkJBQ07S7GFuWejRxoX
         5RmbkImfUvkCvSb6/eQbvp/SrkkmsY+8p7oIAeO3m6ARAEi9TP7Kr/cC1+FHXHFeaE1b
         sjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734396039; x=1735000839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9/uHPXK/8E1yESmbWnhFymql7tY9M8diwZIDgU0aHhE=;
        b=cYnldDHfmdlgKZ96JDVsUm/TCYDzy6GUVsD6asQnPynchcgS1Umtz5Fva4HF+h90QJ
         9P3pAyHHKQZj6oiVrI+R/ECse2uEvysZV/xthnZsCneD/Qd8Gn7hUc6SQCeXc/dHq6sI
         vJf98pgbhHxhOSSwFYTP/gj/6LVfXZ7oHEdVG5kddfPTKxsPZQAzhjGZwl7HG6wPkzEH
         PoYzV6xwv6FyIk6avRrKr6kZN9S88GjdSsi1HJhhmyCaiHlkecnU11mZNkz0h55ncqo9
         RRAgCSsJO9b8JWXQhWePRhMVRIbYxE2Di9zV/sTu9uPf/0TSN8ZdGbRF/k+zFRgRs4va
         Rmuw==
X-Forwarded-Encrypted: i=1; AJvYcCXmsY8NHYqeNi8rfC7Qvke4m3bUb+5YYytQZT0rzBMb8ZDgqtwKsiL1Wji8EeRQrye6k7GfAH+wkDkq9scGlA==@lists.infradead.org
X-Gm-Message-State: AOJu0YychAEhVvkhhUw+GKtbC5aeugf0kB64bs41u9ZlRWPKEEojyaM2
	91uqBD0x3OwzAFsaI9Dw8Gk0G7YTHknj8c34eRsSKC7GqAU9Ud7o5dRPrA0bKIg=
X-Gm-Gg: ASbGncvGo0S2ZqLllpp+t49eTtXzdaZxJ8tCmgnbSxkmgF4OF54VMt4Y0l7HMmiir3C
	g1bHnV8Me7gzSrTFAQICHo700WQyDmvvXw5ifhkqdlaE6p5VGdmfFDxPycjtXFPTCjr3c7WsoUJ
	t+xffrVJQlCLk65VYpQS+vN8hfvdNSfRGyLUSW6yV8b3Q1vi0ASBz0NS1aPgxgPdgA2PFlx/bJc
	t/tnFs68nDUUH9GqHIjjCfkXzHLpUXAfQVOnJXs5m6p9EXESgTl+Rmb76A8pAP6
X-Google-Smtp-Source: AGHT+IFYrXFMGnhjQ3bQDb7oI+kO+vAQWTCO7iUyJKhslsY9vA02Ya9MFO24iaLirmiV7N9WURYCMA==
X-Received: by 2002:a05:6512:3b8d:b0:53e:395c:6887 with SMTP id 2adb3069b0e04-5408ad7f875mr4185848e87.2.1734396038601;
        Mon, 16 Dec 2024 16:40:38 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9ab2sm1009122e87.74.2024.12.16.16.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 16:40:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 17 Dec 2024 02:40:26 +0200
Subject: [PATCH v7 04/10] drm/bridge: connector: add support for HDMI codec
 framework
MIME-Version: 1.0
Message-Id: <20241217-drm-bridge-hdmi-connector-v7-4-cb9df2b6a515@linaro.org>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
In-Reply-To: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6797;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=oRt1uc2dMf9+pijMkP+eCrRG9ChsIEKJSkVSymmIkws=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ3rCicop/Y/Omi8IsuboCzqw982my1pzWO9vL/VREtwjd
 6NhZ1BGJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmIi/A/j/KRUnowBerA/qn
 TIV+LpBlndnK1Jdgr+gQ9KjfS81i2sqLvbxfNWo1t1ouzmWf0lTHfLo+dPsvpyC73qXNjfUyzEu
 D9hzj4Oy9nKUwRbnNLjJkn1n6Gz7zdl19CS6W20XK8vvjKzUnLm9sfzbjQEWF9sSzGcKM/28fZg
 l6V/Jvnx/z+cYL7BVzq3PlU11r7pya7K5i9mhHNtcX/Yx3R7t2Vjqnf0/y/P1k7+TqWsWy39+DO
 6zYZIKm7J12T/7DNS4e/27ThJazLt8580LfHZdiPCf/ovp2L8vl9RoSZRHfJmjsq2tWe6yyyODm
 qUV2wS1JMyxs5OZpdQV/N8r/1m13bVrz9q1MU43O1YkAAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_164040_265265_69F0F6C9 
X-CRM114-Status: GOOD (  19.16  )
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

Add necessary glue code to be able to use new HDMI codec framework from
the DRM bridge drivers. The drm_bridge implements a limited set of the
hdmi_codec_ops interface, with the functions accepting both
drm_connector and drm_bridge instead of just a generic void pointer.

This framework is integrated with the DRM HDMI Connector framework, but
can also be used for DisplayPort connectors.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 98 ++++++++++++++++++++++++--
 include/drm/drm_bridge.h                       | 38 ++++++++++
 2 files changed, 132 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 512ced87ea18c74e182a558a686ddd83de891814..be46d2e7cb5cec262ca5dd6f42f8f31b0187a0f7 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -374,6 +374,75 @@ static const struct drm_connector_hdmi_funcs drm_bridge_connector_hdmi_funcs = {
 	.write_infoframe = drm_bridge_connector_write_infoframe,
 };
 
+static int drm_bridge_connector_audio_startup(struct drm_connector *connector)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *bridge;
+
+	bridge = bridge_connector->bridge_hdmi;
+	if (!bridge)
+		return -EINVAL;
+
+	if (!bridge->funcs->hdmi_codec_audio_startup)
+		return 0;
+
+	return bridge->funcs->hdmi_codec_audio_startup(connector, bridge);
+}
+
+static int drm_bridge_connector_prepare(struct drm_connector *connector,
+					struct hdmi_codec_daifmt *fmt,
+					struct hdmi_codec_params *hparms)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *bridge;
+
+	bridge = bridge_connector->bridge_hdmi;
+	if (!bridge)
+		return -EINVAL;
+
+	return bridge->funcs->hdmi_codec_prepare(connector, bridge, fmt, hparms);
+}
+
+static void drm_bridge_connector_audio_shutdown(struct drm_connector *connector)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *bridge;
+
+	bridge = bridge_connector->bridge_hdmi;
+	if (!bridge)
+		return;
+
+	bridge->funcs->hdmi_codec_audio_shutdown(connector, bridge);
+}
+
+static int drm_bridge_connector_mute_stream(struct drm_connector *connector,
+					    bool enable, int direction)
+{
+	struct drm_bridge_connector *bridge_connector =
+		to_drm_bridge_connector(connector);
+	struct drm_bridge *bridge;
+
+	bridge = bridge_connector->bridge_hdmi;
+	if (!bridge)
+		return -EINVAL;
+
+	if (bridge->funcs->hdmi_codec_mute_stream)
+		return bridge->funcs->hdmi_codec_mute_stream(connector, bridge,
+							     enable, direction);
+	else
+		return -ENOTSUPP;
+}
+
+static const struct drm_connector_hdmi_codec_funcs drm_bridge_connector_hdmi_codec_funcs = {
+	.audio_startup = drm_bridge_connector_audio_startup,
+	.prepare = drm_bridge_connector_prepare,
+	.audio_shutdown = drm_bridge_connector_audio_shutdown,
+	.mute_stream = drm_bridge_connector_mute_stream,
+};
+
 /* -----------------------------------------------------------------------------
  * Bridge Connector Initialisation
  */
@@ -473,7 +542,9 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 	if (connector_type == DRM_MODE_CONNECTOR_Unknown)
 		return ERR_PTR(-EINVAL);
 
-	if (bridge_connector->bridge_hdmi)
+	if (bridge_connector->bridge_hdmi) {
+		bridge = bridge_connector->bridge_hdmi;
+
 		ret = drmm_connector_hdmi_init(drm, connector,
 					       bridge_connector->bridge_hdmi->vendor,
 					       bridge_connector->bridge_hdmi->product,
@@ -482,12 +553,31 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 					       connector_type, ddc,
 					       supported_formats,
 					       max_bpc);
-	else
+		if (ret)
+			return ERR_PTR(ret);
+
+		if (bridge->hdmi_codec_max_i2s_playback_channels ||
+		    bridge->hdmi_codec_spdif_playback) {
+			if (!bridge->funcs->hdmi_codec_prepare ||
+			    !bridge->funcs->hdmi_codec_audio_shutdown)
+				return ERR_PTR(-EINVAL);
+
+			ret = drm_connector_hdmi_audio_init(connector,
+							    bridge->hdmi_codec_dev,
+							    &drm_bridge_connector_hdmi_codec_funcs,
+							    bridge->hdmi_codec_max_i2s_playback_channels,
+							    bridge->hdmi_codec_spdif_playback,
+							    bridge->hdmi_codec_dai_port);
+			if (ret)
+				return ERR_PTR(ret);
+		}
+	} else {
 		ret = drmm_connector_init(drm, connector,
 					  &drm_bridge_connector_funcs,
 					  connector_type, ddc);
-	if (ret)
-		return ERR_PTR(ret);
+		if (ret)
+			return ERR_PTR(ret);
+	}
 
 	drm_connector_helper_add(connector, &drm_bridge_connector_helper_funcs);
 
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index e8d735b7f6a480468c88287e2517b387ceec0f22..fd7ad7315a8bfda90f02b0704c33ba0e356899fb 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -41,6 +41,8 @@ struct drm_display_info;
 struct drm_minor;
 struct drm_panel;
 struct edid;
+struct hdmi_codec_daifmt;
+struct hdmi_codec_params;
 struct i2c_adapter;
 
 /**
@@ -676,6 +678,21 @@ struct drm_bridge_funcs {
 				    enum hdmi_infoframe_type type,
 				    const u8 *buffer, size_t len);
 
+	int (*hdmi_codec_audio_startup)(struct drm_connector *connector,
+					struct drm_bridge *bridge);
+
+	int (*hdmi_codec_prepare)(struct drm_connector *connector,
+				  struct drm_bridge *bridge,
+				  struct hdmi_codec_daifmt *fmt,
+				  struct hdmi_codec_params *hparms);
+
+	void (*hdmi_codec_audio_shutdown)(struct drm_connector *connector,
+					  struct drm_bridge *bridge);
+
+	int (*hdmi_codec_mute_stream)(struct drm_connector *connector,
+				      struct drm_bridge *bridge,
+				      bool enable, int direction);
+
 	/**
 	 * @debugfs_init:
 	 *
@@ -859,6 +876,27 @@ struct drm_bridge {
 	 * @DRM_BRIDGE_OP_HDMI is set.
 	 */
 	unsigned int max_bpc;
+
+	/**
+	 * @hdmi_codec_dev: device to be used as a parent for the HDMI Codec
+	 */
+	struct device *hdmi_codec_dev;
+
+	/**
+	 * @hdmi_codec_max_i2s_playback_channels: maximum number of playback
+	 * I2S channels for the HDMI codec
+	 */
+	int hdmi_codec_max_i2s_playback_channels;
+
+	/**
+	 * @hdmi_codec_spdif_playback: set if HDMI codec has S/PDIF playback port
+	 */
+	unsigned int hdmi_codec_spdif_playback : 1;
+
+	/**
+	 * @hdmi_codec_dai_port: sound DAI port, -1 if it is not enabled
+	 */
+	int hdmi_codec_dai_port;
 };
 
 static inline struct drm_bridge *

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
