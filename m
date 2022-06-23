Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3277FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZN7N7HM5VYUgkb3koXLQFqHFIPHCctf7NiuJ8OIwYs=; b=SiNd+HKhKIo9qR
	4cTen4pQJrT6+gCkBzlaPwrstKZQlzpCDUSNJu0pSYby6xK1wU6Y8Knvs6maGVJCDQWJW0CXM7ubX
	5QlG9fpVNzQPq2JW7+8mW20OwME2w3Ww5YMW6pD+8ns0m5C0t4ydlSk0mQ6xeZ/RuRw80REzHcPqc
	fcxkbSO6deBG3HNUss+EQ/tItEOhfo87CysBKU4lc/0ccNfYM+g7zFa5HVj+F7LfBgDL+fzpZjvzL
	wezUIxuGx+d3rvYp7OvGqcVnkhfAitQZYU58CEFWRsRCKZkBWZ7WWpfvLKbmQ2pafdi2eOMO3DWJZ
	MNORMAGDC2Jp/TXWioKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOI-00FAqX-QB; Thu, 23 Jun 2022 12:56:58 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLe-00F7mS-67; Thu, 23 Jun 2022 12:54:16 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxl7032604;
	Thu, 23 Jun 2022 07:53:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=QOfuAT4opaQnGN4l3F7a/ekhy562k9SkJ4H9CFLqgJc=;
 b=FzNvP/FjHbfz+W9ex+gORFc5G4ToV/CrMqnl6j/u1xQLydcwuCeBZxmst7btUYYZ7qZF
 Gb5AqTWH+X1j4OQnY3ig6rJ3+0Bz9Ur+m8L4q04aXXLgB1DnemK79sFjc86priljwaPx
 jPML9gEwH4LH/wCkbatSB2rrGAs03hBiTiMMeXv8Rd+lBRCK0ZAEoJui4UJuKIE4V3zH
 5TOdi2OkRRDsFXzJNBi3qNhtBrl/gXt6wS8hp1V13bnN8zKupQsrsX98cq6SCVUiPIuH
 Ak9Ei7BKTogf+IdPwiN7d9bSbZ7slBkTR4jZwLMvvsMsB7YKnR+u64ZZF0UYpkr4mnSo JQ== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:02 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:53 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 483F511D1;
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
Subject: [PATCH v2 28/96] ASoC: pxa: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:42 +0100
Message-ID: <20220623125250.2355471-29-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: mTToXSPgoDda4IDx_A0sU4pLDao-SRJ4
X-Proofpoint-ORIG-GUID: mTToXSPgoDda4IDx_A0sU4pLDao-SRJ4
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055414_396158_4F142D65 
X-CRM114-Status: GOOD (  14.94  )
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
 sound/soc/pxa/mmp-sspa.c   |  9 +++++----
 sound/soc/pxa/pxa-ssp.c    | 21 +++++++++++----------
 sound/soc/pxa/pxa2xx-i2s.c | 21 +++++++++++----------
 3 files changed, 27 insertions(+), 24 deletions(-)

diff --git a/sound/soc/pxa/mmp-sspa.c b/sound/soc/pxa/mmp-sspa.c
index 382e9d8608a3f..fb5a4390443fe 100644
--- a/sound/soc/pxa/mmp-sspa.c
+++ b/sound/soc/pxa/mmp-sspa.c
@@ -456,10 +456,11 @@ static int mmp_sspa_close(struct snd_soc_component *component,
 }
 
 static const struct snd_soc_component_driver mmp_sspa_component = {
-	.name		= "mmp-sspa",
-	.mmap		= mmp_pcm_mmap,
-	.open		= mmp_sspa_open,
-	.close		= mmp_sspa_close,
+	.name			= "mmp-sspa",
+	.mmap			= mmp_pcm_mmap,
+	.open			= mmp_sspa_open,
+	.close			= mmp_sspa_close,
+	.legacy_dai_naming	= 1,
 };
 
 static int asoc_mmp_sspa_probe(struct platform_device *pdev)
diff --git a/sound/soc/pxa/pxa-ssp.c b/sound/soc/pxa/pxa-ssp.c
index 0f504a9f4983d..430dd446321e5 100644
--- a/sound/soc/pxa/pxa-ssp.c
+++ b/sound/soc/pxa/pxa-ssp.c
@@ -848,16 +848,17 @@ static struct snd_soc_dai_driver pxa_ssp_dai = {
 };
 
 static const struct snd_soc_component_driver pxa_ssp_component = {
-	.name		= "pxa-ssp",
-	.pcm_construct	= pxa2xx_soc_pcm_new,
-	.open		= pxa2xx_soc_pcm_open,
-	.close		= pxa2xx_soc_pcm_close,
-	.hw_params	= pxa2xx_soc_pcm_hw_params,
-	.prepare	= pxa2xx_soc_pcm_prepare,
-	.trigger	= pxa2xx_soc_pcm_trigger,
-	.pointer	= pxa2xx_soc_pcm_pointer,
-	.suspend	= pxa_ssp_suspend,
-	.resume		= pxa_ssp_resume,
+	.name			= "pxa-ssp",
+	.pcm_construct		= pxa2xx_soc_pcm_new,
+	.open			= pxa2xx_soc_pcm_open,
+	.close			= pxa2xx_soc_pcm_close,
+	.hw_params		= pxa2xx_soc_pcm_hw_params,
+	.prepare		= pxa2xx_soc_pcm_prepare,
+	.trigger		= pxa2xx_soc_pcm_trigger,
+	.pointer		= pxa2xx_soc_pcm_pointer,
+	.suspend		= pxa_ssp_suspend,
+	.resume			= pxa_ssp_resume,
+	.legacy_dai_naming	= 1,
 };
 
 #ifdef CONFIG_OF
diff --git a/sound/soc/pxa/pxa2xx-i2s.c b/sound/soc/pxa/pxa2xx-i2s.c
index ffcf44e4dc8c0..3e4c704036722 100644
--- a/sound/soc/pxa/pxa2xx-i2s.c
+++ b/sound/soc/pxa/pxa2xx-i2s.c
@@ -355,16 +355,17 @@ static struct snd_soc_dai_driver pxa_i2s_dai = {
 };
 
 static const struct snd_soc_component_driver pxa_i2s_component = {
-	.name		= "pxa-i2s",
-	.pcm_construct	= pxa2xx_soc_pcm_new,
-	.open		= pxa2xx_soc_pcm_open,
-	.close		= pxa2xx_soc_pcm_close,
-	.hw_params	= pxa2xx_soc_pcm_hw_params,
-	.prepare	= pxa2xx_soc_pcm_prepare,
-	.trigger	= pxa2xx_soc_pcm_trigger,
-	.pointer	= pxa2xx_soc_pcm_pointer,
-	.suspend	= pxa2xx_soc_pcm_suspend,
-	.resume		= pxa2xx_soc_pcm_resume,
+	.name			= "pxa-i2s",
+	.pcm_construct		= pxa2xx_soc_pcm_new,
+	.open			= pxa2xx_soc_pcm_open,
+	.close			= pxa2xx_soc_pcm_close,
+	.hw_params		= pxa2xx_soc_pcm_hw_params,
+	.prepare		= pxa2xx_soc_pcm_prepare,
+	.trigger		= pxa2xx_soc_pcm_trigger,
+	.pointer		= pxa2xx_soc_pcm_pointer,
+	.suspend		= pxa2xx_soc_pcm_suspend,
+	.resume			= pxa2xx_soc_pcm_resume,
+	.legacy_dai_naming	= 1,
 };
 
 static int pxa2xx_i2s_drv_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
