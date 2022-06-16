Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B16FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTQseaU2CQ2oFDU2SwlcUwvFwqYfCDP4J9ktZjSnYlQ=; b=a4eTFMQY9Gr2Ju
	M9eiZQeIPqSdBZOp7zmz5NvKnBYbSSEINxZfeNqXlg6AKHw/pdFUiLa617MaoVEn9lHqYjeI0uE0i
	CTw4pBRDIDwMSUckmp3MQuqsVzaUjlj7QPdxR/3+vAZZoJhAUZxCW2xOw8kB8YNSA/VeKcbzDn2r/
	oRsek6mL+68ppU3zxfGaYm+gQntS0t2fPeA1WlEMnEVORU7+b2tOeFTB3c/O5cuJiYGSh7kGdMbng
	iLVp/O2ji2jJAIPiK5gkqIncrukKRaHB3ZG9Ag9+fXQhhbE86+ZMjz3QK8F/Pq3XsVYdCPvp1IzNS
	gJQ+wYFGU2R/aaScUj8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaT-002rZ1-Ke; Thu, 16 Jun 2022 14:35:09 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaG-002rPR-JQ; Thu, 16 Jun 2022 14:35:04 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJV015765;
	Thu, 16 Jun 2022 09:34:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=FzDSh8zY1KDxF7rJkQVN5S8yOHbt/setTYgyg3pJdkA=;
 b=WW+n3LXm4IbcCA9uCF6xcs3J0zac5kNaujrwPbxuQSlMcbQbLtXd0558rBikZ8SU51ws
 2s7Y72rFxKL1OD0QTFwA7b3yMUa2RhUL3TNqvc29Q+7c7E/jTpqFAxcwSrilPxr7F8+e
 Q1vU3/2kHOhWdAslx/T1uK71nMFFqFk85qh7cCs5vWsMQHq28QVBTClUYGRCzfzDuCDE
 HR8eIdkKDGiE7tY/SzIvBNX3Ab9AgHKx690fEXmucp8+G1hd3C1V6husVL7Gy/IHcvpm
 aryzqujEVCtTiBdSNDJKMabYujaLFH78AX2o+hBzcGF9p472Wn4nTCfbvJBF3bxPra/e ng== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:32 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:30 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:30 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 54422468;
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
Subject: [PATCH 05/96] ASoC: spear: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:32:58 +0100
Message-ID: <20220616143429.1324494-6-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: JgVujUQviHpgxqwaL04xCfEOCuXtML3x
X-Proofpoint-GUID: JgVujUQviHpgxqwaL04xCfEOCuXtML3x
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073456_795774_CA973DFF 
X-CRM114-Status: GOOD (  16.29  )
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
 sound/soc/spear/spdif_in.c  | 3 ++-
 sound/soc/spear/spdif_out.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/sound/soc/spear/spdif_in.c b/sound/soc/spear/spdif_in.c
index 4b68d6ee75da4..4ad8b1fc713a7 100644
--- a/sound/soc/spear/spdif_in.c
+++ b/sound/soc/spear/spdif_in.c
@@ -172,7 +172,8 @@ static struct snd_soc_dai_driver spdif_in_dai = {
 };
 
 static const struct snd_soc_component_driver spdif_in_component = {
-	.name		= "spdif-in",
+	.name			= "spdif-in",
+	.legacy_dai_naming	= 1,
 };
 
 static irqreturn_t spdif_in_irq(int irq, void *arg)
diff --git a/sound/soc/spear/spdif_out.c b/sound/soc/spear/spdif_out.c
index 549295a6ed501..fb107c5790add 100644
--- a/sound/soc/spear/spdif_out.c
+++ b/sound/soc/spear/spdif_out.c
@@ -273,7 +273,8 @@ static struct snd_soc_dai_driver spdif_out_dai = {
 };
 
 static const struct snd_soc_component_driver spdif_out_component = {
-	.name		= "spdif-out",
+	.name			= "spdif-out",
+	.legacy_dai_naming	= 1,
 };
 
 static int spdif_out_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
