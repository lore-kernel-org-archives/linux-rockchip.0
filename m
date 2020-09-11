Return-Path: <SRS0=BI/a=CU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18769C433E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 10:23:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1E8C20758
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 10:23:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ViZbPV6c";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GSWpdAds"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1E8C20758
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Bl7dZB9bBayKCvaXW8eWYIBdx3nP5zbVR4y0XJWpOQ=; b=ViZbPV6cVVrFTaWnL2M3ZU9+Y
	8A38K4n7frAWOpOQEYkH4PaA9MHHljfCR3XL2hFpwpKNScs9HlfV/glgKJxKo6mNrCaUI2lrL4o/P
	HfRn83Oe1mx8u5UGBh+WTYuYKFF/S+MP3Grt2Gl0pCzMvJovRStbnnjUVYYHsDHM7bfDsRofOW8jU
	kDyojIbIYCkpA+nJO0OfYorHOtO4jB6E5ysb/z+epZ17WqKjiv+8zpmRF66X0GR/WLU6GUc7/I4DP
	HigtcCuL1ynJAfM2KdnfjW36FZ2lNPliLUJMzKI8wgQVXvfknCDzGZMmbmH+d1LNIloZQFOPzlb6S
	xoydt2AQg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGgDC-0003FI-Bx; Fri, 11 Sep 2020 10:23:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGgD8-0003DD-36
 for linux-rockchip@lists.infradead.org; Fri, 11 Sep 2020 10:23:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id y1so19841pgk.8
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2020 03:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kvYixO51YaoIO33ChNYvtKOsnVvLnU5BAv+BZxGwFTk=;
 b=GSWpdAdszXbdXKJX4yNAExAhWJCVbLdQEeyZfgIMk8KomfCaI6vzKEWWQRzIj8HKNy
 uGqsXvDrkjlwXDM6miRLxAjBVF7iJsyE5m9mkBZk/e+Awu/41bz/bXE51kdtxyzF5dTk
 0R0lFGyXqbz6InNutB2y0zQjBOCeecwSe0g/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kvYixO51YaoIO33ChNYvtKOsnVvLnU5BAv+BZxGwFTk=;
 b=q+qlGxd9O34t6zFS4V5QumZYh2WfAxCejz5THWFKpGkNS4S4TFtxgtZOUtzdfBjAcg
 LupWG8j2aN0WLuEv/dodMST8hqgWqmo5qExhUEirtTgaKLVmNFkOoP9kf2W4RzFuZNz6
 6K4JGnGD6MeT5tsRu/Jr1GyZTEJckYVSSkuLcaKFp8cU0+asifvAnfjysPGjgNRav67Q
 hbcmXwAxyOvG7Xyo0EmfGgFP6NrnoXlmvA0k6E77e03yn09JopqKKrOG8C7LBbaf9GNd
 HyxTEEA1H3bXniQIG38Qg1ass/0pl7ck5DEg73Fe/q64dplRKP5PbkK24DQ9hZ04NZ04
 cb1A==
X-Gm-Message-State: AOAM531BvnYE309iUNfQBwIBtUfbs3VKAeV44ktEAGvvEm5BGgByEcEh
 BvOd4VYwF48Iw4VBuUOP3r0K/g==
X-Google-Smtp-Source: ABdhPJwdjJVLISJrjw+l9k/kjDfejJM23BC4e/83AQdjpvcRDl0M+oTjFJtCYyvaeaWbj3inhNq3gw==
X-Received: by 2002:a63:2a96:: with SMTP id q144mr1215444pgq.447.1599819796332; 
 Fri, 11 Sep 2020 03:23:16 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:de4a:3eff:fe7d:d39c])
 by smtp.gmail.com with ESMTPSA id f9sm1610921pjq.26.2020.09.11.03.23.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Sep 2020 03:23:15 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/3] ASoC: hdmi-codec: Use set_jack ops to set jack
Date: Fri, 11 Sep 2020 18:22:57 +0800
Message-Id: <20200911102259.3667381-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200911102259.3667381-1-cychiang@chromium.org>
References: <20200911102259.3667381-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200911_062318_408877_E2659C0F 
X-CRM114-Status: GOOD (  17.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Taniya Das <tdas@codeaurora.org>, alsa-devel@alsa-project.org,
 Banajit Goswami <bgoswami@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@google.com>,
 Patrick Lai <plai@codeaurora.org>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, dianders@chromium.org,
 Takashi Iwai <tiwai@suse.com>, Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Use set_jack ops to set jack so machine drivers do not need to include
hdmi-codec.h explicitly.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
---
 include/sound/hdmi-codec.h                           |  3 ---
 sound/soc/codecs/hdmi-codec.c                        | 12 ++++--------
 sound/soc/mediatek/mt8173/mt8173-rt5650.c            |  5 ++---
 sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c   |  5 ++---
 .../mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c |  5 ++---
 sound/soc/rockchip/rockchip_max98090.c               |  3 +--
 6 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
index 7754631a3102..b55970859a13 100644
--- a/include/sound/hdmi-codec.h
+++ b/include/sound/hdmi-codec.h
@@ -117,9 +117,6 @@ struct hdmi_codec_pdata {
 struct snd_soc_component;
 struct snd_soc_jack;
 
-int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
-			       struct snd_soc_jack *jack);
-
 #define HDMI_CODEC_DRV_NAME "hdmi-audio-codec"
 
 #endif /* __HDMI_CODEC_H__ */
diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
index 8c6f540533ba..403d4c6a49a8 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -698,13 +698,9 @@ static void plugged_cb(struct device *dev, bool plugged)
 		hdmi_codec_jack_report(hcp, 0);
 }
 
-/**
- * hdmi_codec_set_jack_detect - register HDMI plugged callback
- * @component: the hdmi-codec instance
- * @jack: ASoC jack to report (dis)connection events on
- */
-int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
-			       struct snd_soc_jack *jack)
+static int hdmi_codec_set_jack(struct snd_soc_component *component,
+			       struct snd_soc_jack *jack,
+			       void *data)
 {
 	struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
 	int ret = -EOPNOTSUPP;
@@ -720,7 +716,6 @@ int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
 	}
 	return ret;
 }
-EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
 
 static int hdmi_dai_spdif_probe(struct snd_soc_dai *dai)
 {
@@ -806,6 +801,7 @@ static const struct snd_soc_component_driver hdmi_driver = {
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
 	.non_legacy_dai_naming	= 1,
+	.set_jack		= hdmi_codec_set_jack,
 };
 
 static int hdmi_codec_probe(struct platform_device *pdev)
diff --git a/sound/soc/mediatek/mt8173/mt8173-rt5650.c b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
index 347b095d478d..c28ebf891cb0 100644
--- a/sound/soc/mediatek/mt8173/mt8173-rt5650.c
+++ b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
@@ -11,7 +11,6 @@
 #include <linux/of_gpio.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
-#include <sound/hdmi-codec.h>
 #include "../../codecs/rt5645.h"
 
 #define MCLK_FOR_CODECS		12288000
@@ -154,8 +153,8 @@ static int mt8173_rt5650_hdmi_init(struct snd_soc_pcm_runtime *rtd)
 	if (ret)
 		return ret;
 
-	return hdmi_codec_set_jack_detect(asoc_rtd_to_codec(rtd, 0)->component,
-					  &mt8173_rt5650_hdmi_jack);
+	return snd_soc_component_set_jack(asoc_rtd_to_codec(rtd, 0)->component,
+					  &mt8173_rt5650_hdmi_jack, NULL);
 }
 
 enum {
diff --git a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
index 06d0a4f80fc1..e53c6200d5a7 100644
--- a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
@@ -10,7 +10,6 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
-#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
@@ -369,8 +368,8 @@ static int mt8183_da7219_max98357_hdmi_init(struct snd_soc_pcm_runtime *rtd)
 	if (ret)
 		return ret;
 
-	return hdmi_codec_set_jack_detect(asoc_rtd_to_codec(rtd, 0)->component,
-					  &priv->hdmi_jack);
+	return snd_soc_component_set_jack(asoc_rtd_to_codec(rtd, 0)->component,
+					  &priv->hdmi_jack, NULL);
 }
 
 static struct snd_soc_dai_link mt8183_da7219_dai_links[] = {
diff --git a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
index 07410d7afaa9..327dfad41e31 100644
--- a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
@@ -9,7 +9,6 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
-#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
@@ -350,8 +349,8 @@ mt8183_mt6358_ts3a227_max98357_hdmi_init(struct snd_soc_pcm_runtime *rtd)
 	if (ret)
 		return ret;
 
-	return hdmi_codec_set_jack_detect(asoc_rtd_to_codec(rtd, 0)->component,
-					  &priv->hdmi_jack);
+	return snd_soc_component_set_jack(asoc_rtd_to_codec(rtd, 0)->component,
+					  &priv->hdmi_jack, NULL);
 }
 
 static struct snd_soc_dai_link mt8183_mt6358_ts3a227_dai_links[] = {
diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 9acfd024aa5d..c8f1a28a92b7 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -12,7 +12,6 @@
 #include <linux/gpio.h>
 #include <linux/of_gpio.h>
 #include <sound/core.h>
-#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
@@ -238,7 +237,7 @@ static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
 		return ret;
 	}
 
-	return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack);
+	return snd_soc_component_set_jack(component, &rk_hdmi_jack, NULL);
 }
 
 /* max98090 dai_link */
-- 
2.28.0.618.gf4bc123cb7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
