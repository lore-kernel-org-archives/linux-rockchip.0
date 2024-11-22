Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAE9EE65D0D
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 00:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0narykbLtMPYWaWmS43ROCrytton2TWVDG7dcaunj0=; b=goF2kVla6yv8Si
	hbdgymTlToqh2OADJeEcFHqyWw+oUMY/QPgb3eLUGmRzLcwvwff/ErT32IdORdLeFE6VdiRkAEIp+
	Km048KrcvcpXpMkKnHPpAKAlxGhveSQGhuGRr8NsoZ/77AJYzufPpsdUmTQ9L9MugGJtx0j2LGfZL
	2ESR/57o5tfX1xb6Cc1wqG+vXatq1SXaUl/ZyIgSnrIjDDhh/llgdXs/s6wj0mvPOSg+zqqtMiYGf
	S6C3r71rTI36Z9OFr+cIWVocayRQthu/WXvPEtjOEIDk4k3ftx+LjBZSUCj6DupKXkI23Y4CAZM9L
	5ZSJakAbeXjQum2JL0QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEHpq-00000001Fwe-1dyS;
	Fri, 22 Nov 2024 00:47:46 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEHpo-00000001Fur-064I
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Nov 2024 00:47:45 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-539e4b7409fso1631890e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2024 16:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732236462; x=1732841262; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bJnQ0tRphnuqXv8JlNdv1AMzWLMUZZkvEPXzsxnLu/s=;
        b=Oiev5LmJxd/WNMZKF5C8EutfJwDTBZqBJ1YM619lPTqcMGrz31+k5oppj4zqn5/HA8
         69bMWTO85BJQtXtvBIzDOpC089zlVieOmWN+zE2LrG2Ugb8DvmEwgs+xtsSy8KfWKsKm
         anmGQ7E57wstPn94mKFOkz2+PLSIKScEbMykMDOnhKcQ7JKRiQJUA3Y6BxMB2vy41koO
         vfEm5hxWUKlC2J3u0APQ7gCwhn9U9ET78AoAU1j/XgTA2O/FJk1/Cv0d0Dt7Bhkldm98
         7TONvsWT0JCGa31Wpzfhqu38CC+QGf2GatXLC0+wkZ3wspN4gQ7dKEHeVXhUvJVxaixX
         TpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732236462; x=1732841262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bJnQ0tRphnuqXv8JlNdv1AMzWLMUZZkvEPXzsxnLu/s=;
        b=qmuD9i5r6ktJpgGsdWZltufyrcdRfsQ6XPUOwWZ1UNtMBwQFUIyQWa+Kr10bGZhYA0
         cgiXIrYjzgcyZDkSNHriIssdsrlfk5sHsPQz3ZUZymjTWE4B1wNYkyYXLtFPtVHgXfnc
         mugAc9ihK0hJf1V1/HPAb9f6gulwleibow9bFoOUyVuU8aYswNey6hsRWvkParj16dTh
         iN/uDNzWA36MeRkr7FrLJP56R3es1EwrC8B2DJOrbJ1wkIQEx+eQJ/8cjfyF7y/XlbOC
         W3uRUeAZMIpBAyc1AE1uWnmjax3woipRn3TfqCcrNR6G2ejow5ofk4sYVlG16diNxi76
         bblw==
X-Forwarded-Encrypted: i=1; AJvYcCXuRNOucwpnUlBohYwwTD2J1dbDIgv0dEY9LlPwkjuooU3WV13hxe+XSg3MEjNQL5qC2D1bj5hV/xBkHqFK5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkwtOx20B1lGUbnYtNJwCprQqc1dIFWrsXA/sfiqJ407QpacsH
	u0h+OxqxpG6NjlvWDKXANZ4MtR0cumXM/sAcG1V9mzkTesBEyQDtszIzAcK/XHc=
X-Gm-Gg: ASbGncu7tH3NZ3277uehNyqTrx+/iQzDqe/W9C5/LdMvDwsW1ZXtBjhxdOuaqKNuFKc
	X6y2WmPl156d3pctZxoCQMopbqBDaIQyAEyH7SgzIfCVCuw8XtL6vsX1dcj7r0FRacCec6VzRX9
	N2c+3iBr0S/e102yROxj5Fn3b9f0Lcie/TagiRG/ewpCH6qxdhSNUzqfItLeLnWtE2oUKHOd8jG
	6AAP+bX9XJHpXFwzdCYuPASoOSAsjYeB6LOoxFTV1u6N6ToFC8aMBpmnQ==
X-Google-Smtp-Source: AGHT+IG/8gcw9tO0mI/52yh8VIeaAAyZzDyqsI74Djucy9hy39QFmFazcqdbIrJ2pfZcz+Sl5JhPdQ==
X-Received: by 2002:a05:6512:31d1:b0:53d:d0a1:f544 with SMTP id 2adb3069b0e04-53dd0a1f58bmr945032e87.14.1732236462208;
        Thu, 21 Nov 2024 16:47:42 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa5375caesm1083071fa.85.2024.11.21.16.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 16:47:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Nov 2024 02:47:31 +0200
Subject: [PATCH v4 1/7] ASoC: hdmi-codec: pass data to get_dai_id too
MIME-Version: 1.0
Message-Id: <20241122-drm-bridge-hdmi-connector-v4-1-b4d69d6e3bd9@linaro.org>
References: <20241122-drm-bridge-hdmi-connector-v4-0-b4d69d6e3bd9@linaro.org>
In-Reply-To: <20241122-drm-bridge-hdmi-connector-v4-0-b4d69d6e3bd9@linaro.org>
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
 Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5692;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=eQ8kIXg5Uwc5J/4F/1E4S0ElrF44S0HR7t35Q9p34ko=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ7r9lRWHOeJj0xJXqGlEODEX7BI65easv2vPzJOHn93e0
 R+762pTJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmkrmW/b/Lz59n5s88JK4R
 XSpdkiO50je7/9HHN3vZGFPuP/n2bv+3qJZFGuqr3y6q3M60Run8/b8vpNhuNYaH5a6/7lAXyD/
 b6taTL8VOLLGxm0q/nencxtdp9jDSq+da2zG+wr9aWxW7nCIkoqTann3btIm9eU9DaKTEzq//ej
 SEPbQynCrl95g8eH43acLd9P9yBrFWSt+93fUsTdpPMdyfyu+952XFHjv19uSi+MU5edc0MtgsY
 qaev2TE5q5Q9Uz8sYCya6579MK7/fafZtaFPbLw6l2movxpI6vBzPqkWLsoFSmP1/4npmfXbz/3
 XFAmNe18maG84EWOzSVa3963MrmnVxRIiJfuWpcqWhkJAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_164744_080606_36F3BEAE 
X-CRM114-Status: GOOD (  13.48  )
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

The upcoming DRM connector HDMI codec implementation is going to use
codec-specific data in the .get_dai_id to get drm_connector. Pass data
to the callback, as it is done with other hdmi_codec_ops callbacks.

Acked-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/adv7511/adv7511_audio.c      | 3 ++-
 drivers/gpu/drm/bridge/analogix/anx7625.c           | 3 ++-
 drivers/gpu/drm/bridge/lontium-lt9611.c             | 3 ++-
 drivers/gpu/drm/bridge/lontium-lt9611uxc.c          | 3 ++-
 drivers/gpu/drm/bridge/sii902x.c                    | 3 ++-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 3 ++-
 include/sound/hdmi-codec.h                          | 3 ++-
 sound/soc/codecs/hdmi-codec.c                       | 2 +-
 8 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_audio.c b/drivers/gpu/drm/bridge/adv7511/adv7511_audio.c
index 61f4a38e7d2bf6905683cbc9e762b28ecc999d05..51fb9a574b4e28450b2598a92e2930ace5128b71 100644
--- a/drivers/gpu/drm/bridge/adv7511/adv7511_audio.c
+++ b/drivers/gpu/drm/bridge/adv7511/adv7511_audio.c
@@ -204,7 +204,8 @@ static void audio_shutdown(struct device *dev, void *data)
 }
 
 static int adv7511_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
-					struct device_node *endpoint)
+					struct device_node *endpoint,
+					void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index a2675b121fe44b96945f34215fd900f35bfde43a..926437346b6c9a651d495faf25162cac7407d30d 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -1952,7 +1952,8 @@ static void anx7625_audio_shutdown(struct device *dev, void *data)
 }
 
 static int anx7625_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
-				       struct device_node *endpoint)
+				       struct device_node *endpoint,
+				       void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/drivers/gpu/drm/bridge/lontium-lt9611.c b/drivers/gpu/drm/bridge/lontium-lt9611.c
index 8f25b338a8d8f95dc0691735ac6343675098f7f7..6bc1b2476847c3bccbbf9874bb384c1f60674da6 100644
--- a/drivers/gpu/drm/bridge/lontium-lt9611.c
+++ b/drivers/gpu/drm/bridge/lontium-lt9611.c
@@ -1059,7 +1059,8 @@ static void lt9611_audio_shutdown(struct device *dev, void *data)
 }
 
 static int lt9611_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
-				      struct device_node *endpoint)
+				      struct device_node *endpoint,
+				      void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/drivers/gpu/drm/bridge/lontium-lt9611uxc.c b/drivers/gpu/drm/bridge/lontium-lt9611uxc.c
index f89af8203c9d67cb05b629b27f66cf996baedd16..77bc09b875323d88f7346db9d24ea89a355c99b1 100644
--- a/drivers/gpu/drm/bridge/lontium-lt9611uxc.c
+++ b/drivers/gpu/drm/bridge/lontium-lt9611uxc.c
@@ -522,7 +522,8 @@ static void lt9611uxc_audio_shutdown(struct device *dev, void *data)
 }
 
 static int lt9611uxc_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
-					 struct device_node *endpoint)
+					 struct device_node *endpoint,
+					 void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index 9be9cc5b902594ebe6e1ac29ab8684623e336796..f0be803cc2274ca2199ed7661cf752b0a91434b6 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -815,7 +815,8 @@ static int sii902x_audio_get_eld(struct device *dev, void *data,
 }
 
 static int sii902x_audio_get_dai_id(struct snd_soc_component *component,
-				    struct device_node *endpoint)
+				    struct device_node *endpoint,
+				    void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 26c187d20d973dc65801a3baa59ecf57d20072eb..86c412e9cbc80bb82bad5db3aa0263a7acd9c2d7 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -148,7 +148,8 @@ static int dw_hdmi_i2s_get_eld(struct device *dev, void *data, uint8_t *buf,
 }
 
 static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
-				  struct device_node *endpoint)
+				  struct device_node *endpoint,
+				  void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
index 5e1a9eafd10f5d4f831abbb6f4c0fff661909584..b3407b47b4a7878532ecf3b08eeecd443d6fdb07 100644
--- a/include/sound/hdmi-codec.h
+++ b/include/sound/hdmi-codec.h
@@ -105,7 +105,8 @@ struct hdmi_codec_ops {
 	 * Optional
 	 */
 	int (*get_dai_id)(struct snd_soc_component *comment,
-			  struct device_node *endpoint);
+			  struct device_node *endpoint,
+			  void *data);
 
 	/*
 	 * Hook callback function to handle connector plug event.
diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
index 74caae52e1273fda45ab8dd079ae800827f0231f..abd7c9b0fda9ee6fa6c4efde1f583af667716611 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -981,7 +981,7 @@ static int hdmi_of_xlate_dai_id(struct snd_soc_component *component,
 	int ret = -ENOTSUPP; /* see snd_soc_get_dai_id() */
 
 	if (hcp->hcd.ops->get_dai_id)
-		ret = hcp->hcd.ops->get_dai_id(component, endpoint);
+		ret = hcp->hcd.ops->get_dai_id(component, endpoint, hcp->hcd.data);
 
 	return ret;
 }

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
