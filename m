Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBA6BCCA496
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egbU5Dxoj+hV6Q5A2zUNSPUHS1Q3yLXBB4d+VZvr9J4=; b=15yuOgALSog/i6
	vS0p5Jy1zD1jIhXfH7NGPJha/+jqjbB5rWx0/nnr5Mu0CjzbP0fr6DrKPlS6ZfBUHYK9DI/mO0GU7
	Wbmwh3dqag9L0JaPxzW4+nbQom6JtT0dk9eKVeTZilIXamZ5S9TS0tT+wNB0r/mga7GJG4HCj1in+
	qGZ0Yc0dG6Chp3Dnz14Vq1MtH4uR66+6tT/YTO3xG3DMmKA0eUOhxoswAGT6W07gOtJVlCMvLenaK
	MjpR/iEYKPIwNCbcKF02PLR012MYdJRRVT6/om8/9JIkem76onYk/arBCk3TggV4UeGqBEU0pbCxS
	sAJsDPEdjkzwiJkYRdJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLy-00F88T-4m; Thu, 23 Jun 2022 12:54:34 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MKf-00F6vO-Pv; Thu, 23 Jun 2022 12:53:20 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqe015665;
	Thu, 23 Jun 2022 07:53:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=xiTDbgqeuZhdt8R7oq9x3sZqM+2pp+NbDTNVr+GbnW8=;
 b=BMkvWccDTR/acUBKuVYHkVgfYC9fzgUMo4pjGp0IRf5EPRTxIdKbozbhz1FXGDTKG2KJ
 gHRNF+XA2KYtgjkBLnCVb8nGTjEltssED+bOSZFk8b7DxGAyMdjdORz6ood8UtdWltyd
 uNe4BkgaBvn2lPbZXwpcfOqW8UixIF5oKd2awPCqyX//GemqNbWPBcVAieSo/aiW5H7q
 hA1hec7ZWsReMW5PWNqJCk7iL9tRVOnw7gDB/UgeZVfqjWmrYY+gLzIzwXYhye+AUC4h
 /LHUdBeSe2AVd5hCZrPC0U9MJbsREvWqkEV/FxRvz+lA6Xum0ZgyZ+JMWNp5jYDX5/fL ug== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:01 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:53 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 1CAF911D4;
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
Subject: [PATCH v2 26/96] ASoC: rockchip: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:40 +0100
Message-ID: <20220623125250.2355471-27-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: mrCEpUkbvrlRu_dSm7I3U5CjQAZQL9h3
X-Proofpoint-ORIG-GUID: mrCEpUkbvrlRu_dSm7I3U5CjQAZQL9h3
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055313_897461_E60A3419 
X-CRM114-Status: GOOD (  14.97  )
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
 sound/soc/rockchip/rockchip_i2s.c     | 1 +
 sound/soc/rockchip/rockchip_i2s_tdm.c | 1 +
 sound/soc/rockchip/rockchip_pdm.c     | 1 +
 sound/soc/rockchip/rockchip_spdif.c   | 1 +
 4 files changed, 4 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index d300eee9ddaae..f8c3fba725b4e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -561,6 +561,7 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
 
 static const struct snd_soc_component_driver rockchip_i2s_component = {
 	.name = DRV_NAME,
+	.legacy_dai_naming = 1,
 };
 
 static bool rockchip_i2s_wr_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 48b3ecfa58b46..2aad0f309cb63 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1120,6 +1120,7 @@ static const struct snd_soc_dai_ops rockchip_i2s_tdm_dai_ops = {
 
 static const struct snd_soc_component_driver rockchip_i2s_tdm_component = {
 	.name = DRV_NAME,
+	.legacy_dai_naming = 1,
 };
 
 static bool rockchip_i2s_tdm_wr_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 64d9891b6434f..6d93155411b03 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -405,6 +405,7 @@ static struct snd_soc_dai_driver rockchip_pdm_dai = {
 
 static const struct snd_soc_component_driver rockchip_pdm_component = {
 	.name = "rockchip-pdm",
+	.legacy_dai_naming = 1,
 };
 
 static int rockchip_pdm_runtime_suspend(struct device *dev)
diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index d027ca4b17964..8bef572d3cbc1 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -225,6 +225,7 @@ static struct snd_soc_dai_driver rk_spdif_dai = {
 
 static const struct snd_soc_component_driver rk_spdif_component = {
 	.name = "rockchip-spdif",
+	.legacy_dai_naming = 1,
 };
 
 static bool rk_spdif_wr_reg(struct device *dev, unsigned int reg)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
