Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35513C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 13:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vz6mzHEujvUaIl00EhcLnOhx/Emc9SL+hv4NkaL6u9Q=; b=DnWAq9EAB4x+4r
	0viCUsCU4wgPs6rb6/Bg9SzJkJnDvdf2YsyZKfklAiZ6FUVO3XeMqx9ADIvv2Isr28fZc12UggJ29
	Zm/CLKIVILrDpcB6fHpUGzOnqpWKD8/bbUBBRXNr8FVBleBcg9ycSNYH/JJ/VdHjbTMWYp5l2Nxks
	jsqR/+q9Px9mbuWd92jpZE9Q/t+LYZcvPrQNJc2LrfSK7VomJsMUZNFLH4l7V1UMT47lC7NtABetc
	FNNM4Riqfi0mB2KY9vnAlax0uOMdDjM9cU9miAQRk0YYG6zBwk6+YQR+U1LTr6xbSNMIC793rweZ1
	njlGDhTaDlx7nNNO/JKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MqK-00FM6n-CS; Thu, 23 Jun 2022 13:25:56 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MqG-00FM56-JS; Thu, 23 Jun 2022 13:25:54 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxlD032604;
	Thu, 23 Jun 2022 07:53:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=cQdXkHjIfdABxICRyXLMQvZ7JRraXFv/PnLRBa0ESzw=;
 b=h0OK4b08SPJ+1nCl7Pn76jUIVgyKzBifIAJTtx0XVjnTRDxE/hMiZdpm+Zn++p/zsY2T
 W9X85EBdNrfkMqElQ9Otniy7AvDJ/1CIdQd1QF9Gzn10Ke/wL7sPGnOUyIAF4pZqMQ/Y
 AclTureHhqMrOwT9VdF8mefnrZFk2Ss6CyoWOFwf0oKp6EF0v4OagZFYtUh7KZVe81Jl
 wGzWKi1vE7sWlCMslIogKdVsGzME+8T0Fc0yCB24ZDngk3qGLd2NgDP7rPHILM3+cwl2
 p8ZMJG+5IHROj7SMJFOJh0CsiUGrLLWWY4Y8zHnRqaJWaG376ytlkFHCg13UNSokihD4 kw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:06 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:55 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:55 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 9DC5011D3;
	Thu, 23 Jun 2022 12:52:55 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <kuninori.morimoto.gx@renesas.com>,
        <mripard@kernel.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
        <vkoul@kernel.org>, <nicolas.ferre@microchip.com>, <nsaenz@kernel.org>,
        <shawnguo@kernel.org>, <linux-imx@nxp.com>,
        <cezary.rojewski@intel.com>, <pierre-louis.bossart@linux.intel.com>,
        <linux-mips@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
        <daniel@zonque.org>, <srinivas.kandagatla@linaro.org>,
        <linux-rockchip@lists.infradead.org>, <krzk@kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-sunxi@lists.linux.dev>, <linux-tegra@vger.kernel.org>,
        <linux-omap@vger.kernel.org>, <linux-xtensa@linux-xtensa.org>,
        <peter.ujfalusi@gmail.com>, <jarkko.nikula@bitmer.com>,
        <heiko@sntech.de>, <jbrunet@baylibre.com>, <kernel@pengutronix.de>,
        <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>,
        <dri-devel@lists.freedesktop.org>,
        <linux-rpi-kernel@lists.infradead.org>, <frattaroli.nicolas@gmail.com>
Subject: [PATCH v2 55/96] ASoC: pcm*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:09 +0100
Message-ID: <20220623125250.2355471-56-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 7dThFcW3yswDvznmdJhYc7Rzq4indvdx
X-Proofpoint-ORIG-GUID: 7dThFcW3yswDvznmdJhYc7Rzq4indvdx
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_062552_855267_BF0B6E4F 
X-CRM114-Status: GOOD (  13.75  )
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

The ASoC core has now been changed to default to the non-legacy DAI
naming, as such drivers using the new scheme no longer need to specify
the non_legacy_dai_naming flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/codecs/pcm1681.c  | 1 -
 sound/soc/codecs/pcm1789.c  | 1 -
 sound/soc/codecs/pcm179x.c  | 1 -
 sound/soc/codecs/pcm186x.c  | 2 --
 sound/soc/codecs/pcm3008.c  | 1 -
 sound/soc/codecs/pcm3168a.c | 1 -
 sound/soc/codecs/pcm5102a.c | 1 -
 sound/soc/codecs/pcm512x.c  | 1 -
 8 files changed, 9 deletions(-)

diff --git a/sound/soc/codecs/pcm1681.c b/sound/soc/codecs/pcm1681.c
index 20eb04c8a41a0..3591f6f53901f 100644
--- a/sound/soc/codecs/pcm1681.c
+++ b/sound/soc/codecs/pcm1681.c
@@ -290,7 +290,6 @@ static const struct snd_soc_component_driver soc_component_dev_pcm1681 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct i2c_device_id pcm1681_i2c_id[] = {
diff --git a/sound/soc/codecs/pcm1789.c b/sound/soc/codecs/pcm1789.c
index 35788b57e11f9..3ab381e9a8566 100644
--- a/sound/soc/codecs/pcm1789.c
+++ b/sound/soc/codecs/pcm1789.c
@@ -229,7 +229,6 @@ static const struct snd_soc_component_driver soc_component_dev_pcm1789 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 int pcm1789_common_init(struct device *dev, struct regmap *regmap)
diff --git a/sound/soc/codecs/pcm179x.c b/sound/soc/codecs/pcm179x.c
index ee60373d7d254..f52ff66b6e644 100644
--- a/sound/soc/codecs/pcm179x.c
+++ b/sound/soc/codecs/pcm179x.c
@@ -207,7 +207,6 @@ static const struct snd_soc_component_driver soc_component_dev_pcm179x = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 int pcm179x_common_init(struct device *dev, struct regmap *regmap)
diff --git a/sound/soc/codecs/pcm186x.c b/sound/soc/codecs/pcm186x.c
index fda9d7ee3fe6b..dd21803ba13cb 100644
--- a/sound/soc/codecs/pcm186x.c
+++ b/sound/soc/codecs/pcm186x.c
@@ -578,7 +578,6 @@ static struct snd_soc_component_driver soc_codec_dev_pcm1863 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_component_driver soc_codec_dev_pcm1865 = {
@@ -593,7 +592,6 @@ static struct snd_soc_component_driver soc_codec_dev_pcm1865 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static bool pcm186x_volatile(struct device *dev, unsigned int reg)
diff --git a/sound/soc/codecs/pcm3008.c b/sound/soc/codecs/pcm3008.c
index aef40ec40aa16..09c6c1326833d 100644
--- a/sound/soc/codecs/pcm3008.c
+++ b/sound/soc/codecs/pcm3008.c
@@ -102,7 +102,6 @@ static const struct snd_soc_component_driver soc_component_dev_pcm3008 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int pcm3008_codec_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/pcm3168a.c b/sound/soc/codecs/pcm3168a.c
index cf27f05dc46ab..9d6431338fb71 100644
--- a/sound/soc/codecs/pcm3168a.c
+++ b/sound/soc/codecs/pcm3168a.c
@@ -716,7 +716,6 @@ static const struct snd_soc_component_driver pcm3168a_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(pcm3168a_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 int pcm3168a_probe(struct device *dev, struct regmap *regmap)
diff --git a/sound/soc/codecs/pcm5102a.c b/sound/soc/codecs/pcm5102a.c
index f39f98bbc97fd..3401a25341e61 100644
--- a/sound/soc/codecs/pcm5102a.c
+++ b/sound/soc/codecs/pcm5102a.c
@@ -28,7 +28,6 @@ static struct snd_soc_component_driver soc_component_dev_pcm5102a = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int pcm5102a_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/pcm512x.c b/sound/soc/codecs/pcm512x.c
index a3ff4a07aff72..767463e82665c 100644
--- a/sound/soc/codecs/pcm512x.c
+++ b/sound/soc/codecs/pcm512x.c
@@ -1512,7 +1512,6 @@ static const struct snd_soc_component_driver pcm512x_component_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(pcm512x_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_range_cfg pcm512x_range = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
