Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0085C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qllMjMI2RtnilbmKzBVTuVKkhdHsUbOjMKyFJbxGCQo=; b=0oMCsuVMcbdDIJ
	b4Lp+wiRm1uM6QP262sn0khhwroJLp2RALG1GAGRM+a4+9RK9BmFKs1mHfZRXegTI93Z2e3sG+Z7D
	lBn3o+5slEGbVg1F8mpaKZacZn/rD0HMjvgTeJi8ZU1KPZVkVwNGIzndFwDDaoePyPP7myNowYep/
	6b/d9H8aMCxTkAEwWyTYqXC13O1Hbu8yoTSwgPBhjGP6vGz6bhm4wuSEJS9WNQWZ+ENkCsWHbEHWq
	q9AEI2kNRxAtqTwYBNQrPBFzhzTNWr8Ls12yJSeXZTfwFS+n+0atiQuvxqEDpJCHJ95/f7ULtS3Nb
	T/G1EdKbtVpMGvugivEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MQj-00FE5Y-Vs; Thu, 23 Jun 2022 12:59:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNS-00F9xK-Lg; Thu, 23 Jun 2022 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lUR098xjWteEbH1+FUtUPo6I+j1bPK4ArKFxC7siG8M=; b=YzBdJP2DdovDR6CqJwaYk7HHse
	ejp89HTv9QvHkEiKi9K7b2HbzCNFX+ZPknaser7iuwSX1g36+nWQ2O8JwQyjPoiGkcOwqpolNJTOi
	nNEhhsJDxk8cfXYNg8LOdjTd6sLycFNBnSj543waiEEQrsozs02xdpV9byH9p+Jl7ZCw/8qsvwA28
	kqIdm0CAg0kCpD4t933QK3hwa6FEvnufz89HLoxOCm8SGnCNi/wgUyJpU/F8ic5sMUGrY5xA7yw5j
	t+Sz7+hnUpQDHy0GNqC4yFGV71ouoPypb5QcL68ZUse0496UqMhYUwfJG83j/KKXKWDZO7G/0IocD
	YzlxBnCg==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj0D-Do; Thu, 23 Jun 2022 12:55:59 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqh015665;
	Thu, 23 Jun 2022 07:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=lUR098xjWteEbH1+FUtUPo6I+j1bPK4ArKFxC7siG8M=;
 b=V92mHpBxj1U/wYnPVgsO3LRKurl9Jm2I/m9HXLnmI0H7uz61m3DoLPesHfznSBDfLtHK
 P9QdIfasUx/i2RuT76alsan39yDuSzG+d4BT/Wkg405l9EF7F4j/Kcwhnx9X3kDl3TTT
 n8yPxJASPpeVjUrrzqxXuXXg/7HDXsCE6Z146b+1urkTu0Yuzk34pyf1oyg5vaIUs4xQ
 Ok0/MUqsbjBRDRUSUE/83V/Ov9i2gONqxlKg/TtXgpstisB5bev+fUXzklHCDn9ZHHXP
 bu0e0CZ1H0219eTYXNH9F37UII5gBY2Ozy6da4p9hEtHcDPUl+9CBsiqQe6WSTdywGNW KA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:03 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:54 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:54 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 133F311D1;
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
Subject: [PATCH v2 37/96] ASoC: meson: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:51:51 +0100
Message-ID: <20220623125250.2355471-38-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: SzNCzuptw7eEZGl2I-h7iUv05DZ7N-SU
X-Proofpoint-ORIG-GUID: SzNCzuptw7eEZGl2I-h7iUv05DZ7N-SU
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
 sound/soc/meson/aiu-acodec-ctrl.c | 1 -
 sound/soc/meson/aiu-codec-ctrl.c  | 1 -
 sound/soc/meson/g12a-toacodec.c   | 2 --
 sound/soc/meson/g12a-tohdmitx.c   | 1 -
 sound/soc/meson/t9015.c           | 1 -
 5 files changed, 6 deletions(-)

diff --git a/sound/soc/meson/aiu-acodec-ctrl.c b/sound/soc/meson/aiu-acodec-ctrl.c
index 3776b073a3dbb..d0f0ada5f4bce 100644
--- a/sound/soc/meson/aiu-acodec-ctrl.c
+++ b/sound/soc/meson/aiu-acodec-ctrl.c
@@ -192,7 +192,6 @@ static const struct snd_soc_component_driver aiu_acodec_ctrl_component = {
 	.num_dapm_routes	= ARRAY_SIZE(aiu_acodec_ctrl_routes),
 	.of_xlate_dai_name	= aiu_acodec_of_xlate_dai_name,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 #ifdef CONFIG_DEBUG_FS
 	.debugfs_prefix		= "acodec",
 #endif
diff --git a/sound/soc/meson/aiu-codec-ctrl.c b/sound/soc/meson/aiu-codec-ctrl.c
index 286ac4983d40c..84c10956c2414 100644
--- a/sound/soc/meson/aiu-codec-ctrl.c
+++ b/sound/soc/meson/aiu-codec-ctrl.c
@@ -139,7 +139,6 @@ static const struct snd_soc_component_driver aiu_hdmi_ctrl_component = {
 	.num_dapm_routes	= ARRAY_SIZE(aiu_hdmi_ctrl_routes),
 	.of_xlate_dai_name	= aiu_hdmi_of_xlate_dai_name,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 #ifdef CONFIG_DEBUG_FS
 	.debugfs_prefix		= "hdmi",
 #endif
diff --git a/sound/soc/meson/g12a-toacodec.c b/sound/soc/meson/g12a-toacodec.c
index 1dfee1396843c..ddc667956cf5e 100644
--- a/sound/soc/meson/g12a-toacodec.c
+++ b/sound/soc/meson/g12a-toacodec.c
@@ -242,7 +242,6 @@ static const struct snd_soc_component_driver g12a_toacodec_component_drv = {
 	.dapm_routes		= g12a_toacodec_routes,
 	.num_dapm_routes	= ARRAY_SIZE(g12a_toacodec_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_component_driver sm1_toacodec_component_drv = {
@@ -254,7 +253,6 @@ static const struct snd_soc_component_driver sm1_toacodec_component_drv = {
 	.dapm_routes		= g12a_toacodec_routes,
 	.num_dapm_routes	= ARRAY_SIZE(g12a_toacodec_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config g12a_toacodec_regmap_cfg = {
diff --git a/sound/soc/meson/g12a-tohdmitx.c b/sound/soc/meson/g12a-tohdmitx.c
index 6c99052feafd8..579a04ad4d197 100644
--- a/sound/soc/meson/g12a-tohdmitx.c
+++ b/sound/soc/meson/g12a-tohdmitx.c
@@ -226,7 +226,6 @@ static const struct snd_soc_component_driver g12a_tohdmitx_component_drv = {
 	.dapm_routes		= g12a_tohdmitx_routes,
 	.num_dapm_routes	= ARRAY_SIZE(g12a_tohdmitx_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config g12a_tohdmitx_regmap_cfg = {
diff --git a/sound/soc/meson/t9015.c b/sound/soc/meson/t9015.c
index a9b8c4e77d405..9c6b4dac68932 100644
--- a/sound/soc/meson/t9015.c
+++ b/sound/soc/meson/t9015.c
@@ -234,7 +234,6 @@ static const struct snd_soc_component_driver t9015_codec_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(t9015_dapm_routes),
 	.suspend_bias_off	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config t9015_regmap_config = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
