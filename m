Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96AFDCCA47C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+woRPpZxQbSpE7z+OGuzk5DB4oCFv2KSe7ju7FLJpTE=; b=g2nvA8RHpRKCQb
	dcPGQhQSdumfCLdy18ZHyqo4Xxu4lLf7PrQt47HoCY6weO41F3o58ytg0FLndZQgwTUgvJWGP/eqR
	2XQD2w2xJn7B5fLGhci7RtVyWJU9VDb5MiHRDm5OeuvLLBb4Fc4moOcHZLS0O6vEzwLSCDyUt42q+
	UCtM07MPkrzfPxTXXXLTMy24X+ZgpDQT0oCYWXF++9rmE2eWoDhVhyWMuCJpcBzgwXvudZ1hAPNfm
	ATBBKFSzFpDnQOpMn6soKFZsH3UCwAU99z8y8CKwjuKVJlO8IGOF6j5foT5GHbtcSQdFEMV+PoqjD
	x8jamN3GxU3nCfggEuRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MMX-00F8hu-Mz; Thu, 23 Jun 2022 12:55:09 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MKq-00F71w-61; Thu, 23 Jun 2022 12:53:28 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqW015665;
	Thu, 23 Jun 2022 07:52:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=7CFQF1uFAN//bgNV90FI/dawvD8nMJvY6YyL1sfuCCA=;
 b=hTvCkTctoB8k3nSHbx0yrVaXNZz4KF5MAVBjrCciLTAKtreM5UQdVEe+g+FyH4r0kLha
 gkT4oqY+7pAIXRyPWd+SYLAyv4DCU9Q5GdvB28Ac0TTnBBqp+GnG4fNjuYOQShTgIoJX
 OPFp7/rClMaqR9RMi9EodduqlGlC6hwD5bibL1is9fc5h0IkQjq0UBIx4mc1SbuUPILX
 exEgqzhf26F0oCWl0uejGJSXi63RIi+MsFK2UJz/fZw7jMSFTWviiw+ZV4JrSVmAgede
 INLRWd2tA/L7mP18Qb23SECPgZSlhn3GMTWfY+fV9DFOjk+6VC4A3K/kINxZcHiKIQ0c vg== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:54 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:51 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:51 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 5B4A0475;
	Thu, 23 Jun 2022 12:52:51 +0000 (UTC)
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
Subject: [PATCH v2 07/96] ASoC: ep93xx: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:21 +0100
Message-ID: <20220623125250.2355471-8-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: nKEG7KdTd89wZa_3SXZboRX6UT22s3cd
X-Proofpoint-ORIG-GUID: nKEG7KdTd89wZa_3SXZboRX6UT22s3cd
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055324_312063_609665DD 
X-CRM114-Status: GOOD (  15.03  )
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
 sound/soc/cirrus/ep93xx-ac97.c | 3 ++-
 sound/soc/cirrus/ep93xx-i2s.c  | 7 ++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/sound/soc/cirrus/ep93xx-ac97.c b/sound/soc/cirrus/ep93xx-ac97.c
index 16f9bb283b5cb..37593abe60532 100644
--- a/sound/soc/cirrus/ep93xx-ac97.c
+++ b/sound/soc/cirrus/ep93xx-ac97.c
@@ -355,7 +355,8 @@ static struct snd_soc_dai_driver ep93xx_ac97_dai = {
 };
 
 static const struct snd_soc_component_driver ep93xx_ac97_component = {
-	.name		= "ep93xx-ac97",
+	.name			= "ep93xx-ac97",
+	.legacy_dai_naming	= 1,
 };
 
 static int ep93xx_ac97_probe(struct platform_device *pdev)
diff --git a/sound/soc/cirrus/ep93xx-i2s.c b/sound/soc/cirrus/ep93xx-i2s.c
index 47959794353a7..982151330c896 100644
--- a/sound/soc/cirrus/ep93xx-i2s.c
+++ b/sound/soc/cirrus/ep93xx-i2s.c
@@ -422,9 +422,10 @@ static struct snd_soc_dai_driver ep93xx_i2s_dai = {
 };
 
 static const struct snd_soc_component_driver ep93xx_i2s_component = {
-	.name		= "ep93xx-i2s",
-	.suspend	= ep93xx_i2s_suspend,
-	.resume		= ep93xx_i2s_resume,
+	.name			= "ep93xx-i2s",
+	.suspend		= ep93xx_i2s_suspend,
+	.resume			= ep93xx_i2s_resume,
+	.legacy_dai_naming	= 1,
 };
 
 static int ep93xx_i2s_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
