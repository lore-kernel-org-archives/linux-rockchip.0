Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E541ACCA493
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDeOe5e3EkuG3AspzsmKPc7rVU21znvqOTLQJkunylI=; b=wgWnAHr9w9+RfC
	nJ9QMyXrva2UZM6AT5dLEyCdyfdWvKswj0qUWabbrz2H4BYS76BcWmGZxAKFeJSYXOkLjnQ0c21wg
	hzmF950aG0TNJ5C5KadvxOvL30tZ3ca3YVNin6sjBJbF8ZRaeBKC4Fgm9Mr54c4/mlK0RIFUKdm/R
	F0+oLiNmg//DITJi9vRaBEpBrGfG6VW5lzLaV7IG5V+ZoX6v/BpvXJ0yGL/uPQehJXQiH6FUUXM8L
	QsINC/MdjXB6Et6ZVSn/f5FsReaLtZUypIvTKeEirky7wk1jPAu9ds25XbF8iO7brITIKe3umLGw5
	ko/J6Mc/Z7wRGeb6R/bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qb9-002sDz-Ud; Thu, 16 Jun 2022 14:35:51 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaH-002rRe-VW; Thu, 16 Jun 2022 14:35:05 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJY015765;
	Thu, 16 Jun 2022 09:34:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=Z4rUFJQC8NApp1mf+grKH2chieKDYOmZYhpQ8q1UBdg=;
 b=e1rFS6HGcELEataAYSB9YKaFyfKYXDbP5iFBJ4Jj3DtlrzcfIjj8PPGa53F6eZ/iQwzg
 Yn0ko3toaVGMTOfsyjMtgG/u4zY9FUVL7r0LTx3TZYYuqhrJTMF5QukQ9FE1y9sWW1GX
 3mN+u23i9gm68Z5olpxtS92+89DEIv9a5+yfNICp9X2XkBr65UCnAGGVApAdOKq0ruAu
 my1utuOozAGt/1o7lc9StElt9zCcyZkTzDNW5I2ITlV8AW233jq7HSbut1TBtHtlGafv
 rG0j2OiLAA86owsx6N2MIW6eQ8pSS571tBG+3NxO3xiOGf/HhyqtIb8dBs0Q/+vukZUr qQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:34 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:30 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:30 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 9F971478;
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
Subject: [PATCH 09/96] ASoC: bcm: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:02 +0100
Message-ID: <20220616143429.1324494-10-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 3zHa20P_xhcoVdD1hy7wKILCc4DBWNEb
X-Proofpoint-GUID: 3zHa20P_xhcoVdD1hy7wKILCc4DBWNEb
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073458_169562_DD291D1E 
X-CRM114-Status: GOOD (  16.74  )
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
 sound/soc/bcm/bcm2835-i2s.c          | 3 ++-
 sound/soc/bcm/bcm63xx-i2s-whistler.c | 1 +
 sound/soc/bcm/cygnus-ssp.c           | 7 ++++---
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2835-i2s.c
index e39c8d9f40995..f4d84774dac72 100644
--- a/sound/soc/bcm/bcm2835-i2s.c
+++ b/sound/soc/bcm/bcm2835-i2s.c
@@ -821,7 +821,8 @@ static const struct regmap_config bcm2835_regmap_config = {
 };
 
 static const struct snd_soc_component_driver bcm2835_i2s_component = {
-	.name		= "bcm2835-i2s-comp",
+	.name			= "bcm2835-i2s-comp",
+	.legacy_dai_naming	= 1,
 };
 
 static int bcm2835_i2s_probe(struct platform_device *pdev)
diff --git a/sound/soc/bcm/bcm63xx-i2s-whistler.c b/sound/soc/bcm/bcm63xx-i2s-whistler.c
index 527caf430715b..2da1384ffe911 100644
--- a/sound/soc/bcm/bcm63xx-i2s-whistler.c
+++ b/sound/soc/bcm/bcm63xx-i2s-whistler.c
@@ -218,6 +218,7 @@ static struct snd_soc_dai_driver bcm63xx_i2s_dai = {
 
 static const struct snd_soc_component_driver bcm63xx_i2s_component = {
 	.name = "bcm63xx",
+	.legacy_dai_naming = 1,
 };
 
 static int bcm63xx_i2s_dev_probe(struct platform_device *pdev)
diff --git a/sound/soc/bcm/cygnus-ssp.c b/sound/soc/bcm/cygnus-ssp.c
index 4bfa2d715ff4d..8b7a215730707 100644
--- a/sound/soc/bcm/cygnus-ssp.c
+++ b/sound/soc/bcm/cygnus-ssp.c
@@ -1201,9 +1201,10 @@ static const struct snd_soc_dai_driver cygnus_spdif_dai_info = {
 static struct snd_soc_dai_driver cygnus_ssp_dai[CYGNUS_MAX_PORTS];
 
 static const struct snd_soc_component_driver cygnus_ssp_component = {
-	.name		= "cygnus-audio",
-	.suspend	= cygnus_ssp_suspend,
-	.resume		= cygnus_ssp_resume,
+	.name			= "cygnus-audio",
+	.suspend		= cygnus_ssp_suspend,
+	.resume			= cygnus_ssp_resume,
+	.legacy_dai_naming	= 1,
 };
 
 /*
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
