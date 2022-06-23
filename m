Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46070C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyNy+uvwL4DmD7JG0lNQQHnFxP0p5UB0CwHv33Y9XYs=; b=GTOjk+yf5IGIhF
	6paHYqqRUn4QeNz96rv4uWRFtIA04RGZHPz9z4Khl/8bxqdhhgLCjuxMSpyJugDne0yiHXpwrbSLe
	YDf/ptcQ+vI0mv05G8uzWSQYavBVm5BZF50aP/864i/I/oRzkS8CfyYEtnQ997asp9ZHgBhb+Y/t6
	5zTPjAemKWg+04Hn6tHONrk3bcDPccvGlxeSytorNzlUyanWyl4TC/aBAvqqpl8yO5fvydjattrKo
	Qcfdi7DCRr3sX9y7vBaLdxyAl1mqfaYKEFzXWFG3pCGDCRIUXXnPAoeL7s453uYYgUWinfXzL1948
	zWkMM6dEbT1Li9m70cmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOm-00FBVF-GL; Thu, 23 Jun 2022 12:57:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLq-00F7zd-8N; Thu, 23 Jun 2022 12:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=ed4emzUJTohq/e8wpqVyWmmKyLgimfFl0YhHiaRz77c=; b=kuy/0W5xyX6nzyb3HVLQwqR1k9
	ZP1EIwr5y89p1+jFGiM0QyZbbfwRhZloBol0/gIqPqqmOkUN3V0Py8zO7Rg2DYwUT5CRj1oumUkB8
	jOT5lTPKYB3CrUhaoXtNlgDpbU/cjh79EGuMOXRO6h4+y1lisCwAZZcEHUTDjbr5dBeGnZJpBRT85
	eRkWLx9HexQ8QeHGcNqM+vAuAHHuRu+jBnd6QVTObngddjH15kuKXkFW+jo4/OGSdjjouMcWDISIH
	O51s6g7ab2Hajde0hIhoi3rf2JrZj4eapARNbyy+j7izoJRiyA0zHJ6toysbh3JFxWcmuDiq8Cl7G
	+8vGtJAg==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLj-007sAG-G0; Thu, 23 Jun 2022 12:54:24 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NAKUt9006859;
	Thu, 23 Jun 2022 07:53:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=ed4emzUJTohq/e8wpqVyWmmKyLgimfFl0YhHiaRz77c=;
 b=OOiJGmG85L484CfcVnS3FexGssS82qr/6OzuHB+u4DnIR+yr5LBJPWrZid6Y97RkMMLk
 HW362I/IrKo20aNL1CzMVL0r16KcIUHHIEuAVeHQgNPdN3gSMhqxSksf16eRVmA5J1w8
 nfTE7yVo9hsJhlwd/XRIsSpMEHAq7jcms26rtTOQ633lBKlSZv9wGzjfAwLAhAHQto/w
 fztnUzMKfWIMDHG4qZyh3fgzUUScuSi9+FNiV43P7IhneD2JsYz/ZlOHzCUvX04aCwYB
 FHZivDvf2fRqQZg1Q56oVApolaEfpiuei+T/jjZsLe+/WDDQaJDM9eCEmmGXUfBC1DCD EQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4u-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:06 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:56 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:56 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 50ECE11D1;
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
Subject: [PATCH v2 63/96] ASoC: twl*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:17 +0100
Message-ID: <20220623125250.2355471-64-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 9u5ASWETBhCYKbud3W7eaHnWhTYCWAHQ
X-Proofpoint-ORIG-GUID: 9u5ASWETBhCYKbud3W7eaHnWhTYCWAHQ
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_923326_016C8B43 
X-CRM114-Status: GOOD (  13.01  )
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
 sound/soc/codecs/twl4030.c | 1 -
 sound/soc/codecs/twl6040.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/sound/soc/codecs/twl4030.c b/sound/soc/codecs/twl4030.c
index 87b58017094b2..e48768233e208 100644
--- a/sound/soc/codecs/twl4030.c
+++ b/sound/soc/codecs/twl4030.c
@@ -2195,7 +2195,6 @@ static const struct snd_soc_component_driver soc_component_dev_twl4030 = {
 	.num_dapm_routes	= ARRAY_SIZE(intercon),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int twl4030_codec_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/twl6040.c b/sound/soc/codecs/twl6040.c
index b37203336c4e0..dd5ee5dc0cd75 100644
--- a/sound/soc/codecs/twl6040.c
+++ b/sound/soc/codecs/twl6040.c
@@ -1153,7 +1153,6 @@ static const struct snd_soc_component_driver soc_component_dev_twl6040 = {
 	.suspend_bias_off	= 1,
 	.idle_bias_on		= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int twl6040_codec_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
