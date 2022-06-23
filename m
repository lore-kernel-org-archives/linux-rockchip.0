Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9213C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 13:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EsQv/c4SCA9g09UxjNA/ZWQIbe5z/+diAzMFrFcs1U=; b=IN/gvxP97iuFGG
	KDeOK8wphVSLWktkoxkQOaGtUzQRIC3FCLZOJ95mxH/EM2N9MGfU+sgp93eAS8+6nZsZGeDYsqL8d
	viCqSmh6iDdr0bCJm84yqLlzbLwJcYpxx7Gmc5NEsmCsnILEEOieSMqG8ygwS/Xsh43Y6aTTAm0l7
	hT8GdgmpZDlOLb5XV4udK6G68bwqV7ouXeWH24Zi1al2xHgpuu4bp7paWrPOC9D6lu8sCfJzo2ABs
	XU1hyZIWqk7xGW8VGZCV63Ytg7eXTX0a8cDH/3uQ027AB/mw+ry0EbTWmS3FL/zlHt2reI1oQH+JU
	P1t2iNlQtPsN2i+HE0Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Mnj-00FJvw-Iq; Thu, 23 Jun 2022 13:23:15 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MnU-00FJeP-Gz; Thu, 23 Jun 2022 13:23:01 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NAKUt2006859;
	Thu, 23 Jun 2022 07:53:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=w2elvprt/NPXLmHM0bB06m5qSNTTQZOMLvUvMKNQ3w8=;
 b=VUGCFPp7ufZwssSe0nog3VemZ5RZEV3zlj3d0WzDQgfpZyV5udJlT8haWEWT7+slekz/
 y+oxkRwtiU0g/91EF457/bfpRfq6KnZDD8imLzuF8SjjFbWzcUufx5TW3ObX3xMznVVj
 FFdD9owpJbL+bqSORpnggmhAPh2KUR/hqNNHpig14/w9jFHSAgrsl4dVoRvsMI0jQZNW
 5KzLe8mcneml1u6GPxf85YN1i++148WBqtA9aOGpwHQ9AI8Wu32uoG8D1260oxRtjokr
 YEB3o1MBlqrsHaHTbIqOufIUGnfOEtwAPEpHaYfTqire2wZU3mLfJVSz4SmpnaGWlPLR EQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:01 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:53 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 0A0E011D1;
	Thu, 23 Jun 2022 12:52:53 +0000 (UTC)
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
Subject: [PATCH v2 25/96] ASoC: test-component: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:39 +0100
Message-ID: <20220623125250.2355471-26-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 6uBOnnVdRRLfo531GfkxBDbTIoScnY5m
X-Proofpoint-ORIG-GUID: 6uBOnnVdRRLfo531GfkxBDbTIoScnY5m
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_062300_601068_1436D36D 
X-CRM114-Status: GOOD (  14.12  )
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
This driver appears to be on the CPU side of the DAI link and
currently uses the legacy naming, so add the new flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/generic/test-component.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/generic/test-component.c b/sound/soc/generic/test-component.c
index d28712fabe3f6..e2a009bc69af2 100644
--- a/sound/soc/generic/test-component.c
+++ b/sound/soc/generic/test-component.c
@@ -564,6 +564,7 @@ static int test_driver_probe(struct platform_device *pdev)
 		cdriv->pcm_construct		= test_component_pcm_construct;
 		cdriv->pointer			= test_component_pointer;
 		cdriv->trigger			= test_component_trigger;
+		cdriv->legacy_dai_naming	= 1;
 	} else {
 		cdriv->name			= "test_codec";
 		cdriv->idle_bias_on		= 1;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
