Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9174C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZN7N7HM5VYUgkb3koXLQFqHFIPHCctf7NiuJ8OIwYs=; b=g+VbilVJGOKHN5
	h+kkVOFL8j3rf+45GNTSeiocastpKaQfHWPiAvyxNWjSeT2qn33ZqC6P/yEvQth0DskJakfv8SwJo
	R6p6mvuw46YMQq6zmCMi4nz2wqVYL2wOwww7ew/zoIidhMpLmt/djttVryFB1oO4qM+mG87XwKMq1
	GO6l7mXIBPRjCKZl7DXsUQJkt2WzCoWKkDRcnPXg3Mg7laQkeA0ybkT9EjFMZtocu877FV/UAMzsf
	KBZ/l+5K+VXuiQZKbWkvQmJ88yf7rd7+ja1IuJ36xZWCQujhJ80SQeOlSgt5yqZpDjKjVoSMTc5mw
	4Dh4aB+EZASA0utxuaVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qeR-002vrQ-Nx; Thu, 16 Jun 2022 14:39:15 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qbK-002sNV-G9; Thu, 16 Jun 2022 14:36:05 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC07CF027888;
	Thu, 16 Jun 2022 09:34:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=QOfuAT4opaQnGN4l3F7a/ekhy562k9SkJ4H9CFLqgJc=;
 b=gsyVEE5vjk/SPn6uZApJO4ZAWx4GqHhPRrIYYWurRE8cpj5RngDXNmg8NLRXRUnG+o5h
 R4D7/Yajp1eyz2ms3z/+jdkbjH679P+q23PSjkufoy4+yaI2Jp7doLdI2fzFGTXhR3p+
 zHUS4IG7rAG76ugZ7N6x77xhrSj3cH8V6tCp2PZLdqnXbrZoWQD3dLwRSfd/5jX/x55/
 aw60EqUcj2g80/BMMTb3nMDcgGXQtAMHfHNHF4OeY3LQOZJbPIWXxpXIcL8NDZC+8TO2
 pTsuW4p8oCQMUrOvWQKiDBsqtTZd49HEDhI5vqHzMCUNx82+UXmlrIKF+hjPsacqDXdy Xw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuu-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:41 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:32 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:32 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 2FC5811DA;
	Thu, 16 Jun 2022 14:34:32 +0000 (UTC)
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
Subject: [PATCH 28/96] ASoC: pxa: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:21 +0100
Message-ID: <20220616143429.1324494-29-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 4w4lVN3eXif12lQ6eqdKAmtSagwuJlo3
X-Proofpoint-ORIG-GUID: 4w4lVN3eXif12lQ6eqdKAmtSagwuJlo3
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073602_656192_57D03D8A 
X-CRM114-Status: GOOD (  15.16  )
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
