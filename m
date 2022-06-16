Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6F1AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DvZl9PZhRncOCa8vflV+YTHfJEitnGMO5RjCBq1lN8=; b=r2olIenOkFzhKy
	pe9ukg8MxV3rxpt2o7l1z60lrsfAUBpNw+82GObuiW8lAZbbafbKpY3SopC0cBZGnXWX/K9rrhamu
	6SYltI4pFx96zT3ZxaIvfPW3AUzhsyhGcQRRAfN0lghqNomsNthw1m0Rjm4YUIAGilmgBZMumH/jc
	ManHDkrChDUyTkEAdwqUW9wvwiyQiYOlL0rwczxoDXnEUrFUZ9s1uAZnr0Mt4SMAqSvikE/CVMWP+
	iy1ZvjF/DXEAgsDg8yL9vmQC4EkGDSbLoLSChfI26PTJ19YJ4Ig2LotW4KcXPAyWIO4YBjQmjNdcR
	a1+mwShfdCNP71zCVGgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdR-002ufN-0x; Thu, 16 Jun 2022 14:38:13 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qad-002rhO-K3; Thu, 16 Jun 2022 14:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=sW35yMEAhpqMwtioXqY0ldNVVBynIZiI7vWJLow7w50=; b=JlT+f/vjq69ZlEkzrtVrJDBv/s
	RGoE7ZgFz11zrPHCkTf+htyQ5k5CxBwgway40LzxdGzakyAVSmdbaVcoif/epJBgA0pLCsf7ZdIad
	7BaelNekxpVbO3PWdFtlizYKE268GSUp8Ecg8Gs1kk09VLMi+vTk5h18bFqbJxkDmdKjcrB6CqdAz
	3PvEg5ySJ74+fv3tIqovbuh3KnBCWmbuyXs77j6DdPUR9eC87ddbof8GVaHdxL48eWV8qE96bq5uw
	CD+D01V/jXqkHGqdK4oS5BZJ6gFRjs+c4cIX5AUrn9oYhlIy9bdcPHPnkeJdw+Sgqnvn6R0tgpKEF
	lxB/mEzg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaR-008R3N-E5; Thu, 16 Jun 2022 14:35:12 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaR029573;
	Thu, 16 Jun 2022 09:34:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=sW35yMEAhpqMwtioXqY0ldNVVBynIZiI7vWJLow7w50=;
 b=K/sAEySNlrk9zWD4JC6sxmA1NA2m85QzFBSZpNnsvzDnb9YvN9p7RwEhbZ253+91rtCK
 AEfSo/Q5aA3terKXJZr/Tm89XVwmmXQSybRj+wSkp+6qRkRpunzH6gV/VKnpfwSm1bWp
 ioVghtrbTGvKL6sdHDWA4rUdz7PF+m9k+zmOxTnwltLcmRUvI+9Pv4BPlP0f5NC28qFH
 pl4ZKZOxZjhHzJFHoybXAdLXjwLUHBVT/9C4x7XTbb6Bx6zgClcm9sgnswn4uxGOD4d2
 v0hhoA4tND8kNvABBMjgeXdCRO8sYJVOckTJRgaA4biFuP9n9nj6CdVu+bobOxKK7x7B tA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:48 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:34 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:34 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id CEE9711D4;
	Thu, 16 Jun 2022 14:34:34 +0000 (UTC)
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
        <linux-rpi-kernel@lists.infradead.org>
Subject: [PATCH 62/96] ASoC: tlv320*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:55 +0100
Message-ID: <20220616143429.1324494-63-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: inhGalbJUPd6iILVxAUgYgXvh4ZaAOfF
X-Proofpoint-GUID: inhGalbJUPd6iILVxAUgYgXvh4ZaAOfF
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153508_564785_8BAE5EF0 
X-CRM114-Status: GOOD (  13.91  )
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
 sound/soc/codecs/tlv320adcx140.c | 1 -
 sound/soc/codecs/tlv320aic23.c   | 1 -
 sound/soc/codecs/tlv320aic26.c   | 1 -
 sound/soc/codecs/tlv320aic31xx.c | 1 -
 sound/soc/codecs/tlv320aic32x4.c | 2 --
 sound/soc/codecs/tlv320aic3x.c   | 1 -
 sound/soc/codecs/tlv320dac33.c   | 1 -
 7 files changed, 8 deletions(-)

diff --git a/sound/soc/codecs/tlv320adcx140.c b/sound/soc/codecs/tlv320adcx140.c
index de5b184a701ef..6618ac4a7d5c8 100644
--- a/sound/soc/codecs/tlv320adcx140.c
+++ b/sound/soc/codecs/tlv320adcx140.c
@@ -1053,7 +1053,6 @@ static const struct snd_soc_component_driver soc_codec_driver_adcx140 = {
 	.idle_bias_on		= 0,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_dai_driver adcx140_dai_driver[] = {
diff --git a/sound/soc/codecs/tlv320aic23.c b/sound/soc/codecs/tlv320aic23.c
index c86ca793a2b66..c47aa4d4162dd 100644
--- a/sound/soc/codecs/tlv320aic23.c
+++ b/sound/soc/codecs/tlv320aic23.c
@@ -586,7 +586,6 @@ static const struct snd_soc_component_driver soc_component_dev_tlv320aic23 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 int tlv320aic23_probe(struct device *dev, struct regmap *regmap)
diff --git a/sound/soc/codecs/tlv320aic26.c b/sound/soc/codecs/tlv320aic26.c
index f85f8061639f3..8bae4b4750688 100644
--- a/sound/soc/codecs/tlv320aic26.c
+++ b/sound/soc/codecs/tlv320aic26.c
@@ -331,7 +331,6 @@ static const struct snd_soc_component_driver aic26_soc_component_dev = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config aic26_regmap = {
diff --git a/sound/soc/codecs/tlv320aic31xx.c b/sound/soc/codecs/tlv320aic31xx.c
index aacee23679924..0847302121f6e 100644
--- a/sound/soc/codecs/tlv320aic31xx.c
+++ b/sound/soc/codecs/tlv320aic31xx.c
@@ -1417,7 +1417,6 @@ static const struct snd_soc_component_driver soc_codec_driver_aic31xx = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_dai_ops aic31xx_dai_ops = {
diff --git a/sound/soc/codecs/tlv320aic32x4.c b/sound/soc/codecs/tlv320aic32x4.c
index a8e6adf62ac82..4b74805cdd2e5 100644
--- a/sound/soc/codecs/tlv320aic32x4.c
+++ b/sound/soc/codecs/tlv320aic32x4.c
@@ -1077,7 +1077,6 @@ static const struct snd_soc_component_driver soc_component_dev_aic32x4 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_kcontrol_new aic32x4_tas2505_snd_controls[] = {
@@ -1199,7 +1198,6 @@ static const struct snd_soc_component_driver soc_component_dev_aic32x4_tas2505 =
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int aic32x4_parse_dt(struct aic32x4_priv *aic32x4,
diff --git a/sound/soc/codecs/tlv320aic3x.c b/sound/soc/codecs/tlv320aic3x.c
index 610e41bbf388c..08938801daec2 100644
--- a/sound/soc/codecs/tlv320aic3x.c
+++ b/sound/soc/codecs/tlv320aic3x.c
@@ -1697,7 +1697,6 @@ static const struct snd_soc_component_driver soc_component_dev_aic3x = {
 	.num_dapm_routes	= ARRAY_SIZE(intercon),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static void aic3x_configure_ocmv(struct device *dev, struct aic3x_priv *aic3x)
diff --git a/sound/soc/codecs/tlv320dac33.c b/sound/soc/codecs/tlv320dac33.c
index 371026eb8f41b..17ae3b1d96fb4 100644
--- a/sound/soc/codecs/tlv320dac33.c
+++ b/sound/soc/codecs/tlv320dac33.c
@@ -1431,7 +1431,6 @@ static const struct snd_soc_component_driver soc_component_dev_tlv320dac33 = {
 	.num_dapm_routes	= ARRAY_SIZE(audio_map),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 #define DAC33_RATES	(SNDRV_PCM_RATE_44100 | \
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
