Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1533BCCA47A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qKTsql5DfBl2hgnOSoUuJ54sK+IwB9RM6pt4nibpNw=; b=UhL/mJ/OmkpTDI
	s4v+FcwnhujxKRLIH8SrOhvolu1ZNfUxFmp/gw6nV1pVW4ShioCPu2n+cGQoichIwKOb/4/+81s7h
	pR6VxtjxCEyPg5Ocv9Pt4zNkdfix4Ys4vs52RTan0DSobqkNffCSsj5z3t4g2vLaVvRpycdpOMZlA
	09gu/H5fluYWPNluEbuKubokt1gBW6ShZXDKIoEdpgSQpR/r38ODXAXiGsNjOgE5o7NueRF8Tpg12
	ar9tj83vpShjoSd6rCYy0WPTVjNIHAK77abtTd5M3aqD6aDS17TlPwTZKX8uzYqsbKf/DqYDR7Yvh
	2rJ6eP+AgfKj6GxppANQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qvK-0033iz-S2; Thu, 16 Jun 2022 14:56:42 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1quM-0032KF-HE; Thu, 16 Jun 2022 14:55:46 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G4igBf030693;
	Thu, 16 Jun 2022 09:34:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=2oOH0ajpjX51SxIUnf5QoeLn4u7Pp4JTnUSfyoYuy5c=;
 b=i4UojuP3+fYWIylNZy5aAraWVB3cBLs21E+SNjyYBFMxDcpGSJPsnZ7DMwWuA6E/zC6P
 vNXWdhFRWZ+EW2DKHAScxNf5h1eM2fupu5OypzIKPNEqNrbrzjDiXvhtAMV7slqQxZtF
 G3Xsymw3uSBrVXVd7cMjUpArEkPK+z1RlViGoV8jkPGKvgoVjsbN6mrCIsRb1ujkDmlM
 l53FV9rFgfktH/+1OBgsnJRzNDiQmNoOt22yqADKYmp1h9oEtGrmWqDmCVdcQkl6bC/K
 iCQoH/2NjieI/OtpdqcnrhSnQwgMYUzsomz3jXBBEU/Hk1eQXXJhSjovQPpNcYD5znCu ew== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuw-10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:44 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:33 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:33 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id E09AF11D4;
	Thu, 16 Jun 2022 14:34:33 +0000 (UTC)
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
Subject: [PATCH 50/96] ASoC: da*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:43 +0100
Message-ID: <20220616143429.1324494-51-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: t-omMM0I0UdP1B9pdRzYB2L5YI1LsVJs
X-Proofpoint-ORIG-GUID: t-omMM0I0UdP1B9pdRzYB2L5YI1LsVJs
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075542_686486_0F9981E4 
X-CRM114-Status: GOOD (  12.46  )
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
 sound/soc/codecs/da7210.c | 1 -
 sound/soc/codecs/da7213.c | 1 -
 sound/soc/codecs/da7218.c | 1 -
 sound/soc/codecs/da7219.c | 1 -
 sound/soc/codecs/da732x.c | 1 -
 sound/soc/codecs/da9055.c | 1 -
 6 files changed, 6 deletions(-)

diff --git a/sound/soc/codecs/da7210.c b/sound/soc/codecs/da7210.c
index 76a21976ccddb..f838466bfebf8 100644
--- a/sound/soc/codecs/da7210.c
+++ b/sound/soc/codecs/da7210.c
@@ -1173,7 +1173,6 @@ static const struct snd_soc_component_driver soc_component_dev_da7210 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 #if IS_ENABLED(CONFIG_I2C)
diff --git a/sound/soc/codecs/da7213.c b/sound/soc/codecs/da7213.c
index 2e645dc60eda4..544ccbcfc8844 100644
--- a/sound/soc/codecs/da7213.c
+++ b/sound/soc/codecs/da7213.c
@@ -1922,7 +1922,6 @@ static const struct snd_soc_component_driver soc_component_dev_da7213 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config da7213_regmap_config = {
diff --git a/sound/soc/codecs/da7218.c b/sound/soc/codecs/da7218.c
index a5d7c350a3ded..91372909d184b 100644
--- a/sound/soc/codecs/da7218.c
+++ b/sound/soc/codecs/da7218.c
@@ -3040,7 +3040,6 @@ static const struct snd_soc_component_driver soc_component_dev_da7218 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 
diff --git a/sound/soc/codecs/da7219.c b/sound/soc/codecs/da7219.c
index c18f76f370fc4..50ecf30e6136a 100644
--- a/sound/soc/codecs/da7219.c
+++ b/sound/soc/codecs/da7219.c
@@ -2647,7 +2647,6 @@ static const struct snd_soc_component_driver soc_component_dev_da7219 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 
diff --git a/sound/soc/codecs/da732x.c b/sound/soc/codecs/da732x.c
index 3f1cfee10df3f..2c5b0b74201c7 100644
--- a/sound/soc/codecs/da732x.c
+++ b/sound/soc/codecs/da732x.c
@@ -1503,7 +1503,6 @@ static const struct snd_soc_component_driver soc_component_dev_da732x = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int da732x_i2c_probe(struct i2c_client *i2c)
diff --git a/sound/soc/codecs/da9055.c b/sound/soc/codecs/da9055.c
index 9d8c8adc5d768..28043b4530df8 100644
--- a/sound/soc/codecs/da9055.c
+++ b/sound/soc/codecs/da9055.c
@@ -1460,7 +1460,6 @@ static const struct snd_soc_component_driver soc_component_dev_da9055 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config da9055_regmap_config = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
