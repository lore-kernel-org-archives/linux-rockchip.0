Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBFEE7717B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 10:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BESmiaNLBWCF3b97JiJkjMOoOp16e5Y045AmIgu233o=; b=UdV+JnwJsw7fUH
	xpKKrvCwqRlv4gtGWJaua1E0geVYdwSlOC+qEE3U0kDMxQznogUXfXIn46gZ+ch5CeSWYzlicWdju
	JUfvUHtG5GRsg0BuNzN0WbAsNsA41Fr5BTsFmItheTuiE3/eqjHrq6LENe18aOpJrt6xqp41KzfbH
	C6Jx7BY69eariihs6YkcV8v5sh/J6bBSThy0zmMyW9NCWyevtD/V+oMNEIFfhm0jQwY/iNWgkX5TK
	WIjXGJnP/0px4o4+xMoGOZ3xVoWSbi8FHcFzuonVW6LFSvi5wshkJR4xB64v0rRVQelDQxZPKTmIQ
	gvx1Sgfos9Rd7AIQWz6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVhL-00000001K1I-0hqM;
	Fri, 06 Dec 2024 10:36:35 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVOJ-00000001EJY-27dA
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Dec 2024 10:16:57 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-53df80eeeedso1967685e87.2
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Dec 2024 02:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733480214; x=1734085014; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=23NpFOv9+trBwXgoTdLMEtZogD9sP0WWw4oqP5QnN+o=;
        b=TR5IpLX7QGc6yFv4M5AateCj8RnC99PDOi1WCseqVrdH9+FRWqxyk8lj2jGkV3V5Ze
         2IC6+ohc5CtJANffMZDSZMx6JZMD4kHPLYV3l48d70sVjMLtwxgwgXR4EtXouCUTFZVE
         MMe19INi0bTsnccQ5yWxt/ZPQCBQUY3k0EdR7s4zcqSeptKSyguIiTV4u17MbmqMOvFW
         qwP6lkV3J4zc/tM97xx2YLtl7h9aS7vlrRHrBqA6CIX2Da04h1AbG77e8dlqdstHqLta
         Uq4xVJJZ7oy2Xp7rhRRGjprA1EdF/mxeFGe/mudHmIrmXXLWgNfqxHsSQB8nhPfCH52e
         /27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733480214; x=1734085014;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23NpFOv9+trBwXgoTdLMEtZogD9sP0WWw4oqP5QnN+o=;
        b=W6Jr+BCq0BxJREKda6aCBcgfLjz/OXJp72y+Pzxep83SAlzL5bUgbYZ9GzDje5jBSG
         y73nHaP2P5hL0u8Ih3rbQK2DQFX0UV82LydRiJRi24muu+DuFc6gGT7RQyKLTPHYJG+/
         ID0ihLnMVp9IU5LIEnl4gYYv0vEZQIgc1yPagc5+2FsDtE5dYvIxQmLKRVty/9eBPYVS
         Y3ZTSq3WqudqFVFgH2iifERYfNXVj17BEGAe/vzzMMHvF89Hi4L+gK7ZwvzD+6kTXgQG
         gO6df0EFCGtBpzxEqeJAfGdwpY3AK211BQT0+uD1oGA3O73byGdLh/6cn4oMOPXCqDDa
         6sqg==
X-Forwarded-Encrypted: i=1; AJvYcCVNcgbGBAGIwgFHlXe2QSRAM2tq0ZYqDr5ImI03Pj2RhBaJgnOiSdprIY1IxAQIVZJJQIgPMW+Qi2UrW2dclQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzF0z4XX0Fe90JzFT19+7fYFIYcSIuSzhGA0a5ZdajxX55TFG1+
	3kRJLiktKsC1kj8bYNMnC4x2drmW3cIjv79zMjz4Q8FM5uEAhOULJ6yz4+KKZB8=
X-Gm-Gg: ASbGncu5uXdKNrLNeOQL6Ty5gYpsKlqvs+4T+fuGdYPAH5ayhiYzocaHxmrf5hshfrH
	0meav4vEwNqYav/z8flWroXBdQHFLQK5QyswMdGBVRGzz/qYWzBO0TfbFLZZto5DVu4xmWK1Nil
	SUgHJFwRgsEAhJNrxyhMnsAEcp5CA6rsygh16IRBtTVz45XzdtWeEN5yAWaV66YCQNiZiZQ1pfY
	8WCscr9/Rfit9pxoWCfXqFEDQMUE2NcL7frU6H2G2gXKc+qCjYQGxajxw==
X-Google-Smtp-Source: AGHT+IHYoxoM7GYC/RXRXwsY9aIS+FgvCMwE8/kYFPGH+zE3IIcRoYFa8DmKuD5mvJKqJ85kxF63Tw==
X-Received: by 2002:a05:6512:e84:b0:539:e9f8:d45d with SMTP id 2adb3069b0e04-53e2c2ede3fmr750213e87.52.1733480213923;
        Fri, 06 Dec 2024 02:16:53 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e2294738fsm462355e87.52.2024.12.06.02.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 02:16:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 06 Dec 2024 12:15:58 +0200
Subject: [PATCH v6 04/10] drm/bridge: connector: add support for HDMI codec
 framework
MIME-Version: 1.0
Message-Id: <20241206-drm-bridge-hdmi-connector-v6-4-50dc145a9c06@linaro.org>
References: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
In-Reply-To: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7190;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=b+kD+GGfMX4IeYm4/zVmi8YnnM9D7BF1gQ9GNsjSPBU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ3rQec7WHOaVG4Q3BLwzEHlil613kO2lc1aUw16pyxtU7
 96sSXTsZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEjkax/6+3SdXnWqWzq1hQ
 r2rLD+UIs9eMS/c/PuO3N3SfuY3x4RcbVeYuuXszdMfyJwk98t/6+rvjloW/OqEvU1OgnJ6j7Gz
 csflks5z+VNF+AfnZ2X+u3rRwnr1ZQzLc9e7ve6+uCEhu2j97tzPTk7DzsZ1qd8S3e7FeVH29Yo
 u8aG20ZHx3Vvtp3zeCp1IqvS9zia7VuXwyUEdT40NpcbhSb0We/iIxtsQQi47KybYVu84vmpC5S
 qjSRebQAxFlG8vmeG737gPv2Pc9njrv1c8iRjblM4/v7UjztOFdcFWg9/36C6cLv0axPrQ8L7Et
 5kr7n7qwsvVhIUs55JLeCCt0Cdb5Kh+SiF3Y+/nw47K7AA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_021655_618909_911B0FCF 
X-CRM114-Status: GOOD (  19.44  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 100 ++++++++++++++++++++++++-
 include/drm/drm_bridge.h                       |  38 ++++++++++
 2 files changed, 134 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 512ced87ea18c74e182a558a686ddd83de891814..4fa1bb73d430d02d5b79a1a184c203ec9e9c66e7 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -21,6 +21,8 @@
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/display/drm_hdmi_state_helper.h>
 
+#include <sound/hdmi-codec.h>
+
 /**
  * DOC: overview
  *
@@ -368,10 +370,80 @@ static int drm_bridge_connector_write_infoframe(struct drm_connector *connector,
 	return bridge->funcs->hdmi_write_infoframe(bridge, type, buffer, len);
 }
 
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
+	if (bridge->funcs->hdmi_codec_audio_startup)
+		return bridge->funcs->hdmi_codec_audio_startup(connector, bridge);
+	else
+		return 0;
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
 static const struct drm_connector_hdmi_funcs drm_bridge_connector_hdmi_funcs = {
 	.tmds_char_rate_valid = drm_bridge_connector_tmds_char_rate_valid,
 	.clear_infoframe = drm_bridge_connector_clear_infoframe,
 	.write_infoframe = drm_bridge_connector_write_infoframe,
+	.codec_funcs = &drm_bridge_connector_hdmi_codec_funcs,
 };
 
 /* -----------------------------------------------------------------------------
@@ -473,7 +545,9 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 	if (connector_type == DRM_MODE_CONNECTOR_Unknown)
 		return ERR_PTR(-EINVAL);
 
-	if (bridge_connector->bridge_hdmi)
+	if (bridge_connector->bridge_hdmi) {
+		bridge = bridge_connector->bridge_hdmi;
+
 		ret = drmm_connector_hdmi_init(drm, connector,
 					       bridge_connector->bridge_hdmi->vendor,
 					       bridge_connector->bridge_hdmi->product,
@@ -482,12 +556,30 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
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
+			ret = drm_connector_hdmi_codec_init(connector,
+							    bridge->hdmi_codec_dev,
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
