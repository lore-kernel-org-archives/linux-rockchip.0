Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CBC2C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8l9bmzg1ELuayLWpxN4yHF1SdAjsE11Ns/97222TiY=; b=RdycyOo+R+ESw+
	229rBpGL8g3/XUc24+zD7pATzvZxg863WXxUZKhnRUgVmcI13lcdBZijXUg+oU/H38SE9DXTDdp5s
	CqGeYEzATkYaGvgmDMaOSTO8BegMs9z5Z8H+EYSPHgcBfgZbeLSRAtZG2bdO2i0ZadNtG12CAxHCX
	XeBONxUVf/c8GEJXWgAqBV4WfEWfuPWgs8R1/w2NbO3oNpNA170qI12WCi9xHw9ONE2MhQhYQNpJu
	Ec+b/QypvzQXA/aBRxdnRtcojHYmvlXlV7ZY27Mfox97vkd8lH9B1q01YU5JHBDoOFrDvQ68SP/W4
	n6B8mI4Y8c+1M1QJbxQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdv-002vGw-K4; Thu, 16 Jun 2022 14:38:43 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qai-002rpS-LC; Thu, 16 Jun 2022 14:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=6YarS5ewCrE1AMRJ2CvNPD3pBYbddA86uZKIfmQBxOQ=; b=f/lB3Bou4x9Zt22gjipcaQRCQf
	JNnTvyLdDEtsPInQr2o3jaFSBIPbIflERkggzbJMPs20CPcG5h8KE0W0kwHJg5IAk5i635/E4QPp7
	nPwhswznU27UY8sO63LrQ3B4TNfSeGa8aVMgmF9hDlUdnoGLZvm44zdWg4/Gn+k2u9virLC24xK6H
	QYqLDsbM1hlY/WCsFRZDhlLBD/ayXjr0xTb3kHpn1pwi5EXiKdNJXnVDUETyC1Gm8EvWVF9Ik0mtC
	iE2dZYlkMlzxNWaVPp8yFNdAjcCx1tljz33mS5+9hsyKZ0Rq2BIUPzsTC9B1X3GGamwNFW6BDJRE6
	q8VtzY9g==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kS-Gf; Thu, 16 Jun 2022 14:35:22 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaQ029573;
	Thu, 16 Jun 2022 09:34:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=6YarS5ewCrE1AMRJ2CvNPD3pBYbddA86uZKIfmQBxOQ=;
 b=Res+1MdfIHS08lRKZSwpvxWqFSD9xJwzFrX3dKLIb8Ul2XuVQHiIxFJbJNpQTErz5yPM
 VgiZrzaC5/Kek6dWrli8+CUxYu7mFS6M0LiEUAlss2a/EUJzqJGNZ6RGaDtWU8ekBepf
 NEZEYUUOJCfb0CyHgmL9O0SSBdSin1KcGR8NXL9UZlxf/N+j/cRMjiE9ddr9Nx2Aq4Cs
 dXijIX0HgWW31a1HDtq6Y7QVV1MPNKh9zR8tjVX9p9lcHfYZ67G7HVjgZjkahPIDgnek
 Vi7239FqYDmtt3bD3aGMbxw2C/fA2FeP+6KoRFLXEt5SV5jThx3rx9mnWiGO4otj0aNq 0w== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:47 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:34 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:34 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 752BC11D3;
	Thu, 16 Jun 2022 14:34:34 +0000 (UTC)
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
Subject: [PATCH 57/96] ASoC: spdif: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:50 +0100
Message-ID: <20220616143429.1324494-58-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: l1r7OXCcSpc3sTsBBB6okXFnK15WerWe
X-Proofpoint-GUID: l1r7OXCcSpc3sTsBBB6okXFnK15WerWe
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153513_872204_41D6856E 
X-CRM114-Status: GOOD (  12.77  )
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
 sound/soc/codecs/spdif_receiver.c    | 1 -
 sound/soc/codecs/spdif_transmitter.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/sound/soc/codecs/spdif_receiver.c b/sound/soc/codecs/spdif_receiver.c
index 276db978e5871..862e0b654a1c2 100644
--- a/sound/soc/codecs/spdif_receiver.c
+++ b/sound/soc/codecs/spdif_receiver.c
@@ -43,7 +43,6 @@ static struct snd_soc_component_driver soc_codec_spdif_dir = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_dai_driver dir_stub_dai = {
diff --git a/sound/soc/codecs/spdif_transmitter.c b/sound/soc/codecs/spdif_transmitter.c
index 2c8cebfc66031..7365189215558 100644
--- a/sound/soc/codecs/spdif_transmitter.c
+++ b/sound/soc/codecs/spdif_transmitter.c
@@ -43,7 +43,6 @@ static struct snd_soc_component_driver soc_codec_spdif_dit = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_dai_driver dit_stub_dai = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
