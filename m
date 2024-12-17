Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D388E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 00:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ch3LjY0HN/a//xjxDdLEJFN7Xq44I8GVQPdI9d0Pvj8=; b=4eS2C16SciASk4
	eBcy+vYneVSmkTt08m9kET0E3wXQ4jSmV/KN390FWE9RzTBOP7ZoUJ6B/zrNYXVF7aZ0xh3Znh84V
	Kk2Wai59Lt6DjCzZRVrsz2Ee4e2xwuedUpYTlFbXfnkZEEsm7GdrylKZKsiwFBZnNFV+Pg9OLIwdt
	U+8xG0f/cQ+D33vwRQCDNSnVGv7fVLn8ul0n14KV3DgCfJib8l4yZounP/fSrFBs+ecW1+9SWtgFz
	90nbSZrCI6lA1Af46Zm9wohawTpfHMdJkVQu2Tps56zCcfr/6ythxig3MN4g5uplczkHFXdCTo/cp
	J2LWJAF8jGwzlnBE9vdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLee-0000000Bl2P-3Aow;
	Tue, 17 Dec 2024 00:41:40 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLdY-0000000Bkaj-2Pz8
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 00:40:33 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53df80eeeedso4705367e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 16:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734396030; x=1735000830; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SRWRciqYcfp6LVsVpZ1pOQMYwHQFKDTd0yUpsCVVwDs=;
        b=YFNAuiubmGVbhFUlWL+qi6Az/w7x+d/nGkJavaNeabifF9XNTEFGTHq8HTuO7xJlS5
         nK+EBYXotOZ3luopVl7BCpAV2/QX+jdAhMaJES+knMq6pUQOByi2h1i1Pe3Bau9ANMBa
         GVhKokHFsdNEqRVEccT8DDHJMJDleZSqU+uw9QR6UJOtfSZBxoKsJxK52kc0z8wf5PSh
         C4E+K2fYm+qKEJuc6KBY/Tv5KfesWFzQqF2tN1V4uc8uY0+FSbL1BnP7SVO9b9x7am42
         0JXm0Vis8HcooOuZ30RU52DBSBHMuqsYdvVk8Hq5uD3UcWEmCQdmG9t/ngBHlPFTjeIv
         0moQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734396030; x=1735000830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SRWRciqYcfp6LVsVpZ1pOQMYwHQFKDTd0yUpsCVVwDs=;
        b=r+pDPrsYDyWeVGfTuz4QHTikN0S+A7/0w/crgXB9EQmHwRYCgZhZpQcgGxLgKPL5f2
         ctS6JgWOzai/1y2CARZg3MAeeRlyX8d1p59N1m5tXMtye5kRTgFv+yA7EYBvfZ0Vk1LO
         8Ao56FVj5an7pnLbngByJOZq2TgSz6mGFltm6+M7F3TjB5CWsheBRvJytuVIrA/SakPH
         t0GiAFWFW4d6oFrQ9S0XHHPs4yQtwdKXKZTUjK9U2SQ7sYGSQNfvDDNVaV20I4xNvAUm
         8zF7Ch9vtUIUtArCYLAtC+gkfJa3xkWf88tJ/i6nb9iLazu1ESVUCowgFkDyV4LPI68E
         AiwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWa5q9WbiVyrIMtcIlkE5E9TRnqrJDvY1rHBc+JEtNhY06RrqJSCEDhUkpp+Vchhyycn0oqVge5wLdc8Bw3Wg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeWlzJ3DEgwnpM8oajv4KjsGKehJ8YObQQRfof99StxZlEjsBT
	8/+QcwP+iPXbK/Ze2adv2IZgcj0kcBdlq5jqHB1q9QiXsQvMO6KPH+Zt9qNAqHc=
X-Gm-Gg: ASbGncv4ST7PovJkUYF7X98W8Faj2ciDLHtUk3Q7p1yz0B7DSRCVx6vGd6JKSjV1ztR
	DzIEFEHbbWZeiHdner/+dgv2LX7F6pfRj8uHh6pMa0PlE+C8YB76/CyPZHqJE/Ez+4IwrKDan7F
	tRxZ4aCJInv6+UNAy7I4k4cvPW689mjx9LNNFx5JJEakJi36USf2r5U1gCrfNI2iF31jvPW5wwq
	Gj9Q7PiurxutO/LHfQAfzEuGn1A2yZfGDf7xpVslXTHtzUbh2MNXY5QS0y09Pxu
X-Google-Smtp-Source: AGHT+IFEVL9/gmk5u41kyQWxRYG7YS3h/SXoQIsw9zZvnut7Pj6UKnx0tdi7DeO9H+LK10mw5qX8OA==
X-Received: by 2002:a05:6512:23a4:b0:540:2542:cba6 with SMTP id 2adb3069b0e04-54090558260mr4343724e87.21.1734396030516;
        Mon, 16 Dec 2024 16:40:30 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9ab2sm1009122e87.74.2024.12.16.16.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 16:40:30 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 17 Dec 2024 02:40:23 +0200
Subject: [PATCH v7 01/10] ASoC: hdmi-codec: pass data to get_dai_id too
MIME-Version: 1.0
Message-Id: <20241217-drm-bridge-hdmi-connector-v7-1-cb9df2b6a515@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5692;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=WNxJPw3rN8QoSaOiLaqtgwQcUQnVr/fSlXdgMNDRgSc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnYMh4eNPg8d72Zxo1tiKfiMAIb9OsMZ5NxEgtj
 eXcTKeslbeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2DIeAAKCRCLPIo+Aiko
 1Y57B/4mKoHyoArNRLDdJ64GZgI2q0PsI4Ij1HTJt+/2pgZJ/0lHRRFXUbAbi5F7eFrp4yCfbjS
 WQKZ6dMssyXYheMl9eTW/snPHMZ/u3sd0EPl/BSz4biVLfhIyHUprnSgw3CQxW+V7g+C33yZ3FI
 gw0SSU+D/A/hIj8/R3hjGZPO4Ul0IhVsohyzkBsz6wbst0xRxn7frbQ2k3ST63LjEWSE5Vl2U/O
 hCF40OR7XYnez7jd/JmPCEv+9HniwiLS7PaJPWLhk59HrbpVvynCtDpeA4P+/CbRZHJuGDM+OsR
 LlDR0k9HfsyA7eTFE1vPgjioV33uP75fwEEzGhgK3iz87f3T
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_164032_625799_A98704C5 
X-CRM114-Status: GOOD (  13.55  )
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
index 6238eabd23282d5f7e59a05d267737f40211aaf3..d65680d1bc8f2f27927b8a9d6926b72531791614 100644
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
index 74f726efc74613460a6eb9c41f0bbad2ab06208f..698a9a01783d28edc734b6932a7768978de65ffc 100644
--- a/drivers/gpu/drm/bridge/lontium-lt9611.c
+++ b/drivers/gpu/drm/bridge/lontium-lt9611.c
@@ -1057,7 +1057,8 @@ static void lt9611_audio_shutdown(struct device *dev, void *data)
 }
 
 static int lt9611_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
-				      struct device_node *endpoint)
+				      struct device_node *endpoint,
+				      void *data)
 {
 	struct of_endpoint of_ep;
 	int ret;
diff --git a/drivers/gpu/drm/bridge/lontium-lt9611uxc.c b/drivers/gpu/drm/bridge/lontium-lt9611uxc.c
index db9a5466060b663e88d58e85f24bf2d58d74a81c..f4c3ff1fdc6923eb7a8c0d8f7f92e7649c797d77 100644
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
index 127da22011b3235b049c38413e56d50414cf36fb..a02d30c0ba4221d7fee0eb50892ab4d8e8436004 100644
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
index f1c5a8d0fa90e2eb2ee488b6a5871b005f797ea1..2c903c9fe8052ab721445188fd2b75270a55f2b0 100644
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
index d9df29a26f4f213a30a2ebcdb63a593f9cf4b901..f536ca60e162dca6b50b37854ca6de2c114bc2a1 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -995,7 +995,7 @@ static int hdmi_of_xlate_dai_id(struct snd_soc_component *component,
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
