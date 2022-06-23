Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98CA2CCA485
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtO8IGALSWrKERk2zMu1v3iCOvfK/M3GYVm61M/QCg4=; b=DLN8By7xBkjT++
	Pv9VP4s7CgQQjCsZJJ82Hrd3zSM1ofudJsYs6DDZ2peI6qh3WfjRiV6sgdoifMrws6+2OL4OPjq/A
	z67QyV54HaDCVc6DZ3duhg7Z1DQf5cSfW8I1IQz71gBXbhFdU+K4SFnDUTKm9Tmj6luMzkAZwA1pf
	26D6QH55dcv/45xuRITkTq/NNTnfQBM9lihi7smPPG3H92PDnYgMHhfAelGOuYgiHeJGZdB31D+rB
	voVaO2/ESRV0f956hTOZZEZPHr5PNLQxyIiRvtnHFysW1MZuK97gpSl2cO4hQXyKe26Iwba6UuwlO
	asZmfZqFtboP9+jSyhhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNi-00FAEl-Qc; Thu, 23 Jun 2022 12:56:22 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MKw-00F77v-1T; Thu, 23 Jun 2022 12:53:35 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxlL032604;
	Thu, 23 Jun 2022 07:53:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=8tSPP1RTMjwN9/fm7e1xi82dPxSMcLxVZ0qD6znQAiU=;
 b=cBuVHYipE5NebQLAEo334l3KRysgE5uyba5K7HxIvAWLvc+Zq53wcoERxZiB6SBM1aaS
 xch8s5a4ob3yGKD3EkljhrIBQlo4abbXZUdaOLBA1ycFRQ7GTdq5aMzdTo5Fu8b5CqNE
 ajbvHFIzx++OA7HrhY714Mmp6JLzSRPVbb+JtNnk7HW0ApV9jNW3C70f/urzKq3N9zLG
 VDCPjeNVz91Pgb++whOBGUPX5aliNwd/ok0MD332/o56arPJPeZRQswPgoJ4WEKXJ6EX
 nwtJBAJpIQBUteVkDV/fBpAl5QPd9QPPiBqKPdKyAhIKWn6IqbaZmulGKMqBJ/7efbew ew== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-20
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:13 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:58 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:58 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 50F2B11D4;
	Thu, 23 Jun 2022 12:52:58 +0000 (UTC)
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
Subject: [PATCH v2 85/96] ASoC: lochnagar: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:39 +0100
Message-ID: <20220623125250.2355471-86-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Xje1btjndrFmxlvjm1MFtXzUt8D2Zt67
X-Proofpoint-ORIG-GUID: Xje1btjndrFmxlvjm1MFtXzUt8D2Zt67
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055330_316670_5C549B77 
X-CRM114-Status: GOOD (  12.51  )
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
 sound/soc/codecs/lochnagar-sc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/lochnagar-sc.c b/sound/soc/codecs/lochnagar-sc.c
index 54a8ba7ed3c20..13fbd8830b09f 100644
--- a/sound/soc/codecs/lochnagar-sc.c
+++ b/sound/soc/codecs/lochnagar-sc.c
@@ -217,7 +217,6 @@ static const struct snd_soc_component_driver lochnagar_sc_driver = {
 	.dapm_routes = lochnagar_sc_routes,
 	.num_dapm_routes = ARRAY_SIZE(lochnagar_sc_routes),
 
-	.non_legacy_dai_naming = 1,
 	.endianness = 1,
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
