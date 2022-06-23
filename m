Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA39C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+bB3YpoF8qFrmiu0as7FQBp7ATMLGlat2beUunl/9g=; b=bUjd5q4y9x7Qh6
	dLiZ0sNCCgRf7s0+oEMAScl60mqXgmFxrLMX+hW1RLP6dJDw5qrPVOgxjst5EOja9B4kiYtpcP/jC
	FkzblzHr2iVtI2piDgK5e55JdWcpliGxJpb3kYMLld5d8iWLKKG4424bz5Wy18OaXkgx6CGvFM59K
	yOxby/4WfJcrC2yPESMVQuNaKlPIsbL6h7+uX3STtgxNkq/PfzWNkON9tkhOe+CIU28D1pjWpDgq3
	/DvNaQH3Yg+ouCQ7RTZY8uWMAS6wmsEvhrrwmayLjqAFUr+yC12SFZzr2luRxYOsf58rgDOGioSmj
	OWR4BVgT2xs6xohVlvfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MP5-00FBue-2z; Thu, 23 Jun 2022 12:57:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLo-00F7va-Ak; Thu, 23 Jun 2022 12:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=M+rS2FAHnw/OU7TeyM1BsZv4vPscadgRy8jLr9eH3p0=; b=sd3M0C6XDRB5jkAciGQZ/K75vX
	rbVuOBOdl75aApVq8PxGD6GmTZVPxgch3HMwFUrEQDEPEadvgVxB6otWSTQW3yomDAx4h/fhR45zi
	PMkr9YsV3e449VI7aSJJglrHuZu7lXNoBLxx2pvJuPf4iR7o0ir6t0W2mGgvQHuzritwXs2cU+oDk
	Xxsi026apITNbBrszv5MZAE7D6rAqBOP73fBZ0CbXIwMcjxlVtnKW8M/CpG7OSYH/3ROSM/Xau3xe
	3TCZv2jNFRmrP6YzS1apaRFJ5VUITjycVPYdDpUutpr+R1pzyK8ivqP4dK/3p5W4Ztcg0MNh5KSNT
	xofMtOBA==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLi-007sAD-W0; Thu, 23 Jun 2022 12:54:21 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NAKUtD006859;
	Thu, 23 Jun 2022 07:53:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=M+rS2FAHnw/OU7TeyM1BsZv4vPscadgRy8jLr9eH3p0=;
 b=fmkoIlmbToJT12YC3F9xA0JIZidC2Wk4TCck9odBPwC8eFq9fqAL40z4uWElcGfNFqmj
 mmRnRfrs3AItoZrayEPV7kgLSbADbi4V730xq3cPKwJXp93adWzQKHlL0F+XzSs+gl6B
 GF1PoRUC4NQeoFz7h/24oKKEtIgyvJVQ1dCqs443Gs40PHK5ci1WRzTFKBh++f1RH9jE
 aEHzTrHqSh30n8BmCcwZGYvSbzQ+2fLA6QeVRXJVv8sPKpGthBsEd21dn5xrwOGc90ZX
 3gdADW+dE3ht+aC4xFn5Pk7yuLDxB4Aj7LG10HXhXYxdnuoR5Zdl1NsazQ71p98krhg7 6A== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4u-11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:10 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:56 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:56 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id D30E611D3;
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
Subject: [PATCH v2 69/96] ASoC: ads117x: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:23 +0100
Message-ID: <20220623125250.2355471-70-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 4MYVuYQaAjnrvk6c7gZft86ZZ0rbwe1R
X-Proofpoint-ORIG-GUID: 4MYVuYQaAjnrvk6c7gZft86ZZ0rbwe1R
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_369595_7F28936C 
X-CRM114-Status: GOOD (  12.62  )
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
