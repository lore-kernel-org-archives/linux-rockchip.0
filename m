Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DF30C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMbyr48EaQmXJXhwiGrzfx2TAbcZ3YButtzLpa+OOfQ=; b=gVa/RNJawvAjdw
	57Y6AvNOmHRpOignlrIpzAbD5v4G8x3SsrypO+YBJrRzguztEB9c/Cf4qmAdWj82seW5rtT9CJTF9
	l2jAFNVZbi6jUTEA1DRcZmJTVkAXjOpCxfLUBxaYmGDqAEkVJZilBHxfUniPcebfE035h+7HR1T9G
	6H6TR85POi6uc12PpdPGbg4t/iV7D8fgthp+s/F1nQs+V2VobzG1h+l9bi38QuHshVo0UB1x2oOuA
	NCqBK+RNoNc1Nzy973to4s+7g6MEhurrjXL7by4fmU4k5nEjKKZ+NBgrb+lWhse+dpg8Domfon0o1
	53MtHY6n8M6mdGs4RYSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MQP-00FDYm-Ow; Thu, 23 Jun 2022 12:59:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNS-00F9xQ-PW; Thu, 23 Jun 2022 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=mSVEpTvWy90YEvkFYzlGMD66AUzOldLzrUpolwTzCqI=; b=oHm+OOhzpViJDz3YJxvdiUYZM7
	fRQyVzeFsROcMNZ1EvL9Xotg1NkxUX2mul3CVzd0qvxBXRpNEipCRaLLSUTQH+95tQ5q9OGLYMmn5
	Y3MlNPomwlylrrZWDON1LOoUCU47fCuar+hEbT75w3iUQSA0ZilKQASdoW57DAhfTX2pnnxaGuKKO
	r9oTOkLtOKAbT+zZh+p4F8i90rKkYR5eE/nDH26sHXkHlzEKgitJ1g3UMt3GEKAZ7zQy30IWA5hP9
	K9DoGAuMY1yRYkL/hgcRRtwy+elfwQ1QjKXWrCDtsnLWBVAlLwB5uw+z5WpOs9LNgQ3DBvC1tVISU
	fLkryaBg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj02-Ey; Thu, 23 Jun 2022 12:56:00 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrC011978;
	Thu, 23 Jun 2022 07:52:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=mSVEpTvWy90YEvkFYzlGMD66AUzOldLzrUpolwTzCqI=;
 b=HUneLPv1LEfj7XGWkXg3uTKx8AuXrNP46JQTPLHp7Zq463kndlQQ4849aJPV8LFPr0d+
 IhC2xwPieXkfucit9pd7xg6G2DYlPzYE1/kE8jwVYL/IR800PNzXhVC69FD7LKO7IoQp
 rg4iGnYanEJv2FRUT7FB+MlmwPDQToySifAf0cNHSKV96lTaUZTUSutHqnk6b44i9OMH
 bhCyHqRiwGPJYlPoRGt2LKq0HQBtvpZP0aoJr3IZ4fckqrEdPI5UO1ijBmvtqAQyhx95
 jWtUYzyEHvfxurO+0UtbIXfWqY/TYl8wyWcpV/VmY019FukskWGok7tPlvneSZAdP9Na gg== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:56 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:52 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:52 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id E4649478;
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
Subject: [PATCH v2 14/96] ASoC: sunxi: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:28 +0100
Message-ID: <20220623125250.2355471-15-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Rbz6ezQCF8Oxeyw0tvDG28evR_QP7BKr
X-Proofpoint-ORIG-GUID: Rbz6ezQCF8Oxeyw0tvDG28evR_QP7BKr
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135553_853251_09875BCE 
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
 sound/soc/sunxi/sun4i-codec.c | 3 ++-
 sound/soc/sunxi/sun4i-i2s.c   | 3 ++-
 sound/soc/sunxi/sun4i-spdif.c | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
index 53e3f43816cc2..bc634962a57ee 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1234,7 +1234,8 @@ static const struct snd_soc_component_driver sun8i_a23_codec_codec = {
 };
 
 static const struct snd_soc_component_driver sun4i_codec_component = {
-	.name = "sun4i-codec",
+	.name			= "sun4i-codec",
+	.legacy_dai_naming	= 1,
 };
 
 #define SUN4I_CODEC_RATES	SNDRV_PCM_RATE_CONTINUOUS
diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 5be33d07361bd..6028871825bae 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1125,7 +1125,8 @@ static struct snd_soc_dai_driver sun4i_i2s_dai = {
 };
 
 static const struct snd_soc_component_driver sun4i_i2s_component = {
-	.name	= "sun4i-dai",
+	.name			= "sun4i-dai",
+	.legacy_dai_naming	= 1,
 };
 
 static bool sun4i_i2s_rd_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/sunxi/sun4i-spdif.c b/sound/soc/sunxi/sun4i-spdif.c
index 17090f43150e0..bcceebca915ac 100644
--- a/sound/soc/sunxi/sun4i-spdif.c
+++ b/sound/soc/sunxi/sun4i-spdif.c
@@ -583,7 +583,8 @@ static const struct of_device_id sun4i_spdif_of_match[] = {
 MODULE_DEVICE_TABLE(of, sun4i_spdif_of_match);
 
 static const struct snd_soc_component_driver sun4i_spdif_component = {
-	.name		= "sun4i-spdif",
+	.name			= "sun4i-spdif",
+	.legacy_dai_naming	= 1,
 };
 
 static int sun4i_spdif_runtime_suspend(struct device *dev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
