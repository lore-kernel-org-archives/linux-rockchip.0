Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4418CC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCb9eaB1zucEB19oRN4q5QSboMR10XQA9Tdn3Sscvbg=; b=B9Nd0zcwh95JWZ
	tZnRDhJ865a9AZQ69Qf8f2Ch0Ugb266IQxdCtpr+tc5l4MNVvEY9VSVmz2Cd0dpMTwqR9RvRj4h+A
	qQXQnRFrZwT5wenuQDGlBkLM8yRqUZ6Ck1JXNFZC2PEC7Al4wDrZ3cu0pmPjTVJ3MxE/CtgbYlq45
	qVboxR6qxKzUlbYdrBds0Mkw5DN5z/M21cOVCvFebDEvQP8QFy9rLO3KJmrteAiA9ps7ezP5Qnfp4
	/M0Eio7gKE5L6ckneykAwvHO3Dh+OLLtYBL/tgTv0/hHKOYZT8AHgx86FatEMnRJSkDileZuhOydt
	0W/vzWTmw1s1Y+gPPkZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdc-002uvi-3N; Thu, 16 Jun 2022 14:38:24 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaf-002rlg-41; Thu, 16 Jun 2022 14:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=5u1RRmu7INaJEddTKiCr8kHZ6DSlTxPNQ7NYNisLbCw=; b=M40AdC/KnvBK5drAxwPuDY+l+m
	uy099U8d6T2jlhKTbEiLSVieH4FiQm0KJnUGlGuOKQf91m3eXcSmIf4H7fy74eAIkwuPxo2MK9wWu
	ZX5HMH9DnLiZX0cDRxO55JkpyfDW0Y/t6CNV9XS1abA4HUL9kTZZ1hIuOBXUq/v1puspNSEDELBJV
	bbvEPus8MyB9O46Z3r+CTfYVMs9+LLkCJIly+NJHMUwsHV9BLpoMj0BzPhKH5cynjClgOanz+g/3t
	/+qALjKGWECTpxR+ec1gOTU2SNsdunEdmNu6x9GKg0BxdinF6UGVtrfTNQRnrkMT/4YfhQ8EDWE2g
	p2rbTRUQ==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kV-HT; Thu, 16 Jun 2022 14:35:19 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G4igBm030693;
	Thu, 16 Jun 2022 09:34:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=5u1RRmu7INaJEddTKiCr8kHZ6DSlTxPNQ7NYNisLbCw=;
 b=ipIjM2MaVulJYYAZLrHcvhvESUKbrG4yT4ufJn5KUyswhbf29DkVG06es/+I9nlCDZnN
 QaoWf4zNyg3M3T7Kb/2+rfYEkJlPNba//OPf9ALvwh2CaBDQFFuRNNNHXjoWRQsHQbgN
 tpthgIUqdHNW8DDPb6AInWQTDvPJtVALYorII2H8RiQovYvygaPvhNlKMey1y/zBdLOi
 wvw4GbVCtM6avydfGHq+tFTp6BTfyXLqrNorOzxYzh5AfGzhP5y2cG1Ddk+YK8yB/KtW
 ZQEZ/HHV8n6Sic6ee0S9RHWAnOqUSYTc/y/yHlXQun5ZO7o4RMYqoL3Zsci6+6eOSYWw yg== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuw-16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:51 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:36 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:36 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 42EA611DA;
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
Subject: [PATCH 79/96] ASoC: ics43432: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:12 +0100
Message-ID: <20220616143429.1324494-80-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 26JWyD2Fgc0NcCJHWA1HJ_ihL1wzCAjj
X-Proofpoint-ORIG-GUID: 26JWyD2Fgc0NcCJHWA1HJ_ihL1wzCAjj
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153513_287559_AD684329 
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
 sound/soc/codecs/ics43432.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/ics43432.c b/sound/soc/codecs/ics43432.c
index de4c8460ab3df..58a3822547189 100644
--- a/sound/soc/codecs/ics43432.c
+++ b/sound/soc/codecs/ics43432.c
@@ -41,7 +41,6 @@ static const struct snd_soc_component_driver ics43432_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int ics43432_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
