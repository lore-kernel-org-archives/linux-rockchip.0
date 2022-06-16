Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8412ACCA49B
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6j5+AwG39BiYdWHjzpeSVSdUshSpjn5ts7DIqyx8Q0=; b=iDHfmrba/jpIPk
	GfoDYLsTnpQQz/aYAOACDWlu9tkTwbhEpu0EXS1kjKwvZ5UtG9EcLaP0+lLu+5+BEpJl+iyWXHRmk
	1ScGEZmrLe88l9LVDpDbAwgqvXUar09p1hujq8v2587S/oA2s5y3Q1eEd8nEEohArKk9+pjWdwtWn
	hYbTE3Q45/Zqgj2kH3fv9U4ZBHR+Ooz+bl/yUE3c6Xi+TgU/gYPfwIArsnwq6bLjWtpf7Ldp27oK4
	m7+qKaNHELMNQ9WX4HUpfUAb3qYBWCp3qjZbTWONsvgSFD6ABCU2r2fXKTdyI3HLwLkjL5L3tdXTw
	Dk8IfyCUY9DzpLzrdy3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qbi-002sfe-EU; Thu, 16 Jun 2022 14:36:26 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaS-002rY5-Q5; Thu, 16 Jun 2022 14:35:10 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G4igBh030693;
	Thu, 16 Jun 2022 09:34:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=vlkEX7RNFddpO/aDpfiCPJt6XWVaMAGTeCyH39xTp1w=;
 b=kbGYHMTyjM2Nc21Sd3Rcu8i4hbQ0YSUhaQM6W/hKeVvXRX8tHlZ2pMMrb+vSsJXCpG8x
 p4EaZjciZ8Oh/nK1hroK7m2Y1VQUwJrX5sW6ty8btzBpo1e/pcIIgyHWW8Ip8MvzLvFG
 F+DIMbp87lMQitPTH1rmS9Mk//A3zVHGvhBoR48YbCt01uKLTu1TGxqwHjYKKQhOomNP
 2GQIDt+m9S20iE7MAvJAdOfxl9fX5opYx6Pjg5D6OfTUd9OUC3B7KkcDkQ0p9dqTsNRl
 KlJNxtxedPOiq1e2ET0UU8imA/mh4FryCdEzpioFlBOoH6LPyzN/hcGJVfeo09eIPczE lA== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuw-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:46 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:34 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:34 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 95CE211D4;
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
Subject: [PATCH 59/96] ASoC: sta*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:52 +0100
Message-ID: <20220616143429.1324494-60-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: LR7YdrIm3nU46uHXPyh1joqhO8vE7vut
X-Proofpoint-ORIG-GUID: LR7YdrIm3nU46uHXPyh1joqhO8vE7vut
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073508_892567_1AE21554 
X-CRM114-Status: GOOD (  12.41  )
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
 sound/soc/codecs/sta32x.c | 1 -
 sound/soc/codecs/sta350.c | 1 -
 sound/soc/codecs/sta529.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/sound/soc/codecs/sta32x.c b/sound/soc/codecs/sta32x.c
index 17e5077f26b00..8c86b578eba83 100644
--- a/sound/soc/codecs/sta32x.c
+++ b/sound/soc/codecs/sta32x.c
@@ -1014,7 +1014,6 @@ static const struct snd_soc_component_driver sta32x_component = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config sta32x_regmap = {
diff --git a/sound/soc/codecs/sta350.c b/sound/soc/codecs/sta350.c
index b2d15d20fe63d..7b2c5b57d5d45 100644
--- a/sound/soc/codecs/sta350.c
+++ b/sound/soc/codecs/sta350.c
@@ -1057,7 +1057,6 @@ static const struct snd_soc_component_driver sta350_component = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config sta350_regmap = {
diff --git a/sound/soc/codecs/sta529.c b/sound/soc/codecs/sta529.c
index d90e5512a7317..3139570991454 100644
--- a/sound/soc/codecs/sta529.c
+++ b/sound/soc/codecs/sta529.c
@@ -322,7 +322,6 @@ static const struct snd_soc_component_driver sta529_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config sta529_regmap = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
