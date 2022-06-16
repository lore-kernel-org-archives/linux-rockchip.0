Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C257BC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+woRPpZxQbSpE7z+OGuzk5DB4oCFv2KSe7ju7FLJpTE=; b=k2Da5Q/jcji6gk
	+BkiRdrStT2yG2x10t7EsluheLev3XxV23Ynp7ieCFV3EJv5ZKbjH8nhNh8WNOId6pWsT0a8/hnPP
	3/kfUXbCs4LAECCbvJW3W4UOxvnW5NEGg/piCSZUYz2/KLzqYFr/TFi+4EPz0cXDgrVoVgobY0y02
	pBp5uXlJl+C4y95WdE9PP70OO4hFGRVDOSxjSJJ2bjm9DeeCw1WS3KTtH92y3FZc2YR3IUW5P1vt+
	7LrOyAlwqcMW48CXChDnr+ZpTvRGsqz5HOudD5cSPkxMDqKyN2eKNiLna9cmMfIigY+ixNOSZr7oE
	Rm7GxxL2u8FX5CI6wTQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaR-002rX1-N0; Thu, 16 Jun 2022 14:35:07 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaG-002rPX-1Y; Thu, 16 Jun 2022 14:35:01 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC07C6027888;
	Thu, 16 Jun 2022 09:34:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=7CFQF1uFAN//bgNV90FI/dawvD8nMJvY6YyL1sfuCCA=;
 b=ePnypGaimYdu2/E8otHOHksaSwEI5tFkGl6y5Fq3xzm+ht5yAmsKe9zYayduWqH2l84m
 +uSblyGRlCsz1UswsGo1JJRZIA/9cg6MImFz80nZWQQ/Rmi/houUjEOK9YPO16Twbwi7
 cgBX7LywrKgY+drQ32+vFhYGlROm0xP2UyMNV/CKGDBzpWE3bYcV0I+qg+vsUATkgh6N
 7M27SS2klufV+yIfqrkp1Y6TOwlri2kJEX6XJS4bNKvEbVVFK5T7MsftYcvWdsmBsb+5
 rTd6ciptBkUWMy5ll2o0Th4aohIInfJTIAvFb3GNfGKQRIrrxt8A3RWBU1/H8Vk8sa5R Hw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuu-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:34 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:30 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:30 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 7E197478;
	Thu, 16 Jun 2022 14:34:30 +0000 (UTC)
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
Subject: [PATCH 07/96] ASoC: ep93xx: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:00 +0100
Message-ID: <20220616143429.1324494-8-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: m1riLdFR0JRu_RIVN-zzoYOQGXWc_1Al
X-Proofpoint-ORIG-GUID: m1riLdFR0JRu_RIVN-zzoYOQGXWc_1Al
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073456_152494_384F9BCB 
X-CRM114-Status: GOOD (  15.28  )
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

Change the legacy DAI naming flag from opting in to the new scheme
(non_legacy_dai_naming), to opting out of it (legacy_dai_naming).
These drivers appear to be on the CPU side of the DAI link and
currently uses the legacy naming, so add the new flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/cirrus/ep93xx-ac97.c | 3 ++-
 sound/soc/cirrus/ep93xx-i2s.c  | 7 ++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/sound/soc/cirrus/ep93xx-ac97.c b/sound/soc/cirrus/ep93xx-ac97.c
index 16f9bb283b5cb..37593abe60532 100644
--- a/sound/soc/cirrus/ep93xx-ac97.c
+++ b/sound/soc/cirrus/ep93xx-ac97.c
@@ -355,7 +355,8 @@ static struct snd_soc_dai_driver ep93xx_ac97_dai = {
 };
 
 static const struct snd_soc_component_driver ep93xx_ac97_component = {
-	.name		= "ep93xx-ac97",
+	.name			= "ep93xx-ac97",
+	.legacy_dai_naming	= 1,
 };
 
 static int ep93xx_ac97_probe(struct platform_device *pdev)
diff --git a/sound/soc/cirrus/ep93xx-i2s.c b/sound/soc/cirrus/ep93xx-i2s.c
index 47959794353a7..982151330c896 100644
--- a/sound/soc/cirrus/ep93xx-i2s.c
+++ b/sound/soc/cirrus/ep93xx-i2s.c
@@ -422,9 +422,10 @@ static struct snd_soc_dai_driver ep93xx_i2s_dai = {
 };
 
 static const struct snd_soc_component_driver ep93xx_i2s_component = {
-	.name		= "ep93xx-i2s",
-	.suspend	= ep93xx_i2s_suspend,
-	.resume		= ep93xx_i2s_resume,
+	.name			= "ep93xx-i2s",
+	.suspend		= ep93xx_i2s_suspend,
+	.resume			= ep93xx_i2s_resume,
+	.legacy_dai_naming	= 1,
 };
 
 static int ep93xx_i2s_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
