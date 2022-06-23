Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DC06C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4s/qjlay34JXrM4RLZOljNNVamG5n6n+GfjAL/bhJU=; b=H70QysztiC2Vdm
	94MnvpN74BQkbvKkrCk4yBMmmNJymFDRIFImS3Hzcur8VEizrsDpbpnxbVI30/oM6Vl4Vq6c/Y0EH
	Zc9etuK5xsGQT/8z36KF3Kmb4DE3vv5PSCrIZ69/ocKRWxBqTf0mtEUd0hhreddkExvvZJVYeTbyL
	9Y/auekELHVdVu+1rCac6ttYVBfXfMC3SZFj8+mVE2ayZtmf+PtuPw3T3vzLFkn/EFmLSVx5N7yzO
	s+P2/xM3ujW7fQMHtOnGVp3cXG8vBcmHtOLrBd6Es/K/7voFqtF7mwnZe3i8dVp1YLi2n8xAWDbYb
	G/Rxp1aMomzV1U+QTbtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPI-00FCE6-Li; Thu, 23 Jun 2022 12:58:00 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLw-00F86G-Ee; Thu, 23 Jun 2022 12:54:33 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N6FQei013924;
	Thu, 23 Jun 2022 07:53:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=/YrLbsib8Yh5fzo7Etvf2etgY4zhhSJ7yMT4UFg+Ibo=;
 b=AZ066CSWBpyF8xfRacDfhhkBDz51cq+pdUyK2y0s79hZrlj/GCkv6TNn9zu8ha2b3BAy
 zDapJV9IskFefEfI7YSl57TdEn72UKdytGiF5uFObomv1PR7En8QoR0FIjDgif4LBTeZ
 70BflmNNGVNuVxYtzYJYrYXdWDKuQsziea9Aiz67Sml4p4bFpUwSrqjNVu+OczzRwVFb
 f4RWeFAbtUOeNkHj3LOhAeN5vhIHbBjuhqba5w6zZaD7CjTvor1zDoVx4Y3nv5Ps6ogi
 3kzDdEO6SCv1beSoqWv2rq5gzcgXr+xr6+Y76hE18ylvI/X7uq4V1PZ0uzAteaO9XXEc xA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4x-20
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:19 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:59 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:59 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 3B6F211D4;
	Thu, 23 Jun 2022 12:52:59 +0000 (UTC)
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
Subject: [PATCH v2 95/96] ASoC: zl38060: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:49 +0100
Message-ID: <20220623125250.2355471-96-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 0VaHRuKWj1VUe2Hz7TpzGCef3HcYfQcc
X-Proofpoint-ORIG-GUID: 0VaHRuKWj1VUe2Hz7TpzGCef3HcYfQcc
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055432_532320_96330F29 
X-CRM114-Status: GOOD (  12.82  )
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
 sound/soc/codecs/zl38060.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/zl38060.c b/sound/soc/codecs/zl38060.c
index 6cae0fb08093b..c3d0a2a7c36f2 100644
--- a/sound/soc/codecs/zl38060.c
+++ b/sound/soc/codecs/zl38060.c
@@ -385,7 +385,6 @@ static const struct snd_soc_component_driver zl38_component_dev = {
 	.dapm_routes		= zl38_dapm_routes,
 	.num_dapm_routes	= ARRAY_SIZE(zl38_dapm_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static void chip_gpio_set(struct gpio_chip *c, unsigned int offset, int val)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
