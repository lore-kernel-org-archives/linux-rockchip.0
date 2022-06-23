Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C26CCA47E
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1xGbWmuSB6K0mJeZdee/+sNJo6dY1Riv7+0ZKIIgSM=; b=G57wVYsOQRbWvI
	lSCuOZiyLojADH8w2KkV2MzCHyod3WUHW9c2fX/c2vWUYNzn4sbEOQmtTaiajzsw9s+TgQT24xJTs
	FA+bNWLiPeNqWhgGU5b6h/rr58Sg+U+CQy3qjMK7liyHz7vFqRyyLGKN2RDNS2yrm29PtRM27Qe26
	hC5ljJ9qnrJVNN45pqCvaOZk5B2eL+CcpBVzH4YxpwQ/FkILUoimrXiNpc1o6MznUbMghMmInRqV6
	Dn9jtO9e5Cc95k9zRMVt11BRnCo3MExdUl9FaG+PwGV30QNTIKLtYOC5i3ruP3YdxPxVfL4XDWJq2
	aSsvJoUhWv5RIJWb134A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOP-00FAzL-3T; Thu, 23 Jun 2022 12:57:05 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLh-00F7pU-He; Thu, 23 Jun 2022 12:54:19 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxl2032604;
	Thu, 23 Jun 2022 07:52:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=2TN13SaBviXFLG5SogVSnAtaPuCmUdh8Cf5QqA62gzA=;
 b=EOTlOnH8pctgJTry5VCna9k3q3MRmr/xXoM4xAxgv2lpwAj0GRqpu1sgv8an3p76nPGH
 mInGBCUVEi9k4uCS4i8oFHI19rG6LJnHRmw+KNNMSlgEJGmcn1nZ0SWTxDv8p6IUfB4I
 TRwXQmjHKo0K/1x1SYKJelmlrty4ifrNTTJ5O/JEeYjux9KxOO8ZSP1gqayGRlnEjGb0
 +HxLT3fO6H0Ximlt+ggLmdImRkEQN5gpntfeocijtL1MwPU5Yukq1SrykhT5KOkIkBZ9
 5aQr5UKMfHn+e9xI069MAnMSnJtALJnXy7gDwcoEjrbNqfJRzJ/bIyyN9T9mdZiWSulw IA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:57 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:51 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:51 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id A0B1A478;
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
Subject: [PATCH v2 11/96] ASoC: tegra: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:25 +0100
Message-ID: <20220623125250.2355471-12-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: l3ItothFqpLn9VhF4Abg4vb-bkIOqzIE
X-Proofpoint-ORIG-GUID: l3ItothFqpLn9VhF4Abg4vb-bkIOqzIE
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055417_759026_3A3D4AB2 
X-CRM114-Status: GOOD (  15.49  )
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
 sound/soc/tegra/tegra20_ac97.c  | 3 ++-
 sound/soc/tegra/tegra20_i2s.c   | 3 ++-
 sound/soc/tegra/tegra20_spdif.c | 1 +
 sound/soc/tegra/tegra30_i2s.c   | 3 ++-
 4 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/sound/soc/tegra/tegra20_ac97.c b/sound/soc/tegra/tegra20_ac97.c
index c454a34c15c4c..e17375c6cddb9 100644
--- a/sound/soc/tegra/tegra20_ac97.c
+++ b/sound/soc/tegra/tegra20_ac97.c
@@ -239,7 +239,8 @@ static struct snd_soc_dai_driver tegra20_ac97_dai = {
 };
 
 static const struct snd_soc_component_driver tegra20_ac97_component = {
-	.name		= DRV_NAME,
+	.name			= DRV_NAME,
+	.legacy_dai_naming	= 1,
 };
 
 static bool tegra20_ac97_wr_rd_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/tegra/tegra20_i2s.c b/sound/soc/tegra/tegra20_i2s.c
index 2e1a726602f02..fff0cd6588f56 100644
--- a/sound/soc/tegra/tegra20_i2s.c
+++ b/sound/soc/tegra/tegra20_i2s.c
@@ -338,7 +338,8 @@ static const struct snd_soc_dai_driver tegra20_i2s_dai_template = {
 };
 
 static const struct snd_soc_component_driver tegra20_i2s_component = {
-	.name		= DRV_NAME,
+	.name			= DRV_NAME,
+	.legacy_dai_naming	= 1,
 };
 
 static bool tegra20_i2s_wr_rd_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/tegra/tegra20_spdif.c b/sound/soc/tegra/tegra20_spdif.c
index 64c2f304f2542..ca7b222e07d05 100644
--- a/sound/soc/tegra/tegra20_spdif.c
+++ b/sound/soc/tegra/tegra20_spdif.c
@@ -264,6 +264,7 @@ static struct snd_soc_dai_driver tegra20_spdif_dai = {
 
 static const struct snd_soc_component_driver tegra20_spdif_component = {
 	.name = "tegra20-spdif",
+	.legacy_dai_naming = 1,
 };
 
 static bool tegra20_spdif_wr_rd_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/tegra/tegra30_i2s.c b/sound/soc/tegra/tegra30_i2s.c
index 3aa157c82ae23..10cd37096fb33 100644
--- a/sound/soc/tegra/tegra30_i2s.c
+++ b/sound/soc/tegra/tegra30_i2s.c
@@ -331,7 +331,8 @@ static const struct snd_soc_dai_driver tegra30_i2s_dai_template = {
 };
 
 static const struct snd_soc_component_driver tegra30_i2s_component = {
-	.name		= DRV_NAME,
+	.name			= DRV_NAME,
+	.legacy_dai_naming	= 1,
 };
 
 static bool tegra30_i2s_wr_rd_reg(struct device *dev, unsigned int reg)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
