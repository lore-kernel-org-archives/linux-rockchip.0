Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD1C9CCA47C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hc9GcuLGQSYT1byn011V5ouOjP0314lKJiQVgWmxudg=; b=wV3JFyZ9kBxjSB
	PNhYTt0m9EN8EX3usNPrEB6ONdUlOA5Md1a2aLQ+YQg/tXpoNyiXNO8PYQ6sjYU7ek9Et4BRuajgA
	sFMfhXwjcLCIarfmxvFZgTmFNW7FQxIiWpYGqL3dFZmHdj5wl718a0lARyGugUF1k7nGRQDv61PmB
	3OEGEy5xf4cCavb0puLQHlNYrt+lH+MOQ287Q5SgqgE8cOIw5qCGwirACSRUoaGvmmIBLufCiIvmh
	diNPMqRANp0wPKZp2HKAS3j6jyxxRwVPq9q1cQjWSUT/vK1aQIsAr6CzmASvciRzQKpKXY2BEaot1
	l2cLb9dp3Lvo38VeKz/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MQc-00FDtC-2N; Thu, 23 Jun 2022 12:59:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNT-00F9y7-Qn; Thu, 23 Jun 2022 12:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=/9B3Tv4x1R+WiyZZkgmE6X35871tNRl0teorevLnTSs=; b=cvj9vJSirLlNC9QCaSzflwKknJ
	lg80gtEnINsuu5jtW3UBCeAqij4G1H9leZM1VmlbImKLsMnqtEKjhfzgnA0+9DXJTsVYWw4ZS7Qeo
	EUWfqVfV0L8ig9iQ7FprBnHA540GsB33GHGFq1glqWpDuj/HmipBMmpZPR2fzZnALSVVwLupqL+31
	1/9HjscHeZqVFkmDX9bGEiZvwjuzjouXCqKWU5w6eLV3GkiB/bJrMitaEqWJirm5Xf2ChBYnW62Wb
	LSOLi+pu4arV/TEVRSTFEyeQPgTYGVFOuDbej+c8C4H9FoWcd1LuAgmHnippdoR28UynMKpHBdT+w
	6KfDfR9A==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj0K-Dn; Thu, 23 Jun 2022 12:56:02 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrM011978;
	Thu, 23 Jun 2022 07:53:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=/9B3Tv4x1R+WiyZZkgmE6X35871tNRl0teorevLnTSs=;
 b=nwfHcMkRaJARE75hfPCpExYvki9wShlIy05jrU9nPtv/totqPNEq4oL4cVXkobxQr/OV
 5BnuO1e9KG85AJrMFweU6I5Xt1xx5pr3+u8VMbVxu3QZ2tQ9z/fkShts3NKBll1jHboG
 KvTlejLRB8IEiB5WEjrYhDsW+j2ykRNjvdu6UvgGJLXxg0M1GICTL5LF4c4G1NfkltNG
 dcu6hlStzUcYUYsiZXW0ckycDCE9eM4dz3fZU4kRSXE05qHR9YXMj9SMhmRHNyM3Ppxm
 RbbHVq+eLGPZ5vTbg7jsYxexvckL9wZyQ8vXCu/YEFLcvAJdZ68gDf99hwoEu/KM4nYq wg== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:05 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:55 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:55 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 2405311D3;
	Thu, 23 Jun 2022 12:52:55 +0000 (UTC)
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
Subject: [PATCH v2 49/96] ASoC: cs*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:03 +0100
Message-ID: <20220623125250.2355471-50-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 0rLPDDbV6tR66bkSPf8IPzzNU8ZWDRS2
X-Proofpoint-ORIG-GUID: 0rLPDDbV6tR66bkSPf8IPzzNU8ZWDRS2
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135553_864955_F7322B0D 
X-CRM114-Status: GOOD (  13.72  )
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
 sound/soc/codecs/cs35l32.c | 1 -
 sound/soc/codecs/cs35l33.c | 1 -
 sound/soc/codecs/cs35l34.c | 1 -
 sound/soc/codecs/cs35l35.c | 1 -
 sound/soc/codecs/cs35l36.c | 1 -
 sound/soc/codecs/cs4234.c  | 1 -
 sound/soc/codecs/cs4265.c  | 1 -
 sound/soc/codecs/cs4270.c  | 1 -
 sound/soc/codecs/cs4271.c  | 1 -
 sound/soc/codecs/cs42l42.c | 1 -
 sound/soc/codecs/cs42l51.c | 1 -
 sound/soc/codecs/cs42l52.c | 1 -
 sound/soc/codecs/cs42l56.c | 1 -
 sound/soc/codecs/cs42l73.c | 1 -
 sound/soc/codecs/cs42xx8.c | 1 -
 sound/soc/codecs/cs43130.c | 1 -
 sound/soc/codecs/cs4341.c  | 1 -
 sound/soc/codecs/cs4349.c  | 1 -
 sound/soc/codecs/cs47l15.c | 1 -
 sound/soc/codecs/cs47l24.c | 1 -
 sound/soc/codecs/cs47l35.c | 1 -
 sound/soc/codecs/cs47l85.c | 1 -
 sound/soc/codecs/cs47l90.c | 1 -
 sound/soc/codecs/cs47l92.c | 1 -
 sound/soc/codecs/cs53l30.c | 1 -
 25 files changed, 25 deletions(-)

diff --git a/sound/soc/codecs/cs35l32.c b/sound/soc/codecs/cs35l32.c
index badfc55bc5fa0..8ff6f66be86fa 100644
--- a/sound/soc/codecs/cs35l32.c
+++ b/sound/soc/codecs/cs35l32.c
@@ -236,7 +236,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs35l32 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 /* Current and threshold powerup sequence Pg37 in datasheet */
diff --git a/sound/soc/codecs/cs35l33.c b/sound/soc/codecs/cs35l33.c
index 47dc0f6d90a2a..082025fa0370c 100644
--- a/sound/soc/codecs/cs35l33.c
+++ b/sound/soc/codecs/cs35l33.c
@@ -840,7 +840,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs35l33 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs35l33_audio_map),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config cs35l33_regmap = {
diff --git a/sound/soc/codecs/cs35l34.c b/sound/soc/codecs/cs35l34.c
index 50d509a060713..472ac982779be 100644
--- a/sound/soc/codecs/cs35l34.c
+++ b/sound/soc/codecs/cs35l34.c
@@ -787,7 +787,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs35l34 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct regmap_config cs35l34_regmap = {
diff --git a/sound/soc/codecs/cs35l35.c b/sound/soc/codecs/cs35l35.c
index 6b70afb70a674..714a759dca21b 100644
--- a/sound/soc/codecs/cs35l35.c
+++ b/sound/soc/codecs/cs35l35.c
@@ -1087,7 +1087,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs35l35 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct regmap_config cs35l35_regmap = {
diff --git a/sound/soc/codecs/cs35l36.c b/sound/soc/codecs/cs35l36.c
index dfe85dc2cd20f..4dc13e6f4874c 100644
--- a/sound/soc/codecs/cs35l36.c
+++ b/sound/soc/codecs/cs35l36.c
@@ -1300,7 +1300,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs35l36 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct regmap_config cs35l36_regmap = {
diff --git a/sound/soc/codecs/cs4234.c b/sound/soc/codecs/cs4234.c
index 881c5ba70c0ed..b49a3cf21ebe2 100644
--- a/sound/soc/codecs/cs4234.c
+++ b/sound/soc/codecs/cs4234.c
@@ -660,7 +660,6 @@ static const struct snd_soc_component_driver soc_component_cs4234 = {
 	.controls		= cs4234_snd_controls,
 	.num_controls		= ARRAY_SIZE(cs4234_snd_controls),
 	.set_bias_level		= cs4234_set_bias_level,
-	.non_legacy_dai_naming	= 1,
 	.idle_bias_on		= 1,
 	.suspend_bias_off	= 1,
 	.endianness		= 1,
diff --git a/sound/soc/codecs/cs4265.c b/sound/soc/codecs/cs4265.c
index 86bfa8d5ec787..76c19802d5fe1 100644
--- a/sound/soc/codecs/cs4265.c
+++ b/sound/soc/codecs/cs4265.c
@@ -553,7 +553,6 @@ static const struct snd_soc_component_driver soc_component_cs4265 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config cs4265_regmap = {
diff --git a/sound/soc/codecs/cs4270.c b/sound/soc/codecs/cs4270.c
index 97d26b9e8f7fe..ba67e43edf351 100644
--- a/sound/soc/codecs/cs4270.c
+++ b/sound/soc/codecs/cs4270.c
@@ -619,7 +619,6 @@ static const struct snd_soc_component_driver soc_component_device_cs4270 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 /*
diff --git a/sound/soc/codecs/cs4271.c b/sound/soc/codecs/cs4271.c
index 7663f89ac6a24..2021cf4426061 100644
--- a/sound/soc/codecs/cs4271.c
+++ b/sound/soc/codecs/cs4271.c
@@ -642,7 +642,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs4271 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs4271_common_probe(struct device *dev,
diff --git a/sound/soc/codecs/cs42l42.c b/sound/soc/codecs/cs42l42.c
index 6ca74c0d46eaa..d545a593a2516 100644
--- a/sound/soc/codecs/cs42l42.c
+++ b/sound/soc/codecs/cs42l42.c
@@ -581,7 +581,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs42l42 = {
 	.num_controls		= ARRAY_SIZE(cs42l42_snd_controls),
 	.idle_bias_on		= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 /* Switch to SCLK. Atomic delay after the write to allow the switch to complete. */
diff --git a/sound/soc/codecs/cs42l51.c b/sound/soc/codecs/cs42l51.c
index 0e933181b5dbb..51721edd8f53c 100644
--- a/sound/soc/codecs/cs42l51.c
+++ b/sound/soc/codecs/cs42l51.c
@@ -600,7 +600,6 @@ static const struct snd_soc_component_driver soc_component_device_cs42l51 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static bool cs42l51_writeable_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/codecs/cs42l52.c b/sound/soc/codecs/cs42l52.c
index 10e696406a71b..90bf535fc5a52 100644
--- a/sound/soc/codecs/cs42l52.c
+++ b/sound/soc/codecs/cs42l52.c
@@ -1061,7 +1061,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs42l52 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 /* Current and threshold powerup sequence Pg37 */
diff --git a/sound/soc/codecs/cs42l56.c b/sound/soc/codecs/cs42l56.c
index 510c94265b1f0..03e2540a0ba12 100644
--- a/sound/soc/codecs/cs42l56.c
+++ b/sound/soc/codecs/cs42l56.c
@@ -1114,7 +1114,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs42l56 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config cs42l56_regmap = {
diff --git a/sound/soc/codecs/cs42l73.c b/sound/soc/codecs/cs42l73.c
index 5a9166289f366..0a146319755a6 100644
--- a/sound/soc/codecs/cs42l73.c
+++ b/sound/soc/codecs/cs42l73.c
@@ -1256,7 +1256,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs42l73 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config cs42l73_regmap = {
diff --git a/sound/soc/codecs/cs42xx8.c b/sound/soc/codecs/cs42xx8.c
index 5d6ef660f851f..d14eb2f6e1dd4 100644
--- a/sound/soc/codecs/cs42xx8.c
+++ b/sound/soc/codecs/cs42xx8.c
@@ -497,7 +497,6 @@ static const struct snd_soc_component_driver cs42xx8_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(cs42xx8_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 const struct cs42xx8_driver_data cs42448_data = {
diff --git a/sound/soc/codecs/cs43130.c b/sound/soc/codecs/cs43130.c
index a2bce0f9f247b..ca4d47cc9c915 100644
--- a/sound/soc/codecs/cs43130.c
+++ b/sound/soc/codecs/cs43130.c
@@ -2345,7 +2345,6 @@ static struct snd_soc_component_driver soc_component_dev_cs43130 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config cs43130_regmap = {
diff --git a/sound/soc/codecs/cs4341.c b/sound/soc/codecs/cs4341.c
index 8ac043f1aae01..ac1696034846d 100644
--- a/sound/soc/codecs/cs4341.c
+++ b/sound/soc/codecs/cs4341.c
@@ -202,7 +202,6 @@ static const struct snd_soc_component_driver soc_component_cs4341 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct of_device_id __maybe_unused cs4341_dt_ids[] = {
diff --git a/sound/soc/codecs/cs4349.c b/sound/soc/codecs/cs4349.c
index 7069e9b548576..f7c5c2fd43046 100644
--- a/sound/soc/codecs/cs4349.c
+++ b/sound/soc/codecs/cs4349.c
@@ -260,7 +260,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs4349 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config cs4349_regmap = {
diff --git a/sound/soc/codecs/cs47l15.c b/sound/soc/codecs/cs47l15.c
index 391fd7da331fd..0193173b86376 100644
--- a/sound/soc/codecs/cs47l15.c
+++ b/sound/soc/codecs/cs47l15.c
@@ -1353,7 +1353,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs47l15 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs47l15_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs47l15_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/cs47l24.c b/sound/soc/codecs/cs47l24.c
index 6356f81aafc56..f9a2b865d7176 100644
--- a/sound/soc/codecs/cs47l24.c
+++ b/sound/soc/codecs/cs47l24.c
@@ -1203,7 +1203,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs47l24 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs47l24_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs47l24_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/cs47l35.c b/sound/soc/codecs/cs47l35.c
index db2f844b8b17f..c1032d6c9143f 100644
--- a/sound/soc/codecs/cs47l35.c
+++ b/sound/soc/codecs/cs47l35.c
@@ -1638,7 +1638,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs47l35 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs47l35_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs47l35_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/cs47l85.c b/sound/soc/codecs/cs47l85.c
index d4fedc5ad516e..215d8211aa59b 100644
--- a/sound/soc/codecs/cs47l85.c
+++ b/sound/soc/codecs/cs47l85.c
@@ -2582,7 +2582,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs47l85 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs47l85_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs47l85_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/cs47l90.c b/sound/soc/codecs/cs47l90.c
index 5aec937a24629..1ad6526c78717 100644
--- a/sound/soc/codecs/cs47l90.c
+++ b/sound/soc/codecs/cs47l90.c
@@ -2497,7 +2497,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs47l90 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs47l90_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs47l90_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/cs47l92.c b/sound/soc/codecs/cs47l92.c
index a1b8dcdb9f7b7..59da34b480a87 100644
--- a/sound/soc/codecs/cs47l92.c
+++ b/sound/soc/codecs/cs47l92.c
@@ -1958,7 +1958,6 @@ static const struct snd_soc_component_driver soc_component_dev_cs47l92 = {
 	.num_dapm_routes	= ARRAY_SIZE(cs47l92_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int cs47l92_probe(struct platform_device *pdev)
diff --git a/sound/soc/codecs/cs53l30.c b/sound/soc/codecs/cs53l30.c
index 360ca2ffd5069..8796d8e84b7a2 100644
--- a/sound/soc/codecs/cs53l30.c
+++ b/sound/soc/codecs/cs53l30.c
@@ -899,7 +899,6 @@ static const struct snd_soc_component_driver cs53l30_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(cs53l30_dapm_routes),
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct regmap_config cs53l30_regmap = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
