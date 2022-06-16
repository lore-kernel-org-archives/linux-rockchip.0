Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7657CC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vz6mzHEujvUaIl00EhcLnOhx/Emc9SL+hv4NkaL6u9Q=; b=W+NGjZUGd08wav
	2fxrhcnc2H7e9XpjaqCpZ7Xj20EDB58MKXRw1z2E2Cpzf7VO+AYvzscd/6nU182nVvdF0IhCzb56p
	9GyMMs15pEGupr5hHIRWNhY3JD8QjEKTtkpCVfvzu6dv2iYOibnyiRRnqgq8HCBBFXYmhXdH9isTx
	V8A3aZaztT3KY0IdRPJFAN0TvZZnC80PqXyBtSXFKdcFsywnLQ/XcMP538n4+m+dK4Z4296axrTqI
	/gOnuBOgZ6N/5HANTteZSULTc2gw3/3GjmIcE6L1+spidxVY2d0w+oF2kVLwuAgNtElhHiT1ioU3n
	Sghn5d6tt3SGlli1EGHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qd0-002uBZ-U1; Thu, 16 Jun 2022 14:37:47 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qad-002rkC-Th; Thu, 16 Jun 2022 14:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=cQdXkHjIfdABxICRyXLMQvZ7JRraXFv/PnLRBa0ESzw=; b=S6TL2sVpi4cpLz2GzQmFeo8lgp
	PBZH67Y8ZpebKrTKEeZMZl0B6/htLZsRYbabXUIoscbj7iTaEALph2VaiKRjJJj4LlFk9Ipq0NIeN
	v1lod5LWUN+kWcG7lT9frg8uEZNzqjDacdriDl4Wg7qNMZjpqop9B5jocmRPWoxG6ZEfdWZJiY0o1
	5S8kzIKy7NhGnXDMSu8otMg7AMP15jMeR0djhlBAWafzNB47Jdvvrpf15/BDmWTZmEIT2b9MGEQ2q
	ZivTNw3zBy9IfcwQN9s+Tl6qI6v9DyhnDta6iySJb4DQBkzHeOtTnW0J/rMnSZ36oNl5FyoX9OaDe
	P70sP/cw==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kN-0d; Thu, 16 Jun 2022 14:35:18 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaP029573;
	Thu, 16 Jun 2022 09:34:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=cQdXkHjIfdABxICRyXLMQvZ7JRraXFv/PnLRBa0ESzw=;
 b=Jl2nooIzsiWYjdNBlpBkF2/ly/ePJsyAwFU9AKiP3Pt6axdOD8QXvBZ2sClgOox81O3z
 hBBj8uX1txWJNr/LizNRfc6YYIdmTeIwvOxm0ZFelhP0aCoOowvXtOJYyu0kL8TSq+Hu
 wv+CMAg5BKIS2nI5Rc4YekvFlH+Sii21EduXNjYyiV1s03+qjGhiiGEkbX7S/HM2uN0e
 S2Z8b62tGM1a6EImkUlAKzcdcRjwUYKMLkrGY6w4Lb9pU2qAprFk/P78QJRq88DbwI6U
 CR/JlMudGFu+dnWTUy4soslWDrvs9Xn7JssdYKpgQYhhd40K62ktH6eiR57UqxlOxjwP YA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-9
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:46 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:34 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:34 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 4FEAB11DA;
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
Subject: [PATCH 55/96] ASoC: pcm*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:48 +0100
Message-ID: <20220616143429.1324494-56-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: oK2INGdRnu1-Pm_VYVfbsvlywSJrYsH_
X-Proofpoint-GUID: oK2INGdRnu1-Pm_VYVfbsvlywSJrYsH_
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153512_453105_57F4D879 
X-CRM114-Status: GOOD (  13.98  )
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
