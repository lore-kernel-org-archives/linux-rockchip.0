Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA271D7361B
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Dec 2024 00:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zA5EMpCKma9L3tSY+bEj6/gRiRWN+JRyOOTP9BEm9OI=; b=br3DGrqISQZlHH
	0X3M/1Xhu+xyRnOdtCmBaTorjF5+v8LVRL0022sdtTamEUsEZy0/Er+5QaE+YU40XhJvZ+c8i8YX1
	FgIRnKM+Q+xK6hrl/MV9e8OY3i+yR+JAkJk5KeBI22mmqZa2hQjEDEAukAoPZe4ZrXxqAohnevmLP
	qldheLCMCINggKTuSP5JgXXRT2tazlbFekAnIid9uyFs0IxHVIZ45ws2MauvaOVEpQXz4FceRjMdg
	ww/y21vWw82t3I3g9cEpPeGTttZQAJeB/gIDxhlFYM7lkiv+0zolRpDnV/TdYSrV+N6ZXEejClJN4
	iSGlRcFRYxkEL/O+IWtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHY6R-00000002pCz-21sa;
	Sun, 01 Dec 2024 00:46:23 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHY4Q-00000002oQl-0AFw
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Dec 2024 00:44:19 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5cf6f804233so3525824a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Nov 2024 16:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733013856; x=1733618656; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Knx2vF/XV6x3WtvG+CxxtwnkZCT4oFDg0nDSk74X/xk=;
        b=vGmMObstw6jBd/pUqnJM98dBZfsmC/nTgJgTrtc3rNnsPrBSBGJI009+UjH89d4Uxd
         rRoVs9sSuPcYouWPWfSN8MuJDl5zJkZT4Xgvy2fWpLcozvR09u/OXFy9nTcQigiXl4ER
         TIr0A7C+Xc5MVDU+Ni9VcdtkFnmHe7Vu6UpAAtt864gxUFs5xEbF+18r6Nt0CXeLViQK
         mIxhlYsxhcps6bP2O0AbEl8v3jhQa66DgNwIr+ggKo79O+rcN3w96nPOYOBwDjtLGZih
         lHddvl07FN7IuRVWb/Gyze6+FKzPhmXCV7iujfV3IZtNP2VXROWBdsTgqwVFkbHZik4f
         yLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733013856; x=1733618656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Knx2vF/XV6x3WtvG+CxxtwnkZCT4oFDg0nDSk74X/xk=;
        b=kqOFO4qCTJhbMhYGF+qm3EmmV/azfgiwRh6wvarQGRV71gMBshYYvnwoe+SlRSK0ag
         Aj7eg81fDqU/CEfbMwbMBqln84em2q0FVEhOWr2j1YQNaDuRP3oBx0qr91gnZKgGtVoJ
         UKQzfveW2ysEDkSyhC7K4EnoRns+2TINfAPw5jw5tUN7lsl6aBJb7TAZ4+VqvQMHC7qq
         yAWLeWBBlp78z832cS6dcMj+8WkHDQt7rLLPDdIENj7PIgIAFV5P3Mdq2TRdN3LKyOdJ
         rv1q1FJvK4SuaT9JCNGO3odOd7+nMbZCMLEGVtQ5dAK1rNIRx/AZHiXEe4pfty9Pi5yM
         9y5g==
X-Forwarded-Encrypted: i=1; AJvYcCU0cS+Qa22HnNmzp49OUrrdPhUAyU7VKiA/hcmzik5vhN5gvp2D0jeWDgSJuKzBek4EkhryWUGJjfrbVFvmmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrfViB+ANY27TBer3XpFFhlTgyFrZmEIZHPT10fjOQ00QHGTOx
	RF37/zt3DFObyXyaL7vtA1mVzdO7nW+UzqoUWmEiX7Mi6t2a9qwhV8u4Fnu08rQ=
X-Gm-Gg: ASbGncv3bcFUrXEHMsTGYUv0a/NhrBREx9eLf9kfnRYgTbGcBazze2VArtClO0TzBut
	ZRAY71pn/LQyBvhQNmUoutpPe+y6+C4Us+z9O38W/J6XLCSUWlP8AfZ0L3kOVqHfe4SF0VL2+a0
	VaZHYgi+boWFY07KkP7SlDGqr/Zm7VV+dPLzZtnYnY3i9wVXTgGaJ3Fo7G7e/MLlnUHlAe8qgYZ
	TkgRF7mxL/Owvqda9gzsHpQeH4NrvjlypdessDO7KmYoIWC/9o1y/7LUw==
X-Google-Smtp-Source: AGHT+IG2vkfheouE1mPbocWXKym9yPXudTpq4FYXRE1GdSbbteSVJqBbXoSoXaZUoVfFrUgKdHkWWQ==
X-Received: by 2002:a05:6402:51ca:b0:5d0:8606:9b92 with SMTP id 4fb4d7f45d1cf-5d08606cd3amr13223060a12.5.1733013856266;
        Sat, 30 Nov 2024 16:44:16 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097e8d817sm3400359a12.63.2024.11.30.16.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 16:44:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 01 Dec 2024 02:44:05 +0200
Subject: [PATCH v5 1/9] ASoC: hdmi-codec: pass data to get_dai_id too
MIME-Version: 1.0
Message-Id: <20241201-drm-bridge-hdmi-connector-v5-1-b5316e82f61a@linaro.org>
References: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
In-Reply-To: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
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
 bh=xKXgCzbJKZ6UUdReZlG7GRuNQSsdN/VrnC+8Pdwptd4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnS7FXH/RpG/BjQasdBLhNln9hjEHbp3mQ9vf3t
 EW2Nf56OKuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0uxVwAKCRCLPIo+Aiko
 1QCuCACR5F9ArBiXX9UAqJoDRn+pFNJYOtdo3Ix28zrT5Ot32SBfkj+oBkksDinkFfP9qDcghsF
 +9DrlANcyvHqQxPLRZDGCbdW/ozVyJJxp6SVHq5eUZ/BNr2hdTx63IvJ9ULYZW1sUlQy7lA+qX8
 DtWJ0KLYNtJK7Q6OJ/wruc+tH1Ps/gRkpeYMLzfeyufJhuLnE9ZIgvsQuJrH+cnHqeqJ2j1rn+D
 BYpByJ8Xo2Mi6oN6B9Dn2juhhYluEZrxH4gc7+4kINUTvRKBN1+/f9comTbBgr4RDwV/w62HfyS
 8ka5Cv33H7fZ/JZLnCljjcGlVgs6klKVpgAsUIio7qvbFQZm
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_164418_098522_58F18987 
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
index c036bbc92ba96ec4663c55cca091cd5da9f6d271..943dd3cf57738d8c232d57d793756eb2e3bf1c5a 100644
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
