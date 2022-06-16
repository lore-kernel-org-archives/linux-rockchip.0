Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A66C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVeev7tmThNpQojmA3y485MFqECUs5bhpy9gwUR7TOk=; b=NcafNIsDPzieJh
	pZxEgGkKdQTEztuMeIXxRboStn+yGnIWmeqkpKbKdqN6HZ0aqxmh3H/rZwboEKF5PxFUYBh70cWJq
	WjhQadAn3PmLvy09E+xZdAKoEWSy+OVjUaZNxXMZy9qQaRmWOdkH94YVlYzaEq6sAfOFbErid/wwS
	4HogEnAwnJHdDAbY/pXzBHguKD3T2MfFFXCIvhJV1D4/r/dAKCH9XwjMP52d93k6XRWH5jAErrjrB
	roC5o/dVQzhApu8CbjRMNtTegUjf/OD/GliBLJR3iq5CifesBu13g674q05Ric+RGEhFydT48ggR+
	T28brZZjJiARsrjYpTyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdg-002v0s-Lu; Thu, 16 Jun 2022 14:38:28 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qag-002rna-SB; Thu, 16 Jun 2022 14:35:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=ywxDxyPYvrEKuL+MgnDui0khdcCuhp+qKYexP3Zb2Og=; b=wHWH4dUvzk6TFrEtVK7cR0zVWq
	7Az38UZNMp62VoFBqWlb/SxrkZr4s664GbCGfe2WnR+i2mXQpCCfONL4x3i6HZ2I7BCc1Ifc1cJgD
	971ISYtr4xK4Dhj9HXToS54W7DTxCbsZpLYTp3nSMIBQk6WBnjyzrvmYP3Twq8gdli6fyUzs++AbS
	a6+I3Yuop5jYt9VFG3swJ8u3/M/phhsvQ++wQGaJQPDpGOyrSzBrIOhbF0/KRPjpSgvBS4eILJbyB
	HpG3hRCK7GQSpOHbeqHVHKEXK5Bcp4NRg8MOXqvKmm4ixJBUxkPLZovMGkgY5/dfiHHSaDAuCgvbV
	Uv5OGVQg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kM-Gj; Thu, 16 Jun 2022 14:35:21 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJe015765;
	Thu, 16 Jun 2022 09:34:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=ywxDxyPYvrEKuL+MgnDui0khdcCuhp+qKYexP3Zb2Og=;
 b=V3x6YxqB+qnMMAPs3Co5fjPda804QIKTfyFpTKz+t1I+tEUdjlYqpKfzjts6byM7XRks
 RVljc/yi1IQWPMk8qqcxDW1HCw64X8ZmX2n8HyQQP6U77U5mzIKVbmERTgiv+4kUiRnh
 HhW/HN8JCPKYAuoPy9kcmjBOGEtrZy1jNeqHEerNA49oSzD0SVdCZ3DdeVS817qvAFhI
 YICN9yBYM9EOTrUP55eWWNLIwXWrpScBaDp7/cvlLQwOFu4dyDPOKj6ffpCUKQMeFmKP
 jOI9dExRRuCWD/k54V95pPvlp/4HeO0yQDxQpdQdPgBqiii0qWyS3PHNcSl7Dp0rlQm3 mg== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:39 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:32 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:32 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 6F79811DA;
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
Subject: [PATCH 31/96] ASoC: ti: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:24 +0100
Message-ID: <20220616143429.1324494-32-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: kGoXYMhDsKFWJHfjEh22Y1Gt_QnQ90zz
X-Proofpoint-GUID: kGoXYMhDsKFWJHfjEh22Y1Gt_QnQ90zz
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153513_328828_6E5C173A 
X-CRM114-Status: GOOD (  15.11  )
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
 sound/soc/ti/davinci-i2s.c   | 3 ++-
 sound/soc/ti/davinci-mcasp.c | 3 ++-
 sound/soc/ti/davinci-vcif.c  | 3 ++-
 sound/soc/ti/omap-dmic.c     | 3 ++-
 sound/soc/ti/omap-hdmi.c     | 1 +
 sound/soc/ti/omap-mcbsp.c    | 3 ++-
 sound/soc/ti/omap-mcpdm.c    | 7 ++++---
 7 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/sound/soc/ti/davinci-i2s.c b/sound/soc/ti/davinci-i2s.c
index fe572b720b094..e6e77a5f3c1e7 100644
--- a/sound/soc/ti/davinci-i2s.c
+++ b/sound/soc/ti/davinci-i2s.c
@@ -640,7 +640,8 @@ static struct snd_soc_dai_driver davinci_i2s_dai = {
 };
 
 static const struct snd_soc_component_driver davinci_i2s_component = {
-	.name		= DRV_NAME,
+	.name			= DRV_NAME,
+	.legacy_dai_naming	= 1,
 };
 
 static int davinci_i2s_probe(struct platform_device *pdev)
diff --git a/sound/soc/ti/davinci-mcasp.c b/sound/soc/ti/davinci-mcasp.c
index e2aab4729f3ab..45ffcc7aadc93 100644
--- a/sound/soc/ti/davinci-mcasp.c
+++ b/sound/soc/ti/davinci-mcasp.c
@@ -1765,7 +1765,8 @@ static struct snd_soc_dai_driver davinci_mcasp_dai[] = {
 };
 
 static const struct snd_soc_component_driver davinci_mcasp_component = {
-	.name		= "davinci-mcasp",
+	.name			= "davinci-mcasp",
+	.legacy_dai_naming	= 1,
 };
 
 /* Some HW specific values and defaults. The rest is filled in from DT. */
diff --git a/sound/soc/ti/davinci-vcif.c b/sound/soc/ti/davinci-vcif.c
index f810123cc4070..36fa97e2b9e22 100644
--- a/sound/soc/ti/davinci-vcif.c
+++ b/sound/soc/ti/davinci-vcif.c
@@ -185,7 +185,8 @@ static struct snd_soc_dai_driver davinci_vcif_dai = {
 };
 
 static const struct snd_soc_component_driver davinci_vcif_component = {
-	.name		= "davinci-vcif",
+	.name			= "davinci-vcif",
+	.legacy_dai_naming	= 1,
 };
 
 static int davinci_vcif_probe(struct platform_device *pdev)
diff --git a/sound/soc/ti/omap-dmic.c b/sound/soc/ti/omap-dmic.c
index f3eed20611a3f..825c70a443dad 100644
--- a/sound/soc/ti/omap-dmic.c
+++ b/sound/soc/ti/omap-dmic.c
@@ -453,7 +453,8 @@ static struct snd_soc_dai_driver omap_dmic_dai = {
 };
 
 static const struct snd_soc_component_driver omap_dmic_component = {
-	.name		= "omap-dmic",
+	.name			= "omap-dmic",
+	.legacy_dai_naming	= 1,
 };
 
 static int asoc_dmic_probe(struct platform_device *pdev)
diff --git a/sound/soc/ti/omap-hdmi.c b/sound/soc/ti/omap-hdmi.c
index 3328c02f93c74..0dc0475670ffe 100644
--- a/sound/soc/ti/omap-hdmi.c
+++ b/sound/soc/ti/omap-hdmi.c
@@ -275,6 +275,7 @@ static const struct snd_soc_dai_ops hdmi_dai_ops = {
 
 static const struct snd_soc_component_driver omap_hdmi_component = {
 	.name = "omapdss_hdmi",
+	.legacy_dai_naming = 1,
 };
 
 static struct snd_soc_dai_driver omap5_hdmi_dai = {
diff --git a/sound/soc/ti/omap-mcbsp.c b/sound/soc/ti/omap-mcbsp.c
index 58d8e200a7b97..76df0e7844f8f 100644
--- a/sound/soc/ti/omap-mcbsp.c
+++ b/sound/soc/ti/omap-mcbsp.c
@@ -1317,7 +1317,8 @@ static struct snd_soc_dai_driver omap_mcbsp_dai = {
 };
 
 static const struct snd_soc_component_driver omap_mcbsp_component = {
-	.name		= "omap-mcbsp",
+	.name			= "omap-mcbsp",
+	.legacy_dai_naming	= 1,
 };
 
 static struct omap_mcbsp_platform_data omap2420_pdata = {
diff --git a/sound/soc/ti/omap-mcpdm.c b/sound/soc/ti/omap-mcpdm.c
index fafb2998ad0df..0b18a7bfd3fd7 100644
--- a/sound/soc/ti/omap-mcpdm.c
+++ b/sound/soc/ti/omap-mcpdm.c
@@ -524,9 +524,10 @@ static struct snd_soc_dai_driver omap_mcpdm_dai = {
 };
 
 static const struct snd_soc_component_driver omap_mcpdm_component = {
-	.name		= "omap-mcpdm",
-	.suspend	= omap_mcpdm_suspend,
-	.resume		= omap_mcpdm_resume,
+	.name			= "omap-mcpdm",
+	.suspend		= omap_mcpdm_suspend,
+	.resume			= omap_mcpdm_resume,
+	.legacy_dai_naming	= 1,
 };
 
 void omap_mcpdm_configure_dn_offsets(struct snd_soc_pcm_runtime *rtd,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
