Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC8AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zX6rGxBmfut1EaviCOnhP64L5M/Hn9YZWyK/Q7F7YhE=; b=FN0xE8VNJdNh3q
	sVk3EI3feEfjFpOJCwMrO/ffyWWluoxH05pijY9zbK2BuTIrBToKRURhKqKbNdlDbfPt0GWbtOxts
	Ms5844cq53A0c2lezv6n6Ap3p1pYQWweRRdLKWWKBdaNYdrw97TpZnvrq9dkB74m4EVo4PNDvSULk
	iqjJONE1fSP8eHKCbbQRIyovNl6d8SRfn5x3NV7FBHD9wDjgVyysUK1Z+qnhQS12CFhcy8l4zhq+F
	RNQdigdpyVp/is8RskiVyKMmWItMaD5TKgVe15gy3xfDIyPNJbryaxu4s9sXHfdGfMfI2EJUaeTe9
	0i/sBuzZnPkBzYrgOWiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNJ-00F9kI-Vf; Thu, 23 Jun 2022 12:55:57 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MKq-00F72X-U5; Thu, 23 Jun 2022 12:53:33 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NAKUt6006859;
	Thu, 23 Jun 2022 07:53:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=dUxxZ4yDTMkaufibeeycQHK/CLz3N70DLkPSTZOUSSI=;
 b=MIRx9pjtG5TdiUU3IET63IKViso5x909aYgg7DCr+swfpiGDCavhcBywAJLbbe6OYr07
 9wyfuvS173BKrtnH4c0KH6o1XjBa+oCgjdpHaLkHMJ3r6A8Ll1liBC+Q7L5ijY8lnZz5
 STev8PU0TlIAZOxxrVEASwzuUKaw9IGWhIufutbqQBuWzrXRmWIGQfZRiCd0TYIsXnKV
 lqyGkTVFdKfWjPaknA4eAcubfb9qK9W7yzwkn5G3e9KGgDWoUVZStxQL544bntqNOPdX
 pK4ohFJTHueVqGtCZRYeq2Ra6dYhsbqaUmZYi8gnVWNKRotcRYp52YwxBP/sLnpMTunb Xw== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4u-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:04 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:55 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:55 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id EB54011D3;
	Thu, 23 Jun 2022 12:52:54 +0000 (UTC)
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
Subject: [PATCH v2 47/96] ASoC: ak*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:01 +0100
Message-ID: <20220623125250.2355471-48-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: yhocI9fY_9yTWOFp6cJEZ5XQk0yCQbo3
X-Proofpoint-ORIG-GUID: yhocI9fY_9yTWOFp6cJEZ5XQk0yCQbo3
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055325_079387_B9AA465D 
X-CRM114-Status: GOOD (  12.87  )
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
 sound/soc/codecs/ak4104.c | 1 -
 sound/soc/codecs/ak4118.c | 1 -
 sound/soc/codecs/ak4375.c | 1 -
 sound/soc/codecs/ak4458.c | 2 --
 sound/soc/codecs/ak4535.c | 1 -
 sound/soc/codecs/ak4554.c | 1 -
 sound/soc/codecs/ak4613.c | 1 -
 sound/soc/codecs/ak4641.c | 1 -
 sound/soc/codecs/ak4642.c | 1 -
 sound/soc/codecs/ak4671.c | 1 -
 sound/soc/codecs/ak5386.c | 1 -
 sound/soc/codecs/ak5558.c | 2 --
 12 files changed, 14 deletions(-)

diff --git a/sound/soc/codecs/ak4104.c b/sound/soc/codecs/ak4104.c
index dc4747c77a7a1..ce99f30b4613a 100644
--- a/sound/soc/codecs/ak4104.c
+++ b/sound/soc/codecs/ak4104.c
@@ -248,7 +248,6 @@ static const struct snd_soc_component_driver soc_component_device_ak4104 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4104_regmap = {
diff --git a/sound/soc/codecs/ak4118.c b/sound/soc/codecs/ak4118.c
index 5c4a78c16733b..b6d9a10bdccdc 100644
--- a/sound/soc/codecs/ak4118.c
+++ b/sound/soc/codecs/ak4118.c
@@ -342,7 +342,6 @@ static const struct snd_soc_component_driver soc_component_drv_ak4118 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4118_regmap = {
diff --git a/sound/soc/codecs/ak4375.c b/sound/soc/codecs/ak4375.c
index 9a7b662016b9e..1ed004ba7cd23 100644
--- a/sound/soc/codecs/ak4375.c
+++ b/sound/soc/codecs/ak4375.c
@@ -473,7 +473,6 @@ static const struct snd_soc_component_driver soc_codec_dev_ak4375 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4375_regmap = {
diff --git a/sound/soc/codecs/ak4458.c b/sound/soc/codecs/ak4458.c
index baa9ff5d0ce50..ea33cc83c86c2 100644
--- a/sound/soc/codecs/ak4458.c
+++ b/sound/soc/codecs/ak4458.c
@@ -725,7 +725,6 @@ static const struct snd_soc_component_driver soc_codec_dev_ak4458 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_component_driver soc_codec_dev_ak4497 = {
@@ -740,7 +739,6 @@ static const struct snd_soc_component_driver soc_codec_dev_ak4497 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4458_regmap = {
diff --git a/sound/soc/codecs/ak4535.c b/sound/soc/codecs/ak4535.c
index cc803e730c6ec..8c8c93eea7048 100644
--- a/sound/soc/codecs/ak4535.c
+++ b/sound/soc/codecs/ak4535.c
@@ -402,7 +402,6 @@ static const struct snd_soc_component_driver soc_component_dev_ak4535 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int ak4535_i2c_probe(struct i2c_client *i2c)
diff --git a/sound/soc/codecs/ak4554.c b/sound/soc/codecs/ak4554.c
index 8e60e2b56ad6d..b9607de5a1912 100644
--- a/sound/soc/codecs/ak4554.c
+++ b/sound/soc/codecs/ak4554.c
@@ -67,7 +67,6 @@ static const struct snd_soc_component_driver soc_component_dev_ak4554 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int ak4554_soc_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/ak4613.c b/sound/soc/codecs/ak4613.c
index d29d5e0db168e..f75c19ef35511 100644
--- a/sound/soc/codecs/ak4613.c
+++ b/sound/soc/codecs/ak4613.c
@@ -827,7 +827,6 @@ static const struct snd_soc_component_driver soc_component_dev_ak4613 = {
 	.num_dapm_routes	= ARRAY_SIZE(ak4613_intercon),
 	.idle_bias_on		= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static void ak4613_parse_of(struct ak4613_priv *priv,
diff --git a/sound/soc/codecs/ak4641.c b/sound/soc/codecs/ak4641.c
index d8d9cc712d679..88851e94b0452 100644
--- a/sound/soc/codecs/ak4641.c
+++ b/sound/soc/codecs/ak4641.c
@@ -535,7 +535,6 @@ static const struct snd_soc_component_driver soc_component_dev_ak4641 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4641_regmap = {
diff --git a/sound/soc/codecs/ak4642.c b/sound/soc/codecs/ak4642.c
index 3c20ff5595eb4..914d5b1969f8c 100644
--- a/sound/soc/codecs/ak4642.c
+++ b/sound/soc/codecs/ak4642.c
@@ -559,7 +559,6 @@ static const struct snd_soc_component_driver soc_component_dev_ak4642 = {
 	.num_dapm_routes	= ARRAY_SIZE(ak4642_intercon),
 	.idle_bias_on		= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4642_regmap = {
diff --git a/sound/soc/codecs/ak4671.c b/sound/soc/codecs/ak4671.c
index 60edcbe560141..cd76765f8cc08 100644
--- a/sound/soc/codecs/ak4671.c
+++ b/sound/soc/codecs/ak4671.c
@@ -616,7 +616,6 @@ static const struct snd_soc_component_driver soc_component_dev_ak4671 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak4671_regmap = {
diff --git a/sound/soc/codecs/ak5386.c b/sound/soc/codecs/ak5386.c
index c76bfff246028..0c5e00679c7d8 100644
--- a/sound/soc/codecs/ak5386.c
+++ b/sound/soc/codecs/ak5386.c
@@ -77,7 +77,6 @@ static const struct snd_soc_component_driver soc_component_ak5386 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int ak5386_set_dai_fmt(struct snd_soc_dai *codec_dai,
diff --git a/sound/soc/codecs/ak5558.c b/sound/soc/codecs/ak5558.c
index c94cfde3e4a86..887d2c04d647a 100644
--- a/sound/soc/codecs/ak5558.c
+++ b/sound/soc/codecs/ak5558.c
@@ -393,7 +393,6 @@ static const struct snd_soc_component_driver soc_codec_dev_ak5558 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_component_driver soc_codec_dev_ak5552 = {
@@ -408,7 +407,6 @@ static const struct snd_soc_component_driver soc_codec_dev_ak5552 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config ak5558_regmap = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
