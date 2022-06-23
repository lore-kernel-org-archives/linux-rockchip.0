Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BCB2C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FaPRnhV8NVD53yU3VXc4o5VfwUnQ3ybnAYzOwMTve0=; b=VjaiKefZMPMyAO
	x6tvEHXASQP93YGjCfGZBPKkvLRxyhXux0F5R1hhVSk01qDyPyhEQ4TYK86gD2eCzOADKZj6Y91BO
	NqNi6zXMkI5BA9YvGYxfgjLCpHnkvkUFU5CvKaaGSWiYR6NDqv0iWEcKeSaxm2hNmbWcmFExdC2d3
	wsili1UbIpU7KyzbRzjJXDk9Wh+c2stOlNbuXX5zUx4Rds7n93ve71N/+K54LGTFcl2LiQRHyXCH/
	JqE1aRWGCBckuU2GYJt3/Z37iad9isdcklNGGwcFtgzI58iHA1OYQZTNNmCUyG+JkKlZA6csLYHg5
	4mP1/WnbjHTNk5kE8Y6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPu-00FCt3-JP; Thu, 23 Jun 2022 12:58:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNL-00F9lu-Cn; Thu, 23 Jun 2022 12:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UKatc6+tXyUsYCxIUlOCKACRDXtjL/84KfpSbCPcQ6U=; b=MyIZ01vO8+aNNQjBf5E40lhOal
	Ct6gVKyb4txMnJQyucgYnbL7oxr4XbTa+SYb4zizZbevfnENBZcmcfaJ96m+re3gO5DtlQoG38PNp
	8Xan+hoYEJ/EX+y3pOiP3oGVOIj3ze7Y14rO1YnadrFQq5WeE0BbWnz8CAoJRn92BvNGQT9cNoQhd
	9c9bts4cEH3jwbpdVZR9R2XunRhTrKBZEcIoXlSJhshRMjFel9rm/WYtJ1fgNceAADjSVJ5XWdHkG
	aqYinYogSgcfb5h4s34bu7sFcjcfa4FOGDYp5USK+8nUF4Fhy98zxS647B99OzP53fzZfOf9FguCz
	bcy04QxA==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj0F-Di; Thu, 23 Jun 2022 12:55:57 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N6FQeQ013924;
	Thu, 23 Jun 2022 07:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=UKatc6+tXyUsYCxIUlOCKACRDXtjL/84KfpSbCPcQ6U=;
 b=ICtsKWl0xLIBTe9gWC1gwrUJngkUM0/snJ4hBhIZdomhH6AhBdJWjSgbx99X4QcAy1Ux
 UaFeov3dxr2dHRvZmKkr421s8nEYNoD1aaH7EhzVjyIvx06D1rpsYELJqnAHm3hFI1dI
 2PTYQqmJ9PoG0pXsOLPvRZDZfOW4afaqeElCEQZMHhtj3xxFvx21qQyYYDdGLJRubNCz
 5dMQ/as2QsHIG1Egum9cAKrJ5S1J2UyDQwdBRObQX3wmnyFsZuNketWjBoW6H4F/DHwi
 E3jy8KQQmCrf9yD4r3xGuyMl3d7iwlVSY2rO9gtND6y2zvOftq5GeG0kwzLqNMTF2dqJ sA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4x-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:04 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:54 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:54 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 28DF511D4;
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
Subject: [PATCH v2 38/96] ASoC: pistachio: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:51:52 +0100
Message-ID: <20220623125250.2355471-39-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: VbZTrn18pNK7fOsa191xTfebl-_1pjzu
X-Proofpoint-ORIG-GUID: VbZTrn18pNK7fOsa191xTfebl-_1pjzu
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
 sound/soc/img/pistachio-internal-dac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/img/pistachio-internal-dac.c b/sound/soc/img/pistachio-internal-dac.c
index 802c0ee63aa26..e3b858643bd5d 100644
--- a/sound/soc/img/pistachio-internal-dac.c
+++ b/sound/soc/img/pistachio-internal-dac.c
@@ -138,7 +138,6 @@ static const struct snd_soc_component_driver pistachio_internal_dac_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(pistachio_internal_dac_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int pistachio_internal_dac_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
