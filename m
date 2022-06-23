Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E970DCCA47C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F46Aoj11RZXeFcoRgw5RrpmVZN3CTvn8/KTWS3MECoo=; b=sUrlu5rjkGv9Lk
	JVY5ZQG5bf1o9dG/lpXOmGI8YJglgUgjeVKnNNdQP8IsoX8Ii3YacQG2U33VoGVVrtT38un4O/X+I
	mblpADoG4CJxG7QQlhV2I2UFoswgQp6XJynbOHMOHNWifzfZoUIN3xBmHdO7gQw6v3JG/VEbqYeD5
	kArzk+AvZcc85W/e1iZbRqIIrfUfYb2IaapkGzSnNmRpu5nrMrIRbtpxRCa1XivltCp69mV/2+jl/
	IX7W5bQl0fY2scLomvgTM3+L1ocQQytvsmB+D6PRRvKmVpYK9YkOY3Cz3r44UAhx13BANhUCOprvu
	BwXrsPK9hIImP929utyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOu-00FBfn-H7; Thu, 23 Jun 2022 12:57:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLq-00F80Q-Oa; Thu, 23 Jun 2022 12:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=sAu3pH6/6lU/XyXTN91/1WuCwzQ/mNc+bW7Bo0i0LcU=; b=no+z5ETfU0Vw+rsGPR17WrQkyB
	L32zfEnYG3M6F84KLGwbE22QDITaf9M7xdwVJiZ3fOKSTBrTI6QEoifd+EzjdUtvajDKpug+01eC5
	UxvF6cY+N1IojuTxlRPcFWjCnPHynUj9WDPK0FfVFtTXcc0VcuUudDoXxzv/4exTIBj7DJIRkHD7p
	EwlzXvMqxpNWgRSKEaBZJ7R5d23J1JTh6M7nSqk3j0ulOBm/tJx5tryEp5Hhlv3Fcd0TyJLcL4tOY
	4NKR0N/jaA1eNxaMUDUXrG+y4wK8TZrjUActgrdrUY+XUXDGPrSDyQzAHB0RnHXAGFFdE0imCeo5W
	Y4tJjVwg==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLj-007sAI-GX; Thu, 23 Jun 2022 12:54:25 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N6FQeS013924;
	Thu, 23 Jun 2022 07:53:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=sAu3pH6/6lU/XyXTN91/1WuCwzQ/mNc+bW7Bo0i0LcU=;
 b=e5pW6kTgadxBfVjgB+WLozMyvQm+QgqTbNVLiEAF5NO7iy6+VeNfy8GXGDshMTsB5qIG
 7NVSyrkreBiGGNtNjDw5XDPPisMSCKM6Q7oFAUdckU9dLs6cZJG+LaCGX/Z9ek5gX8tq
 jW6xVDhdjphWKEbAh+tR1+9Z91kW7rl+OofX3wRvs2P4M2ogGq4k6uVvzkHaKlW8Kx9P
 MrHopxddztVJSSkCNpw79dwFo6bDkDt33c9eX+6vkgoXWied2bGIH1dCnpU4shr4FSbG
 715cucK4Pea88b04cm6r0xXzogfFwc9koX3DNm6WZIu+DKha/XMljiInAJXf0bUZYmhr YA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4x-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:05 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:55 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:55 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 6858A11D3;
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
Subject: [PATCH v2 52/96] ASoC: max*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:06 +0100
Message-ID: <20220623125250.2355471-53-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: VQEw18QrbBwkdqgg7ilMzg33g8OLPaLL
X-Proofpoint-ORIG-GUID: VQEw18QrbBwkdqgg7ilMzg33g8OLPaLL
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_922623_15762B71 
X-CRM114-Status: GOOD (  13.44  )
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
 sound/soc/codecs/max98088.c  | 1 -
 sound/soc/codecs/max98090.c  | 1 -
 sound/soc/codecs/max98095.c  | 1 -
 sound/soc/codecs/max98357a.c | 1 -
 sound/soc/codecs/max98371.c  | 1 -
 sound/soc/codecs/max98373.c  | 2 --
 sound/soc/codecs/max98390.c  | 1 -
 sound/soc/codecs/max98396.c  | 2 --
 sound/soc/codecs/max9850.c   | 1 -
 sound/soc/codecs/max98520.c  | 1 -
 sound/soc/codecs/max9860.c   | 1 -
 sound/soc/codecs/max9867.c   | 1 -
 sound/soc/codecs/max98925.c  | 1 -
 sound/soc/codecs/max98926.c  | 1 -
 sound/soc/codecs/max98927.c  | 1 -
 15 files changed, 17 deletions(-)

diff --git a/sound/soc/codecs/max98088.c b/sound/soc/codecs/max98088.c
index 5ef2e1279ee71..08e5c606ff27d 100644
--- a/sound/soc/codecs/max98088.c
+++ b/sound/soc/codecs/max98088.c
@@ -1734,7 +1734,6 @@ static const struct snd_soc_component_driver soc_component_dev_max98088 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct i2c_device_id max98088_i2c_id[] = {
diff --git a/sound/soc/codecs/max98090.c b/sound/soc/codecs/max98090.c
index 72471cdb22292..142083b13ac3b 100644
--- a/sound/soc/codecs/max98090.c
+++ b/sound/soc/codecs/max98090.c
@@ -2519,7 +2519,6 @@ static const struct snd_soc_component_driver soc_component_dev_max98090 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98090_regmap = {
diff --git a/sound/soc/codecs/max98095.c b/sound/soc/codecs/max98095.c
index 7bca99fa61b54..44aa58fcc23f8 100644
--- a/sound/soc/codecs/max98095.c
+++ b/sound/soc/codecs/max98095.c
@@ -2103,7 +2103,6 @@ static const struct snd_soc_component_driver soc_component_dev_max98095 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct i2c_device_id max98095_i2c_id[] = {
diff --git a/sound/soc/codecs/max98357a.c b/sound/soc/codecs/max98357a.c
index 9188127638848..2a2b286f1747f 100644
--- a/sound/soc/codecs/max98357a.c
+++ b/sound/soc/codecs/max98357a.c
@@ -93,7 +93,6 @@ static const struct snd_soc_component_driver max98357a_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_dai_ops max98357a_dai_ops = {
diff --git a/sound/soc/codecs/max98371.c b/sound/soc/codecs/max98371.c
index 800f2bca6a0f1..bac9d1bcf60ae 100644
--- a/sound/soc/codecs/max98371.c
+++ b/sound/soc/codecs/max98371.c
@@ -351,7 +351,6 @@ static const struct snd_soc_component_driver max98371_component = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98371_regmap = {
diff --git a/sound/soc/codecs/max98373.c b/sound/soc/codecs/max98373.c
index 1517c47afbf14..f90a6a7ba83b8 100644
--- a/sound/soc/codecs/max98373.c
+++ b/sound/soc/codecs/max98373.c
@@ -437,7 +437,6 @@ const struct snd_soc_component_driver soc_codec_dev_max98373 = {
 	.num_dapm_routes	= ARRAY_SIZE(max98373_audio_map),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 EXPORT_SYMBOL_GPL(soc_codec_dev_max98373);
 
@@ -462,7 +461,6 @@ const struct snd_soc_component_driver soc_codec_dev_max98373_sdw = {
 	.num_dapm_routes	= ARRAY_SIZE(max98373_audio_map),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 EXPORT_SYMBOL_GPL(soc_codec_dev_max98373_sdw);
 
diff --git a/sound/soc/codecs/max98390.c b/sound/soc/codecs/max98390.c
index d83f81d9ff4ea..5c08166a8dc62 100644
--- a/sound/soc/codecs/max98390.c
+++ b/sound/soc/codecs/max98390.c
@@ -983,7 +983,6 @@ static const struct snd_soc_component_driver soc_codec_dev_max98390 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98390_regmap = {
diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
index 56eb62bb041f9..225effede9d25 100644
--- a/sound/soc/codecs/max98396.c
+++ b/sound/soc/codecs/max98396.c
@@ -1453,7 +1453,6 @@ static const struct snd_soc_component_driver soc_codec_dev_max98396 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_component_driver soc_codec_dev_max98397 = {
@@ -1467,7 +1466,6 @@ static const struct snd_soc_component_driver soc_codec_dev_max98397 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98396_regmap = {
diff --git a/sound/soc/codecs/max9850.c b/sound/soc/codecs/max9850.c
index 9ca6fc254883c..a6733396b0cad 100644
--- a/sound/soc/codecs/max9850.c
+++ b/sound/soc/codecs/max9850.c
@@ -296,7 +296,6 @@ static const struct snd_soc_component_driver soc_component_dev_max9850 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int max9850_i2c_probe(struct i2c_client *i2c)
diff --git a/sound/soc/codecs/max98520.c b/sound/soc/codecs/max98520.c
index f0f085ecab550..5edd6f90f8a7b 100644
--- a/sound/soc/codecs/max98520.c
+++ b/sound/soc/codecs/max98520.c
@@ -657,7 +657,6 @@ static const struct snd_soc_component_driver soc_codec_dev_max98520 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98520_regmap = {
diff --git a/sound/soc/codecs/max9860.c b/sound/soc/codecs/max9860.c
index a1d0179e12c76..771b3dcd6cc32 100644
--- a/sound/soc/codecs/max9860.c
+++ b/sound/soc/codecs/max9860.c
@@ -537,7 +537,6 @@ static const struct snd_soc_component_driver max9860_component_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(max9860_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 #ifdef CONFIG_PM
diff --git a/sound/soc/codecs/max9867.c b/sound/soc/codecs/max9867.c
index eb628b7e84f55..6d2941a9dbd6e 100644
--- a/sound/soc/codecs/max9867.c
+++ b/sound/soc/codecs/max9867.c
@@ -589,7 +589,6 @@ static const struct snd_soc_component_driver max9867_component = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static bool max9867_volatile_register(struct device *dev, unsigned int reg)
diff --git a/sound/soc/codecs/max98925.c b/sound/soc/codecs/max98925.c
index 63849ebcfd354..c24d9f2c8874d 100644
--- a/sound/soc/codecs/max98925.c
+++ b/sound/soc/codecs/max98925.c
@@ -544,7 +544,6 @@ static const struct snd_soc_component_driver soc_component_dev_max98925 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98925_regmap = {
diff --git a/sound/soc/codecs/max98926.c b/sound/soc/codecs/max98926.c
index 56e0a87c7112f..bffd56e240e9a 100644
--- a/sound/soc/codecs/max98926.c
+++ b/sound/soc/codecs/max98926.c
@@ -496,7 +496,6 @@ static const struct snd_soc_component_driver soc_component_dev_max98926 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98926_regmap = {
diff --git a/sound/soc/codecs/max98927.c b/sound/soc/codecs/max98927.c
index b7cff76d7b5b9..9cce7c0f01424 100644
--- a/sound/soc/codecs/max98927.c
+++ b/sound/soc/codecs/max98927.c
@@ -832,7 +832,6 @@ static const struct snd_soc_component_driver soc_component_dev_max98927 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config max98927_regmap = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
