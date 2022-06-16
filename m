Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32284C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+bB3YpoF8qFrmiu0as7FQBp7ATMLGlat2beUunl/9g=; b=SG/9LQ7g0ljBIc
	lrvCmXgnbxNiL5TMy67kwroOlHqw2hJvafQS0vN3DV9CtVi3JYi+qjbi2S7K75DYdgUJpMdcJDqJK
	BLjto8a29F1+tg6Bbdm1DoSgkQHvKZrbwLO8TgJhZC0Tm4x/cBw98DAY111mOczFxzCH21cNd5mCT
	pNLeai4Sb6iDREZUw9Xo4zDdZe9rn8VSepsxcyYMa0cZ5SlZLBL8paFMAZlqXTf7isI56GpeiMrWX
	YiO2tZ3IcYFrqemdwpnKtphCghT7cmwpYnbso6Ee5lVBoOls/VTIgRnLEz4SXgsRuPtmeleeOEKSs
	pguePkQdBtlwVv3816ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qde-002uxr-Cd; Thu, 16 Jun 2022 14:38:26 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qag-002rnn-UG; Thu, 16 Jun 2022 14:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=M+rS2FAHnw/OU7TeyM1BsZv4vPscadgRy8jLr9eH3p0=; b=pd70t7Iv+ibRj+TdC/RYdBvZ2k
	FU5QMf6CJ7ldZqzWNQS75bzjKyCxPCOcpmA0u99Uci49ZTgzLvZdL6ba5M9H4jxz5Kf4xhEqny/ek
	yjzk7XnV3aeFpqSz8nK+xHRElxH4ePigFGguq488d98nSv4TaKrbQRlz5gw/huCDLkjWNvdMBJiL4
	QsnwjsufHX42w/P2hOaXfAtLmSzdYRseAzvuZsbMEk6NPdopsZdm+wwu02DSbJpTx2YB5SI8G2qpS
	luOaMNdhnSL1vMMjuAXTtYnSOnTwqrsHfEFtgYC6W7aoa2j4FTXkjVbxUXFgOX/Jg8F/J+7ZGrat8
	AZAIHCwQ==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kI-1T; Thu, 16 Jun 2022 14:35:21 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaT029573;
	Thu, 16 Jun 2022 09:34:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=M+rS2FAHnw/OU7TeyM1BsZv4vPscadgRy8jLr9eH3p0=;
 b=UISMNGOckkPWJF98tmdC0epq8MlXVUt3GyjKsJ4N0+/dIkROXIqkLKYh5lWa7PrxVp3U
 Z8LgfXusz0GxsXmxQRpmVjjPG6t+pG4L63uZl+/2RXQ4zdG7BnyLW2B0xNUFJJkcOGKR
 gKkvZxZ1uIv2v3eRis4IMgWucrWc4UgEmb/HEaAcjrjkTvoY66Dn6uZtvYyKgfmGpt9f
 lB0+ViT4V+pQowmerIMPdSd78Mlxspmg0Wh324t5qTl+wgdKVqUctxdLgLxS7+iTduu8
 ekLuPRkdTntT0q1St+2Msl39xVIW6WJywMRYtNxYBNU+xYX9Wrlwk5X4iTx8mPUKnyUs CA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:49 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:35 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:35 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 6418911DA;
	Thu, 16 Jun 2022 14:34:35 +0000 (UTC)
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
Subject: [PATCH 69/96] ASoC: ads117x: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:02 +0100
Message-ID: <20220616143429.1324494-70-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: GL5hs2lQGxucSzGsCd72FSuMRPV-3GAf
X-Proofpoint-GUID: GL5hs2lQGxucSzGsCd72FSuMRPV-3GAf
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153513_515878_9E6EEFD5 
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
 sound/soc/codecs/ads117x.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/ads117x.c b/sound/soc/codecs/ads117x.c
index 1d07e2699f04d..44aa06e034869 100644
--- a/sound/soc/codecs/ads117x.c
+++ b/sound/soc/codecs/ads117x.c
@@ -62,7 +62,6 @@ static const struct snd_soc_component_driver soc_component_dev_ads117x = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int ads117x_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
