Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33AA7C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7DplByjCPD5QIcqKLPpFzoCzfdrxbD0TFbGnSyRhDs=; b=o6b4Flydcr4EcC
	FuHzAuhRkQxSQucgAuE+ENKrrRiTfkQ127VJ3vnFcb1JupM0POc3xK9Mptsjsj27PEhu/rPe8VSTh
	eIQ3WySxpIsKTMbCL3x+mhQM7PY6mFi7hswonmfW37iahT5g+f25lnPuvtPZNg2eFNcOIMPP3F+Ie
	TTLJ1astbewVMDbVkCd8NVD4iMV2mW/ub1h7jgGH0w8691cKGN4UYqYXOJuklLZnVZ+3BbEYlALKl
	dy8drJpUq+2p8f6KJSMQUI5zG9IlF/7AgJwJ2DhvGM9a8cQO9Y5ClfHh/rHM5M7UXsWjReKSPYqV9
	e3x/rW5+UYv6fhR1e4Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdi-002v35-Sc; Thu, 16 Jun 2022 14:38:31 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qah-002rnv-26; Thu, 16 Jun 2022 14:35:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=UJuHWsEpHcokhmwrN5fDMiRU1wxk1Rq6SwDqBfahFe8=; b=Fg2Rq9k/8YkaBG+P0vovuKtf0h
	CzR0nthbqqVTGCpTwRLLkkMBjop6ORr4uodQHQn2TA/uuPmYcietBZIr9YCNfCamEetv1m3b9c7XX
	95a4APq/+qsTvS0VPNzMarlSNIETFVTsS1Jhw7U9jpjJXspltb7ZMsCYU8hJy4jfbhLJReod/vlco
	ew/5mLKJiT766p3TBuG0UYE/ayfqzkxxxSY9lz/I79JIHS5acYsLEHjNVyfMCY7vUAB1BnVjFo53X
	xdxNiAstyjfOm2ZfVTLld0fNLmzVfwMqSxw9rWl/Z2TaqwwruQ+13r/TSydBhc/8sVzn6+0+ISoZ4
	t7AxE+kg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kL-HK; Thu, 16 Jun 2022 14:35:21 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaN029573;
	Thu, 16 Jun 2022 09:34:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=UJuHWsEpHcokhmwrN5fDMiRU1wxk1Rq6SwDqBfahFe8=;
 b=ZtLjH2jITqDxo5HxkOsBH4/LYuu+WWdElHfHDAs43NxQ+f54ymf+tjIn+63BGloD4NpJ
 9cq7oeJVUI/ZSnKSV7AGToHksISHPAWPc02HRYHhsWjISPqjwTAkEXcgu20or7sKPRio
 wlbsi/SirbkHNvf59BWV75lJUKJvE9GVPlzOwa61IswMvl6/m09/cXWsVfW6Py+0G7eG
 4JS335B+Gu++EEF58YKGkgKbhr7wFKgRevMDudgHczqnT8qL6QmBa9iYFYhlIUsHEEeF
 yqSCXN8aBMVj3fJqHWLvnHHHYmLmZ8Nx0vlwQOOJ4G64cDmW7lmBO0awnGo9hiKSbYcT Kw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:44 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:33 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:33 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 8E41B11D3;
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
Subject: [PATCH 45/96] ASoC: uniphier: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:38 +0100
Message-ID: <20220616143429.1324494-46-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: qjLHDRidj9HdpbM3NirBhuKFY2fD0dT5
X-Proofpoint-GUID: qjLHDRidj9HdpbM3NirBhuKFY2fD0dT5
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153513_851365_11BC5F94 
X-CRM114-Status: GOOD (  12.72  )
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
