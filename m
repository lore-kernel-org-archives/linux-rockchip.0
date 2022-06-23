Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E4AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ6D0SDGseZSWPAtxXE+xgtxfhk2CiB3yZJ3FA7kQsM=; b=ihfNiRb+0QND0P
	BsL7Ck/AjbuWNkJG7MWMnEyh5Dr+SxUzuS/m8rLzT9ZVuarb1to3aJ984UWz9Q5VfidlQ2S/MoDLF
	WUBlFr6nFuDHqJBC8+ugqFP1nAbAUqSR/j132HwnB0ZLGBXq1oRDsAH3l5v7+T6tRnNd6GLMDK0xK
	6UBkQ0ynQteZBCmr+p6xkJPJL2hU9v3exlDDl39UpyKkVxTmSNxShMC5s2d+exawIBr9ASP1xzyJD
	tNMsRp3zPkGXy1hO0vYvier5tfCx8uZTQ42UyEO/iFnwHfthAezv1hYJ2X1FwghAY2EjZDsfCMCCZ
	cNK3WpW+U1lakJAXMu0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MQY-00FDpB-Qs; Thu, 23 Jun 2022 12:59:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNS-00F9xO-NU; Thu, 23 Jun 2022 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Hb1BJgs7ggQEBvQnvEt4VwE69+B1LapMjioM9qfBP6M=; b=ifBbg7YzCjTEYwx1q5J0vvUd/R
	gb2+XcI+5DTs0iJH5rmvNJnU5hCqHijio5gatuZrmbrk9fYNvA0ijZoGljZcQWZE+zEbrFTfXAiKe
	LOD1jgHHT1OtsFSNEu4XdrwPubL2VtCD8i0AQUcPiB49yiS8X36AaLiYBkCbRyVPHXsNZeuebijDy
	Zc++ZtgO5Ezg90/I7eG4WQaWGBwJ1oXDoVE3yCoSeKhkyiKjUaLsNSkcVjCbA9EgwVyOt7rK79AR1
	MK+6DqKaRxa9GjXfERM0idKRh7jZFMr53arPd7C+FEIFwVso7+WVj+yLjxKADd1zi49r3g5yjiW85
	nByto4ag==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj0G-Dl; Thu, 23 Jun 2022 12:55:59 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxlB032604;
	Thu, 23 Jun 2022 07:53:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=Hb1BJgs7ggQEBvQnvEt4VwE69+B1LapMjioM9qfBP6M=;
 b=HGHzcpeTXH7+P8hQzzwhOglX8iutqWzmgbDhU+laKB2O9sRiXjq9TCYtvrk85HQ8AZjO
 9lYy1SJo0lamTHLgtVGQUCcIPyvTfUgZuu+Bc4wMPrnqZ2Lj5OJXI5p9HfvO2GqwcIIJ
 0qOD47z5WbWyYFQMuvOpsfkUCpBq46KAUoRbVOWf1nxGtt0zZ/BCFohl53YujbBirpbr
 tk0QvlYMoc+KfkqLXXzWK+4JKz+k8qWt6hi1+QEp3imke9MG/ydG1mLnDhiueHI24mCT
 KEjy6+eL1KsrdtQI6QYt1Qg1B25JaHrp2wssLsc/xvG1jJDAZu6Ae0IhAt8Rw5iemjJX nA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-10
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
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 0D89611DA;
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
Subject: [PATCH v2 48/96] ASoC: alc*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:02 +0100
Message-ID: <20220623125250.2355471-49-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: bPrFlyQjN-mqvtJQ0K5eB64xEDoIwY0u
X-Proofpoint-ORIG-GUID: bPrFlyQjN-mqvtJQ0K5eB64xEDoIwY0u
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135553_855995_952DED92 
X-CRM114-Status: GOOD (  12.44  )
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
 sound/soc/codecs/alc5623.c | 1 -
 sound/soc/codecs/alc5632.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/sound/soc/codecs/alc5623.c b/sound/soc/codecs/alc5623.c
index 8e6235d2c5445..9ef01b1dd2941 100644
--- a/sound/soc/codecs/alc5623.c
+++ b/sound/soc/codecs/alc5623.c
@@ -956,7 +956,6 @@ static const struct snd_soc_component_driver soc_component_device_alc5623 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config alc5623_regmap = {
diff --git a/sound/soc/codecs/alc5632.c b/sound/soc/codecs/alc5632.c
index 641bdfddae160..a770704a4e170 100644
--- a/sound/soc/codecs/alc5632.c
+++ b/sound/soc/codecs/alc5632.c
@@ -1078,7 +1078,6 @@ static const struct snd_soc_component_driver soc_component_device_alc5632 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config alc5632_regmap = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
