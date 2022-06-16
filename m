Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DADEAC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLgpxTiVf/rdI+qTiAj5vEc6RSjxN0lnOTyzQ1trSJA=; b=ql18nZQJjRWjuV
	VaADYsSyPPX2kis1Jw+1CVbE90efK7cQHGfvKOIMilV7BnyIZOr4KrPizXyhohmeEbaXmwl+lQDKL
	sDS0cY9OcLV/gq54QP1qYRs4+KIT1fqe5z9NgpXXGi+dFUo2FAzR358VoFLogngb8Y3Tep1xgFoHL
	vv4BWSLVHZS1XaAZ+J/ZBRjvXixcfzTaebq5e7jrAMakBJEJzmi0xUry/WpTvb91ETHTsK9iEFcus
	2So+WUCYwwL/0hKjo/YcrS7pC6I4Dq6MQWFihupgMQcytC7CqehM2wG2HWXD+8jZjYlIXnRiuLFBl
	pyqraJmBkKbjs1pP6qgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qcr-002tzQ-5B; Thu, 16 Jun 2022 14:37:37 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qac-002rhw-38; Thu, 16 Jun 2022 14:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=VclkzQCOr+1kSUkVCDwH35JAS9t3X3gZbI+rF0fHvWk=; b=IigEJ8RWPlwx94JJIKrA8yOrxy
	2+IbZfoeI7a0Xx6OzQTM4VH1d2WSXeGACYt6jL3hbJ47W9AdzcxonsM1c58WzzHcTLCdlZtReTfIH
	WMjXe1y0ytxclPLlAbkxKDZoQPWm0MQFQ9RXVQYI1JzmyaT9zkzArKEa7ardUYRuA36EEBKItoKIw
	ZJrsn1oPYya7rkijE8fXqBmFRMpisDdMN8w7qj90eWZzI3kote+1cb6FJ/psWRYyzU3pCycEX5b4U
	3J8LCC5gru3c/GxB1PT14csjCjOPGgen7SCLUwuqg1OvgwZ4gua+eK7jf+PCYfuXz3wnTxJsa4U3t
	WREHq4ug==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kK-0X; Thu, 16 Jun 2022 14:35:16 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G8o9fV009500;
	Thu, 16 Jun 2022 09:34:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=VclkzQCOr+1kSUkVCDwH35JAS9t3X3gZbI+rF0fHvWk=;
 b=iMAEuHhSBiNjabs2TVYZLp6R9vYDnqMM5qNZbM7wzWUUumVkBwVfnInJuZf5sS6Iq3lv
 tV/DNZvb9t2YGWoi/jBTrX2E/1kkX6UR2SrUpxNbicJ/wqOAB+sNvm1RENyJDkH9zBAp
 1wFDaXcYyol5hVmgYPpSveClo14XSoBxCwsaxn7UulOq7VnxR6qZFQSi582RMXdkjRSG
 Qk7WJPB3IiVufOP0n7MS/Gf8D3cxbZ4P0FtTbtIb9LwnpGqHfM8BhyuQOkD+R0ObEsxe
 pleLksZptzT/37HC914TFBC4ImoYHiUMBGRan805+DTlnw0ilEQuqXr5j39KKMlxijI3 hg== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3u-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:49 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:35 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:35 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 38C2E11D3;
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
Subject: [PATCH 67/96] ASoC: ab8500: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:00 +0100
Message-ID: <20220616143429.1324494-68-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: Uk4QE7POqFQ9Q2qW_Xak-j8ALHtV0nk_
X-Proofpoint-GUID: Uk4QE7POqFQ9Q2qW_Xak-j8ALHtV0nk_
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153512_364027_F54B5F54 
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
 sound/soc/codecs/ab8500-codec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/ab8500-codec.c b/sound/soc/codecs/ab8500-codec.c
index cbd4a92cb06ce..68342917419e4 100644
--- a/sound/soc/codecs/ab8500-codec.c
+++ b/sound/soc/codecs/ab8500-codec.c
@@ -2523,7 +2523,6 @@ static const struct snd_soc_component_driver ab8500_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int ab8500_codec_driver_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
