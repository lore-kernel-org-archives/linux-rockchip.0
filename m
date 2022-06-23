Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53241CCA47E
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVeev7tmThNpQojmA3y485MFqECUs5bhpy9gwUR7TOk=; b=nUe48pv5VN9eqh
	zL7Qlc6sHJVEbgYQJlq3zP5zV93PVnNaq+2mQ25TR6A+bgXgjsBOAI85SPmNhhvUC5ultxHaFBJhT
	R91xvX8auBWQDXsZJz1lqsz1Fai43wzXw0uA2LoFlK79332psZt6wihMVmI/bExY356lRYG7aNF6J
	/3qLDyAyMn2DmMZumXUcKGOKuQQM7VY+yIh2yiz6w4RNEZj5BcyCrQqNGWEYLj/QrfuWUrHKTKOWH
	RtokoxHFyO3UJmXmLNpXnkeqt5JQq39/UvPeLUtG0UrQ+WG4DmeWTpwKVUdvaDPLdSyozyoUkWGhU
	Bfoignnl3kQ+F2sqc7vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPv-00FCtu-7Y; Thu, 23 Jun 2022 12:58:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNL-00F9lh-At; Thu, 23 Jun 2022 12:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ywxDxyPYvrEKuL+MgnDui0khdcCuhp+qKYexP3Zb2Og=; b=FUdq+cXH1Kn5uro1UlMiFnKbpA
	rGyhQvIEZvWeKKbkg1fZGDnL2LavN7Ez0ah8C3Zq+Sq7sl0X49W1/9CV9hyl4d6aPWTCf0++prtQM
	+GCDYyD4aKg8+NKI3bqrXg/GiGaljVZrXZXOHG+9VZiIZSDmc1eoe2n4opsYTEfyjc+X2Mx0esZDd
	YmrRimm2pmPkSlNVB2CzDNvdG81yu4njFm5jue5TGskQhM2gwets5dFXPinbqah7NSg77h/pz0nGK
	Xj//edCExl5Ts84Ii/eIw4PKgxkevd7DY/YUC0O2f7Is/YdCk3Nsk7Cs5uMe7Tb9sXUFsmIuo2pDc
	o98Oumuw==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj0N-Db; Thu, 23 Jun 2022 12:55:55 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrH011978;
	Thu, 23 Jun 2022 07:53:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=ywxDxyPYvrEKuL+MgnDui0khdcCuhp+qKYexP3Zb2Og=;
 b=kgQdfvml6vNlK7I4SolDV0dZCd70xzu5KYKxlszTFbG9gw/p2Z0ikusWw0nyZ+iNUFbd
 Z2uLW8oYM683WcAc8mifm2XfP28bRLrLrp09NRfaGNCofhui4wElhTxO5Y/KyTLeWTt5
 C5eu0R8ZZPd5SBvGkjGIrD5aY1DmdjnmvBw0vGNga0YaMcD4ORzq4nbhm4BJB8wInK/G
 1Ls/+eDAO6IJEIwipluwicV33ehV4JfxREIw9/mxNiAttdum4kh/gxw1nfxtKf6GuegG
 kZMcaNABq3KC4MezE9Cjz1lK7MnbAiXTXhnvbWEEbIeQyODJgh+FmC71ksuzfT7uqNUl 6w== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:01 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:53 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 840BA11D1;
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
Subject: [PATCH v2 31/96] ASoC: ti: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:45 +0100
Message-ID: <20220623125250.2355471-32-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: uE_-9GLACIYYUOTGbMgZX2cy_035BnIV
X-Proofpoint-ORIG-GUID: uE_-9GLACIYYUOTGbMgZX2cy_035BnIV
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
