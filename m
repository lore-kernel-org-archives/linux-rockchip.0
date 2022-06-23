Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47971C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZdh1QcqEuqemkgzB+ewc98x4Lg79bbxR2EMTB7ASf0=; b=umi28VundbJU/R
	W8MM3riyW5j8amt3n0z3bRQmMd6I+v24LojxNWHhDS1GR/Z01YSnWgxT6B7nIl7ejIM+T0es0z923
	UZHATw8VYlgXUpXimHuWFP5B4BAZy8ojtxMp6nbZsdzLje2xEyOMA7RHin5/G0uLXa2sHiK19Ia49
	F0aA5JLEJO5JWNxBiJY9yql3YEdm5Q43Ioq0X6kK8C3MxC4M51nFhmoNXQ8lD/fwBHd1bWDxUdAZ1
	g/1itUrhA+g748xG+An+j4CjaXHCeU6s8OkGUE6pdj+KbJGOaOKwBsQvIKilGP2DgQqBKUjiWpAVM
	cVdAgjslzRvbwFxCQ3LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MP1-00FBof-Sk; Thu, 23 Jun 2022 12:57:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLo-00F7uw-Ah; Thu, 23 Jun 2022 12:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=l/BjmovFcC1gHztHkGDqa9sIcCV4lLUAh4OlqigaJOs=; b=tWhYSO0MDdSIP4cvcLOPeJYmIZ
	hpGu9PbE1StR3P/sqqvxUMZGMrYSj2pzMPay6R12625qdAArsakNgNJIMulOopWbVBpQjdAWbinXd
	S3Q3D0YPkh9d/BSmXLkF89W62lXbRgOpjUFbO0KpHAodMSIZQfmgMqPNzpcKKdaWwglXJLnYZK8jX
	9gLzp48z55nLocr5zCnhl+V1C51I/gv4W3PYiHVxG9MMhfexvGg9mF/Qldo+TKm23YLFKkkdOfDiH
	oTY0OVWSPA8srZ+/j0HUhJVQSZwc3xDfNVuVidyBDxZMRGk0qMhl/eeIAM/2ewhJ8ml+XeW8ZugDq
	gwAu/pZA==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLi-007sAF-Ue; Thu, 23 Jun 2022 12:54:21 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqm015665;
	Thu, 23 Jun 2022 07:53:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=l/BjmovFcC1gHztHkGDqa9sIcCV4lLUAh4OlqigaJOs=;
 b=NN+O+SU5AtTfF/Cj888CEDrGYASE0mwfWgVdeBj3K0jAaZdKwamOdDnnMMN82A4wnmE9
 KijZwIZXpzQfTJAzYxAlRGkSPIoXjg8zdNldvM1W8GTjZ4dxQrHN+JBIqTvI2db/f184
 iiC3lrkMGq2pPZHdb1t+z+jjZAtVfhokUqrtuKdL3mnUCSoy8J5JgCSSlaCAhtg8L9eM
 X0YtX1hd6aZco1foUIiJLLcl278lsuiYVy0AZwavA9Npqdf3QoYmlhOe24p/yC2y83XX
 se1PFXnl5/PLoZBFVbqJpUYMBiO2Uu7+Ibe5ol7SyURonkYQu22yDdwv36B9MXaP8Gnm yg== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-19
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:07 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:56 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:56 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 2F17D11D4;
	Thu, 23 Jun 2022 12:52:56 +0000 (UTC)
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
Subject: [PATCH v2 61/96] ASoC: tfa*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:15 +0100
Message-ID: <20220623125250.2355471-62-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: c6BG-vub188I_XRw4QLITLFLgZM1-CQv
X-Proofpoint-ORIG-GUID: c6BG-vub188I_XRw4QLITLFLgZM1-CQv
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_408945_7C2BDB61 
X-CRM114-Status: GOOD (  13.28  )
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
 sound/soc/codecs/tfa9879.c | 1 -
 sound/soc/codecs/tfa989x.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/sound/soc/codecs/tfa9879.c b/sound/soc/codecs/tfa9879.c
index 41a9b1b76e629..9f7902ec40db4 100644
--- a/sound/soc/codecs/tfa9879.c
+++ b/sound/soc/codecs/tfa9879.c
@@ -235,7 +235,6 @@ static const struct snd_soc_component_driver tfa9879_component = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config tfa9879_regmap = {
diff --git a/sound/soc/codecs/tfa989x.c b/sound/soc/codecs/tfa989x.c
index 8ab2656de7505..1c27429b9af64 100644
--- a/sound/soc/codecs/tfa989x.c
+++ b/sound/soc/codecs/tfa989x.c
@@ -138,7 +138,6 @@ static const struct snd_soc_component_driver tfa989x_component = {
 	.num_dapm_routes	= ARRAY_SIZE(tfa989x_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const unsigned int tfa989x_rates[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
