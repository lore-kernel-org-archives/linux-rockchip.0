Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D11F8CCA47C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n36MMx+noE1K5HR7DuI/3/ORauHdaGev0uftFsAE8eQ=; b=ssxFVivDHXODmM
	EIRBKg0yDfCUmiDIdDAQJY6IuKBoe2zlPli3Cc/g1sy7jaeyQuYaTkNo4UIBfIC7eJBWXO1mO0fmJ
	1EC1HbUSDLmKe4mWdGRYOBGSw3mH5JjU7SFHUp8pldWr/YGm1tlyYS/joVm8cjNooEmufHJ78vx/S
	aSjWckn+DANxzvzJN7oUlBlntnTHqXOmSfIhmeJeFcByxWc8rcoVftwYJgFB9WiuFLeaeVttBVizx
	X2Dfr3sDXbabsa+H/3tQf+lplmLF32oRMl7AAJcWxBP77ZDHFuAunLzUmaoP5OxJliSfszcly3s6e
	5XABbckN44OADn/D4z4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPv-00FCuM-ML; Thu, 23 Jun 2022 12:58:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNL-00F9m3-GH; Thu, 23 Jun 2022 12:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=rKzBw62X0FKPJT/o0h8GzZ/Zi9TWVvhHqxnovZBRfSk=; b=MY+n+0ibcN8AMo297XpV4qnVUF
	Zj5rj1jRX+Ehmp6rMxdpFliDqQfCqdNXAJRbamgskQLzn4GE+JrA2msp0D3jJRknCfqkm/6p5IyLJ
	cTsRt1n9ccm7eo67Y46wgYtHnKkESSqwy2X1qYRX6kIyVuAp8tMUUnJjsT1xSASNWglxuatDFRTjy
	CZIt5s5lhC3JOg+R2d+OUEFg0SuiPzjyPIu51yWsUhAO2C8gX0FO0KkC2JBvjXTZTQiqYGUQN+8Vq
	5wedrr2BV/uDTan9TJQKLOd4mBGoLGsZIf+WtOLmTa6GbySIUwp5oXCqBCFy3eL3tsx/Uxt8YtBNf
	McwBLwhA==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj00-Dl; Thu, 23 Jun 2022 12:55:57 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrK011978;
	Thu, 23 Jun 2022 07:53:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=rKzBw62X0FKPJT/o0h8GzZ/Zi9TWVvhHqxnovZBRfSk=;
 b=XsQ/SXNkTP7sGJPxI2rGT2nFOeKw2hTStVOBXneunTPQPqassv/BcNPtcqocYDtGhpSi
 aiEuzRPCiFctDEq+7/kExBG7HrVz5n9X5B2L8OO+U5fGhd0emv873EnYKekmFvJcKxG+
 G1CHdTf7Xb/I/biWeluoGxcXwp2z/XXhuuURHOecREMLYngSgQ1B5KWOIb+GuJGntDTU
 9+dks+rgyunzEsV4OJ7XDTR+2afhUgsdA0hpr/uOZX6U6IwihPO4my4I9J7KzIOwAvJu
 5KgBmnSR1rxJso5g9TOOOKoLx56bJA0+rctcninmMzA/798O8QQllpK4iEBNdU7hh4wn BA== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:03 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:54 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:54 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 724A511D3;
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
Subject: [PATCH v2 42/96] ASoC: tegra: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:51:56 +0100
Message-ID: <20220623125250.2355471-43-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: -WBaHKD_lPVP8zd7_EAL9HtjbqAfq0_N
X-Proofpoint-ORIG-GUID: -WBaHKD_lPVP8zd7_EAL9HtjbqAfq0_N
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
 sound/soc/tegra/tegra210_i2s.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/tegra/tegra210_i2s.c b/sound/soc/tegra/tegra210_i2s.c
index 01c76ba36e1ac..39ffa4d76b593 100644
--- a/sound/soc/tegra/tegra210_i2s.c
+++ b/sound/soc/tegra/tegra210_i2s.c
@@ -803,7 +803,6 @@ static const struct snd_soc_component_driver tegra210_i2s_cmpnt = {
 	.num_dapm_routes	= ARRAY_SIZE(tegra210_i2s_routes),
 	.controls		= tegra210_i2s_controls,
 	.num_controls		= ARRAY_SIZE(tegra210_i2s_controls),
-	.non_legacy_dai_naming	= 1,
 };
 
 static bool tegra210_i2s_wr_reg(struct device *dev, unsigned int reg)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
