Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD00BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIWNuUFXSHZqR/6a3zf6ignm2vrQH+bCNG3E5SAdpSo=; b=rTUVLNtCmdFtT7
	qQ7UyONeuSjsKve9ghnpGmS5m1UihLRvlAGv/GJeJFi6kU5m1QmLeVDSCn60Hf+EARO1Xjtrm+oYE
	Xh6ZpBlNRMWmRVzaymeBsqCQ0pCVkSCVb/ZU2JHiEiIXYXXSH54Ws4mtX1xRds7ri4303ocxmyGYD
	ifQwH+qNe/hu7OoRGRyI//PpCk7GwMmo0H0OIjfQFAhSyCSfNHAdDw15DNahs6IAI2tHEmtmYODV0
	JTr95vr7lGhz3Rh9bJi5Z+kjY61dIW1/KNppBYc8rJ72KQVfkVuDDXCZ3zMowBPkwc1yfKvnuRZ+4
	0GjO/nCKGNWCuIsGC8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MMk-00F8y8-Tq; Thu, 23 Jun 2022 12:55:22 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MKq-00F72Q-LW; Thu, 23 Jun 2022 12:53:31 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqc015665;
	Thu, 23 Jun 2022 07:52:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=ZbauxbsNGm9xAny7IOFo1jE6ACKMKJr4mljuYL9lUZI=;
 b=MPOwFXqDN8U9oWJdwNA8OUN36n09Lwt7sCkNUOXrxAZEsn1kLXd8EWGvHR94XHJRWJ2+
 wUTXVn2epUkeGplkeA8tOMY58rJssAY04gDxp8tIIBnEZ0gtnYWSQmmux7y8Gva5IZ9P
 gWra0YGJHEyl19vGXXuUhQOHzy64bH3dFQR4O0BoKGeQAQms4QuWsLkmBEbOHukSalEB
 Iq12/pnW7/zGJW2PHEe7nlC8N5LTf6V3pU6ZAH3hUQdAV2XMqma/PmAAK9Xol5PoMGOr
 rneYRbpms0AQtiA5y9nhpjGYlLQ2uWpioPh8vdcy+oQ7F+S/dzyXizGpuxu7cvayMOCR SA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-9
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:59 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:52 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:52 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 52A0711D3;
	Thu, 23 Jun 2022 12:52:52 +0000 (UTC)
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
Subject: [PATCH v2 18/96] ASoC: amd: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:32 +0100
Message-ID: <20220623125250.2355471-19-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: IA-ECFlg29Sq85BFJIbLgooa5MDsQMWw
X-Proofpoint-ORIG-GUID: IA-ECFlg29Sq85BFJIbLgooa5MDsQMWw
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055324_823213_1D88E905 
X-CRM114-Status: GOOD (  15.85  )
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
 sound/soc/amd/acp/acp-platform.c     | 15 ++++++++-------
 sound/soc/amd/raven/acp3x-i2s.c      |  3 ++-
 sound/soc/amd/renoir/acp3x-pdm-dma.c | 13 +++++++------
 sound/soc/amd/vangogh/acp5x-i2s.c    |  1 +
 sound/soc/amd/yc/acp6x-pdm-dma.c     | 13 +++++++------
 5 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/sound/soc/amd/acp/acp-platform.c b/sound/soc/amd/acp/acp-platform.c
index 65a809e2c29ff..3c4fd8b805891 100644
--- a/sound/soc/amd/acp/acp-platform.c
+++ b/sound/soc/amd/acp/acp-platform.c
@@ -267,13 +267,14 @@ static int acp_dma_close(struct snd_soc_component *component,
 }
 
 static const struct snd_soc_component_driver acp_pcm_component = {
-	.name		= DRV_NAME,
-	.open		= acp_dma_open,
-	.close		= acp_dma_close,
-	.hw_params	= acp_dma_hw_params,
-	.pointer	= acp_dma_pointer,
-	.mmap		= acp_dma_mmap,
-	.pcm_construct	= acp_dma_new,
+	.name			= DRV_NAME,
+	.open			= acp_dma_open,
+	.close			= acp_dma_close,
+	.hw_params		= acp_dma_hw_params,
+	.pointer		= acp_dma_pointer,
+	.mmap			= acp_dma_mmap,
+	.pcm_construct		= acp_dma_new,
+	.legacy_dai_naming	= 1,
 };
 
 int acp_platform_register(struct device *dev)
diff --git a/sound/soc/amd/raven/acp3x-i2s.c b/sound/soc/amd/raven/acp3x-i2s.c
index de6f70d7ef364..aa38cef1776da 100644
--- a/sound/soc/amd/raven/acp3x-i2s.c
+++ b/sound/soc/amd/raven/acp3x-i2s.c
@@ -257,7 +257,8 @@ static const struct snd_soc_dai_ops acp3x_i2s_dai_ops = {
 };
 
 static const struct snd_soc_component_driver acp3x_dai_component = {
-	.name           = DRV_NAME,
+	.name			= DRV_NAME,
+	.legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_dai_driver acp3x_i2s_dai = {
diff --git a/sound/soc/amd/renoir/acp3x-pdm-dma.c b/sound/soc/amd/renoir/acp3x-pdm-dma.c
index 8c42345ee41e9..7203c6488df0e 100644
--- a/sound/soc/amd/renoir/acp3x-pdm-dma.c
+++ b/sound/soc/amd/renoir/acp3x-pdm-dma.c
@@ -363,12 +363,13 @@ static struct snd_soc_dai_driver acp_pdm_dai_driver = {
 };
 
 static const struct snd_soc_component_driver acp_pdm_component = {
-	.name		= DRV_NAME,
-	.open		= acp_pdm_dma_open,
-	.close		= acp_pdm_dma_close,
-	.hw_params	= acp_pdm_dma_hw_params,
-	.pointer	= acp_pdm_dma_pointer,
-	.pcm_construct	= acp_pdm_dma_new,
+	.name			= DRV_NAME,
+	.open			= acp_pdm_dma_open,
+	.close			= acp_pdm_dma_close,
+	.hw_params		= acp_pdm_dma_hw_params,
+	.pointer		= acp_pdm_dma_pointer,
+	.pcm_construct		= acp_pdm_dma_new,
+	.legacy_dai_naming	= 1,
 };
 
 static int acp_pdm_audio_probe(struct platform_device *pdev)
diff --git a/sound/soc/amd/vangogh/acp5x-i2s.c b/sound/soc/amd/vangogh/acp5x-i2s.c
index 72c8c68e59336..773e96f1b4dd6 100644
--- a/sound/soc/amd/vangogh/acp5x-i2s.c
+++ b/sound/soc/amd/vangogh/acp5x-i2s.c
@@ -345,6 +345,7 @@ static const struct snd_soc_dai_ops acp5x_i2s_dai_ops = {
 
 static const struct snd_soc_component_driver acp5x_dai_component = {
 	.name = "acp5x-i2s",
+	.legacy_dai_naming = 1,
 };
 
 static struct snd_soc_dai_driver acp5x_i2s_dai = {
diff --git a/sound/soc/amd/yc/acp6x-pdm-dma.c b/sound/soc/amd/yc/acp6x-pdm-dma.c
index 7e66393e41535..acecd6a4ec4b1 100644
--- a/sound/soc/amd/yc/acp6x-pdm-dma.c
+++ b/sound/soc/amd/yc/acp6x-pdm-dma.c
@@ -335,12 +335,13 @@ static struct snd_soc_dai_driver acp6x_pdm_dai_driver = {
 };
 
 static const struct snd_soc_component_driver acp6x_pdm_component = {
-	.name		= DRV_NAME,
-	.open		= acp6x_pdm_dma_open,
-	.close		= acp6x_pdm_dma_close,
-	.hw_params	= acp6x_pdm_dma_hw_params,
-	.pointer	= acp6x_pdm_dma_pointer,
-	.pcm_construct	= acp6x_pdm_dma_new,
+	.name			= DRV_NAME,
+	.open			= acp6x_pdm_dma_open,
+	.close			= acp6x_pdm_dma_close,
+	.hw_params		= acp6x_pdm_dma_hw_params,
+	.pointer		= acp6x_pdm_dma_pointer,
+	.pcm_construct		= acp6x_pdm_dma_new,
+	.legacy_dai_naming	= 1,
 };
 
 static int acp6x_pdm_audio_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
