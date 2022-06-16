Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F2E7C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEAiBLlPrfIwZgxxoLB7dWmoSAKGCvENuVeaq69sCMc=; b=D3iRM6AAMEl+uY
	vUHxhyTRWq+jtulTYhAZJ5YODDnmiK75T+iwnpdTaqavhmzpzuezKmiuJfB6H3WVSNET6WXEX3oNy
	QC8kUh46GnFjQpNotcytxZj91/kP0OTSh/cPRka9LyNfY+ZsjfXsOw4d/+RkI59d/P15PV3jI+vQ8
	vr55BQvkP2wsV185wmp4+xSRgZBo+xQX/qLyoTxUPdN77DdZ2cHWz1h8urraYTu6q53jSsBmj442j
	YNPDHi7OknsavD+lfca3HFdIgNUjWogpQFcdhxOsAxiOYQPYHsHwYf+5okF3ZmFqk7tZs/qtC7NdV
	sapOgWccGXO1O9LCiiIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdP-002udU-EZ; Thu, 16 Jun 2022 14:38:11 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qad-002rjl-Ko; Thu, 16 Jun 2022 14:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Moe+iDLBBrEDDxnDYh3XwjhpqoMM9y00x+UEeU8HbSI=; b=NA/89RY2pe8BhmQa/MRjVO3ljr
	cGzv8q6gCDOwV4GcDd8NWr3VjURXYvdN1YdnAyXcTAKz6c9YdvIbeK1FcGDYSKxeIZd0qD4J2nkFV
	JlYDlEpPMCJEcDVysYGuXd9zLG1H+l2GIbFA7FX3yr5OLil5b2Fu5gWf0/rHVnoVxFsrAwq8KBz92
	mdbo/9U/zstndp/i6zyBC4DgbnbO6gaVDw5+ynusOBC0hu1HIZOFK4c7pdRmtQ0lFYoeq/CNZ1i6q
	2/849xeuKQZ+vFI58P8VYmWsijZZX4AfTcIrnNHWGYuqO217CL15pYucJ8GWj6+jiQ8oliiODlONm
	s18E7rlw==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kR-0f; Thu, 16 Jun 2022 14:35:18 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJi015765;
	Thu, 16 Jun 2022 09:34:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=Moe+iDLBBrEDDxnDYh3XwjhpqoMM9y00x+UEeU8HbSI=;
 b=BuLFzHFQHeSkkjvmQzQ+JDpXTIpClVoVjh5hp3J6eey1D98ZJcOcD6cwhz6NkEo+QRqD
 y5A5dzhUE4HHMzjNqkwzpVsoPo5l25rL9bFxVPu327CswZxZXFtTdBIIsZo6dba+XNlf
 Gwz3ddLG2cRGDy+lCQTKouKOI2Azs6xNq9sILltYwxkU0iIopSx5yHfk3MItNoSXUeKy
 pQJGj2xG5b44/Hf5NJugtI/rLgJiTDJqDWZtNi+Duvi0nrGzBHnmC8is/mYBZXp2lh3g
 LbriU495qMqMMFGOBIprGQU9K25YUyjmrT5y+RYyCru4vn1IxQJvh241wTW/7uHyVWZ7 qQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:42 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:33 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:33 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 6D3D311D4;
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
Subject: [PATCH 43/96] ASoC: test-component: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:36 +0100
Message-ID: <20220616143429.1324494-44-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 01U5AtP6P0cFK7fl9pUyfws4xGLItCkI
X-Proofpoint-GUID: 01U5AtP6P0cFK7fl9pUyfws4xGLItCkI
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153512_455121_1B8328DA 
X-CRM114-Status: GOOD (  11.75  )
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
 sound/soc/generic/test-component.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/generic/test-component.c b/sound/soc/generic/test-component.c
index e2a009bc69af2..98c8990596a88 100644
--- a/sound/soc/generic/test-component.c
+++ b/sound/soc/generic/test-component.c
@@ -569,7 +569,6 @@ static int test_driver_probe(struct platform_device *pdev)
 		cdriv->name			= "test_codec";
 		cdriv->idle_bias_on		= 1;
 		cdriv->endianness		= 1;
-		cdriv->non_legacy_dai_naming	= 1;
 	}
 
 	cdriv->open		= test_component_open;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
