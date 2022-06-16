Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527C0C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKeRCrmR80SkhmTzo3fh3O6B7v58NBcQk0+UUGrapbY=; b=KyKhfPooryDAoa
	/al+gd+cbxAd6ADewZo6ki3bKHWQmTDv6FF0uM7W6A/H9+4Ovci6cgn3gvwcKSJE1h1pDjEeJHnM5
	1lytmv7tx9J9gKCpigMObhTWJLMZvHdaUvIji3xH7XZKxpLtmMKJxQM96KENON9tPhg8flHA0f0as
	a0k/12rWy8jrVaeybC8OcOQqtNS8XzdQKROtVWSak9lTuK5M6B2IoytLKHz6AOgfaXXog0bfieKkY
	XeyCWamX1p/x0LsZCkOhkMgeHuF3db3tFWhcSvx7iJe2btbLU9tHEIRkI4f/o77pheojAj2O8xumW
	zzZSI+Bq62BT7fV3Rjag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qcf-002tm9-Lf; Thu, 16 Jun 2022 14:37:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qab-002rgk-Aw; Thu, 16 Jun 2022 14:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=vz4pTGb6RSnyR0fnPsokrNw+ENVF1PSgVY/ErFIGaJk=; b=SDVMrj0NAG0NyB8Bju0rvvL0D/
	vChrlSXQNGHGJhUi3fJOrlOOHcJ5Ls1q6F7T6JETYdaQXZmieQN625jvAtgV9BlBw5omT6LxAMEpV
	/Di5rJHSvEhlDHKntOm9BQNdYnSd/oEmtvajWnBjCLKKveaLZjKqS83Fp/3aAkNkEUzbPya6oPg/N
	UlnJlJB626enf1e7x6I4XPcVoOdGc5LM8JBOQX2Oygb4aQ4mBjYK7WCrmaMl7cTvo0kASRaWCl2fu
	tup+nIjzOL3G1ZuYJMJScX8SgHgMh+GzmHfM9osLmOuAm1K2+jU5UVAXh8TpiSMpQYVK5l8rTat62
	wg21jZaA==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaV-0020k8-I4; Thu, 16 Jun 2022 14:35:16 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC07CK027888;
	Thu, 16 Jun 2022 09:34:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=vz4pTGb6RSnyR0fnPsokrNw+ENVF1PSgVY/ErFIGaJk=;
 b=k9RWvVinNmtMe5Nb7NgXildwXPhXJUHuJBSkRA/KjsULbV3w0m3mR5UCBvczGvECdVjR
 kNgpda6Ex6j62ZKzMPndIGdwEBBzqPl3Z33txwLlHSEzkQH1IryDpHFNYfTPKg0pwJSt
 LrqOW3Lxze2FktmEJTrq/96TlaeBVgcatoRMrcBZdFKlq+53gbZsBDMN9GffVmBDNOAF
 1HyTU2S7wFULz5iM92kNKl7FEvvi/okQdfX7SBLRCohmsJZNBZ88wyqImPfjko//bZk9
 m1vfYGFcJHHcBnKEuTNPoTG44GVr5NSRlm464R/6nKXtRFkPVMzKiawpXVnXa/kCfRWJ MQ== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuu-17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:46 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:34 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:34 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 3A14B11D3;
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
Subject: [PATCH 54/96] ASoC: nau*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:47 +0100
Message-ID: <20220616143429.1324494-55-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 3bfzhGq0CpGlzuP7AtLd48QqaW86OkC3
X-Proofpoint-ORIG-GUID: 3bfzhGq0CpGlzuP7AtLd48QqaW86OkC3
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153512_177530_4789E2FC 
X-CRM114-Status: GOOD (  12.06  )
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
 sound/soc/codecs/nau8315.c | 1 -
 sound/soc/codecs/nau8540.c | 1 -
 sound/soc/codecs/nau8810.c | 1 -
 sound/soc/codecs/nau8821.c | 1 -
 sound/soc/codecs/nau8822.c | 1 -
 sound/soc/codecs/nau8824.c | 1 -
 sound/soc/codecs/nau8825.c | 1 -
 7 files changed, 7 deletions(-)

diff --git a/sound/soc/codecs/nau8315.c b/sound/soc/codecs/nau8315.c
index 2b66e3f7a8b7f..ad4dce9e50807 100644
--- a/sound/soc/codecs/nau8315.c
+++ b/sound/soc/codecs/nau8315.c
@@ -93,7 +93,6 @@ static const struct snd_soc_component_driver nau8315_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_dai_ops nau8315_dai_ops = {
diff --git a/sound/soc/codecs/nau8540.c b/sound/soc/codecs/nau8540.c
index 347c715e22a4b..58f70a02f18aa 100644
--- a/sound/soc/codecs/nau8540.c
+++ b/sound/soc/codecs/nau8540.c
@@ -806,7 +806,6 @@ static const struct snd_soc_component_driver nau8540_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config nau8540_regmap_config = {
diff --git a/sound/soc/codecs/nau8810.c b/sound/soc/codecs/nau8810.c
index 7b3b1e4ac2465..ccb512c21d748 100644
--- a/sound/soc/codecs/nau8810.c
+++ b/sound/soc/codecs/nau8810.c
@@ -866,7 +866,6 @@ static const struct snd_soc_component_driver nau8810_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int nau8810_i2c_probe(struct i2c_client *i2c)
diff --git a/sound/soc/codecs/nau8821.c b/sound/soc/codecs/nau8821.c
index ce4e7f46bb067..6453e93678d22 100644
--- a/sound/soc/codecs/nau8821.c
+++ b/sound/soc/codecs/nau8821.c
@@ -1430,7 +1430,6 @@ static const struct snd_soc_component_driver nau8821_component_driver = {
 	.dapm_routes		= nau8821_dapm_routes,
 	.num_dapm_routes	= ARRAY_SIZE(nau8821_dapm_routes),
 	.suspend_bias_off	= 1,
-	.non_legacy_dai_naming	= 1,
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
diff --git a/sound/soc/codecs/nau8822.c b/sound/soc/codecs/nau8822.c
index 3907d1dd8ceef..1aef281a99727 100644
--- a/sound/soc/codecs/nau8822.c
+++ b/sound/soc/codecs/nau8822.c
@@ -1083,7 +1083,6 @@ static const struct snd_soc_component_driver soc_component_dev_nau8822 = {
 	.idle_bias_on			= 1,
 	.use_pmdown_time		= 1,
 	.endianness			= 1,
-	.non_legacy_dai_naming		= 1,
 };
 
 static const struct regmap_config nau8822_regmap_config = {
diff --git a/sound/soc/codecs/nau8824.c b/sound/soc/codecs/nau8824.c
index 2a7c935085353..ad54d70f7d8e7 100644
--- a/sound/soc/codecs/nau8824.c
+++ b/sound/soc/codecs/nau8824.c
@@ -1544,7 +1544,6 @@ static const struct snd_soc_component_driver nau8824_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_dai_ops nau8824_dai_ops = {
diff --git a/sound/soc/codecs/nau8825.c b/sound/soc/codecs/nau8825.c
index 20e45a337b8f2..907ec88c759a8 100644
--- a/sound/soc/codecs/nau8825.c
+++ b/sound/soc/codecs/nau8825.c
@@ -2478,7 +2478,6 @@ static const struct snd_soc_component_driver nau8825_component_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static void nau8825_reset_chip(struct regmap *regmap)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
