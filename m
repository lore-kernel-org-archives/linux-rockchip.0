Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC42C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 15:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCoO/x7rowtdS3iSA2i5kNgPspAyKlGPrHoBOxQh5N8=; b=OVkq+ZPcWQF2CR
	+33k+PJpz5YP26NyO442d+UFKJq2WKT+FAsem6J4ilfUHjLRZMMQ77MoZx940gtv09heJlJrem0Au
	8HUKl/9AFgzassSFgKzGvB0xFVPajpITYU5mJew3yu5vQogFgwpS/AOq0vH/HUiniO+my3YyPmybx
	Ean1QuXjUGWON6kqXCtXvnHwDNcSN5ELwBV5rCwhHYLr1Vks0iC6DV8REA7lOFirG7uOB4UUQTppm
	p5SzA05fHLaaYaadmiRAGX3C1yOkKKzpWMjtlUvjOUiqE70Jr8RcrMTRNvZSQrHy4fDFgBl7+gvcs
	jypKTm0Akn0tjn14mzzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qyU-0036F8-6v; Thu, 16 Jun 2022 14:59:58 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qyP-00369R-D0; Thu, 16 Jun 2022 14:59:55 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G9kEUH001578;
	Thu, 16 Jun 2022 09:34:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=xY4xsRe/jm0kTWlxz5PklVpNc7pAIqqRFHsrc/CWjnk=;
 b=M/od6+SASLau2MAVTBhZmd7nctO99F3HjcaBMw8lkg6q88PAL2AY2fcHRUAo6VnXdZiC
 qPnSEDXx2o3BXWVkDiMFwE1MI3BpU8yEA+K2d+PQ3uwDo6atVTP/GuLzbqs67grbv8qR
 eEllKwyYWm+3pVHI9G5lbHW/5V0VFKztENM/RbM17YL6JTU52b8kzx2WWYKNdD6dw5Kx
 HzrRfkGzupeIvxrrIvO1fiA8gSVcfeSpIByqLom6BkEVZjhcZyizbghHCqCSwcVGgZff
 v9dWvaSZ3JV0Nttyw3pjpwbBR9+5QEgseetAnK+SEfCPTHn2S5WDsKEAyvDjytEXobSA og== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:58 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:36 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:36 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id AC9C511D4;
	Thu, 16 Jun 2022 14:34:36 +0000 (UTC)
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
Subject: [PATCH 84/96] ASoC: lm49453: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:17 +0100
Message-ID: <20220616143429.1324494-85-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: PBppb_Vl-GdYod6diQV9HydO2wAn2u8q
X-Proofpoint-ORIG-GUID: PBppb_Vl-GdYod6diQV9HydO2wAn2u8q
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075953_542449_F0654679 
X-CRM114-Status: GOOD (  12.70  )
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
 sound/soc/codecs/lm49453.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/lm49453.c b/sound/soc/codecs/lm49453.c
index c4900ada86184..a2e782cc4276a 100644
--- a/sound/soc/codecs/lm49453.c
+++ b/sound/soc/codecs/lm49453.c
@@ -1399,7 +1399,6 @@ static const struct snd_soc_component_driver soc_component_dev_lm49453 = {
 	.num_dapm_routes	= ARRAY_SIZE(lm49453_audio_map),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config lm49453_regmap_config = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
