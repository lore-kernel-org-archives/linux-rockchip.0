Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 922B0CCA47A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUP+8Vl9RnfvT/Fxqv0IdG097Q+3BJ4qfrpEXdQXTec=; b=Agbh+aucjNqZii
	ngVs/GcZgDZieA+7hY8zaxIUCc/f9G4nNmxLWytILI7hJoO5Tfmf4+mK3lmUoenB3zL2dCBfzUbD+
	UBpVw3Hcmhpd1ZXqFR1t5pIKkMUzl3xZ3Wy70/06hZ550C7EyKV1GuqKXjL/s1yVTD47flyCMP8hk
	Bo8YlYlSzHY6VsUuSbLOVlHTCk/mBwZ7uetutZe9UFz2kgZDDqz2a5ddThuYaaF/wO38qrJ/Q9moK
	edW3rW/AUXZhqUEJfiPe0muBHKJQi1xnVClBO0vCQ52B/fVqKqVJ7e7YXt8wHOm4cTpdrDrxKBRGa
	hCPseVVKaU4rrJIwWuEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qcs-002u0v-Di; Thu, 16 Jun 2022 14:37:38 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qab-002rhL-TO; Thu, 16 Jun 2022 14:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Jgy4HYvWutWIwNsNORzLVRecig1c5kbslPS86+xHyEg=; b=Cy4ogxiv6jxnPPh7YaUJANa1Cu
	A98TrkXiiNtOjpMqZsV7vVGSujL/w34P0zqRC0M9GUdVvHR2VYQ8EfZVZa9U7PbnCkE7++HzbfRAf
	kknasQnWSMNI9Vl0RdB0iB0UMocDtzomc8enaNRR/9Gho6nVvt65C2nLEQgn+Fu41tBGOVhC8go/e
	ry/wGEzfedx7szETnwRfoUf2Nv3kDTIC43uM13KN8LsoTcKx2WaMRyPwna/D0G7swk86fA3RvZ9z0
	sLV5Af3Wwb3/xP0+q5uJtYWVj1+TQ/uBMyzMe0S726vwhLrxx9pX0zd2LPupIfwcx8GTCydmwOxFW
	qfRrUZ6Q==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaV-0020kX-GP; Thu, 16 Jun 2022 14:35:15 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC07CB027888;
	Thu, 16 Jun 2022 09:34:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=Jgy4HYvWutWIwNsNORzLVRecig1c5kbslPS86+xHyEg=;
 b=mgSUGDdDdpekTdlEAUpg7wE+LP369Rc3nUTdx/i78NvLL0khdeqZUXymwvnMr/ndg+Y2
 7dM5ha1U1u7v6YOuu7TE17NbtXDOPMIWYYoZFYvW+FAG5dmq5ubNNVGNnMY+oslWNoZO
 ZXdJIind7Vu0pQbk+niy0Nx3sWc+t2yG+6UxyZbdw+fJxiClb9PrVs4YN5HiqA5vayRE
 ugGeyCj2wiCFoQ+qcLJj7dURgtkp7Pgtc3K9WiGxRPbeyRWAeIXAT+0ezNobqDQbvHMA
 S55H5hYo32oL2nZoGifMM0BrTe/JgTks27bX1MtYOhVCKBpuYgD8kmmQx6C13BgS3xa8 2g== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuu-8
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:38 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:31 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:31 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 2D276468;
	Thu, 16 Jun 2022 14:34:31 +0000 (UTC)
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
Subject: [PATCH 16/96] ASoC: meson: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:09 +0100
Message-ID: <20220616143429.1324494-17-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: UFBxm3IHq5fcn3nVljfzcgJ60t0r2xj7
X-Proofpoint-ORIG-GUID: UFBxm3IHq5fcn3nVljfzcgJ60t0r2xj7
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153512_123871_36380196 
X-CRM114-Status: GOOD (  15.08  )
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
 sound/soc/meson/axg-frddr.c    | 3 +++
 sound/soc/meson/axg-pdm.c      | 4 +++-
 sound/soc/meson/axg-spdifin.c  | 1 +
 sound/soc/meson/axg-spdifout.c | 1 +
 sound/soc/meson/axg-toddr.c    | 3 +++
 5 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/sound/soc/meson/axg-frddr.c b/sound/soc/meson/axg-frddr.c
index 37f4bb3469b5c..61f9d417fd608 100644
--- a/sound/soc/meson/axg-frddr.c
+++ b/sound/soc/meson/axg-frddr.c
@@ -161,6 +161,7 @@ static const struct snd_soc_component_driver axg_frddr_component_drv = {
 	.hw_free		= axg_fifo_pcm_hw_free,
 	.pointer		= axg_fifo_pcm_pointer,
 	.trigger		= axg_fifo_pcm_trigger,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct axg_fifo_match_data axg_frddr_match_data = {
@@ -286,6 +287,7 @@ static const struct snd_soc_component_driver g12a_frddr_component_drv = {
 	.hw_free		= axg_fifo_pcm_hw_free,
 	.pointer		= axg_fifo_pcm_pointer,
 	.trigger		= axg_fifo_pcm_trigger,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct axg_fifo_match_data g12a_frddr_match_data = {
@@ -356,6 +358,7 @@ static const struct snd_soc_component_driver sm1_frddr_component_drv = {
 	.hw_free		= axg_fifo_pcm_hw_free,
 	.pointer		= axg_fifo_pcm_pointer,
 	.trigger		= axg_fifo_pcm_trigger,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct axg_fifo_match_data sm1_frddr_match_data = {
diff --git a/sound/soc/meson/axg-pdm.c b/sound/soc/meson/axg-pdm.c
index 672e43a9729dc..88ac58272f95b 100644
--- a/sound/soc/meson/axg-pdm.c
+++ b/sound/soc/meson/axg-pdm.c
@@ -457,7 +457,9 @@ static struct snd_soc_dai_driver axg_pdm_dai_drv = {
 	.remove		= axg_pdm_dai_remove,
 };
 
-static const struct snd_soc_component_driver axg_pdm_component_drv = {};
+static const struct snd_soc_component_driver axg_pdm_component_drv = {
+	.legacy_dai_naming = 1,
+};
 
 static const struct regmap_config axg_pdm_regmap_cfg = {
 	.reg_bits	= 32,
diff --git a/sound/soc/meson/axg-spdifin.c b/sound/soc/meson/axg-spdifin.c
index 4ba44e0d65d9f..e2cc4c4be7586 100644
--- a/sound/soc/meson/axg-spdifin.c
+++ b/sound/soc/meson/axg-spdifin.c
@@ -390,6 +390,7 @@ static const struct snd_kcontrol_new axg_spdifin_controls[] = {
 static const struct snd_soc_component_driver axg_spdifin_component_drv = {
 	.controls		= axg_spdifin_controls,
 	.num_controls		= ARRAY_SIZE(axg_spdifin_controls),
+	.legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config axg_spdifin_regmap_cfg = {
diff --git a/sound/soc/meson/axg-spdifout.c b/sound/soc/meson/axg-spdifout.c
index 3960d082e1436..e8a12f15f3b4a 100644
--- a/sound/soc/meson/axg-spdifout.c
+++ b/sound/soc/meson/axg-spdifout.c
@@ -383,6 +383,7 @@ static const struct snd_soc_component_driver axg_spdifout_component_drv = {
 	.dapm_routes		= axg_spdifout_dapm_routes,
 	.num_dapm_routes	= ARRAY_SIZE(axg_spdifout_dapm_routes),
 	.set_bias_level		= axg_spdifout_set_bias_level,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config axg_spdifout_regmap_cfg = {
diff --git a/sound/soc/meson/axg-toddr.c b/sound/soc/meson/axg-toddr.c
index d6adf7edea41f..e9208e74e9659 100644
--- a/sound/soc/meson/axg-toddr.c
+++ b/sound/soc/meson/axg-toddr.c
@@ -182,6 +182,7 @@ static const struct snd_soc_component_driver axg_toddr_component_drv = {
 	.hw_free		= axg_fifo_pcm_hw_free,
 	.pointer		= axg_fifo_pcm_pointer,
 	.trigger		= axg_fifo_pcm_trigger,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct axg_fifo_match_data axg_toddr_match_data = {
@@ -242,6 +243,7 @@ static const struct snd_soc_component_driver g12a_toddr_component_drv = {
 	.hw_free		= axg_fifo_pcm_hw_free,
 	.pointer		= axg_fifo_pcm_pointer,
 	.trigger		= axg_fifo_pcm_trigger,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct axg_fifo_match_data g12a_toddr_match_data = {
@@ -312,6 +314,7 @@ static const struct snd_soc_component_driver sm1_toddr_component_drv = {
 	.hw_free		= axg_fifo_pcm_hw_free,
 	.pointer		= axg_fifo_pcm_pointer,
 	.trigger		= axg_fifo_pcm_trigger,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct axg_fifo_match_data sm1_toddr_match_data = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
