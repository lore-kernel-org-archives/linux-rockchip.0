Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58904C3F2D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7DplByjCPD5QIcqKLPpFzoCzfdrxbD0TFbGnSyRhDs=; b=ODBm2JT/AeHmWU
	TQTluUr5GbiRChvfYLZV6sI81j7ol+1CFzi2S2nqaq5lISaAPBJdfXwpLL2nFqBWmWu5Q0oEb6Rl9
	nkDLevyOVK4/2pw+p0+9lAj8xSW30gyFNbcEUZO83QTacFYap8vngWybmaZyfH6Yb4iuwpSyw8a+4
	RY9YiWKAQhvZJ9ywFlCgKoL3zdb+AiNmfeGAtJ5kDDrr5exAf+TJK3OLgoG4bTcW6g6dif9qFRi93
	ShQ7CQUrEU9IQESvPeWSnB4OX1Op79Zko+ABvuNUkbfNxucFzQyWb5NYgGmDqohLO6pfjnS83Ppxl
	sNM0wnGar+LzCYQqQJ8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPx-00FCxf-P7; Thu, 23 Jun 2022 12:58:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNL-00F9m1-FG; Thu, 23 Jun 2022 12:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UJuHWsEpHcokhmwrN5fDMiRU1wxk1Rq6SwDqBfahFe8=; b=EgXXDR0+k2PJUPgLVUVxMJbG+Q
	6mVsH3w3itsEhl7OGHxhvfr3mzgxAI6gL5UlVNXXZju/olYl+hncDY+hvM30dfj50xk09YcWR7fXC
	aGFaW+Ssg+ST8bbJYWULAfu1NB8Eu7RwQfh7Z9BUb14nmMvHQH5L41R9Y+5y6SNSoZjBQfQkTsoyI
	CjNV5RuhdhyURBrrva3J17wBaqCwdRV3bJ8N0+2MAOkxpB17BNIdA1lyQFFmuAKnPXsmoK1FdHXmB
	KN4JBN8p9XS7gNjbRoV79lBnb1SOTYcoS2Uq5QaLGiv802v/4UFAqyX7AVV3iarkPUyo1LMFaa6Ru
	eNDGaIXg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj01-Dj; Thu, 23 Jun 2022 12:55:57 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrL011978;
	Thu, 23 Jun 2022 07:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=UJuHWsEpHcokhmwrN5fDMiRU1wxk1Rq6SwDqBfahFe8=;
 b=LcIPOo//2Ff+YXGPI1i10MIx+1/Hh2A9aYddVpxSDBUVmrXcvtL/mr/CfsvReLFBXn1W
 zqTjRSPsvG4vrgIfImp8i2IM7zEvEAf6Rjk32kmJvm2YHpG6qR68db1wcC23tGmgukS3
 PiFr7OBYXGDkXtObpdf77o+CJPuApGTdDzCo8mwdL10U2cxyqN0IqvZCmBd2D0egs1u7
 K1ayZmhG5TFB2J8Cy/feahT+C+ZzixPEJzwH0nYufS9sxaZksA7Qg3w1iwWU9sc3Ixw3
 Thvq7DMFWavexI+JyBj/ufLvEP1Kwo9Ks65kOQ2OkoimHkDxyhjh3n9uk/q+UA4iwpO3 PQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:04 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:54 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:54 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id B636311D3;
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
Subject: [PATCH v2 45/96] ASoC: uniphier: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:51:59 +0100
Message-ID: <20220623125250.2355471-46-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Mm_9uIY9dVSR-Uz1ghvJGZo2V1vDRHNw
X-Proofpoint-ORIG-GUID: Mm_9uIY9dVSR-Uz1ghvJGZo2V1vDRHNw
X-Proofpoint-Spam-Reason: safe
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
 sound/soc/uniphier/evea.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/uniphier/evea.c b/sound/soc/uniphier/evea.c
index 96343d19a1e0f..42403ae8e31b2 100644
--- a/sound/soc/uniphier/evea.c
+++ b/sound/soc/uniphier/evea.c
@@ -397,7 +397,6 @@ static struct snd_soc_component_driver soc_codec_evea = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_dai_driver soc_dai_evea[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
