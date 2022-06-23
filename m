Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AFE4CCA47E
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GotWbBXACd4C+0tRurd4GeeXCn8DsuhQ44XgTh0CJ60=; b=gftpakn47OgFP/
	wtEKLf8ypnIofezDvCh1+lsyEIW+QcaA5Z9ohSOBaAZex5A97Ca50fEdyknK/PI/mhdiEb/+0PH1e
	CWNTsEY9HDDqSVTDo1qewGbBnQaztT6/oaIaNykIbvBAiJ4Kn+Zn8qJmCxVxFuG0wgmdRJP+Y+P0c
	nj9zDr4XYChbB0HVw9ziaeI/OlCoByOxGwSVJztEV2hN1RlCIvi767tBq+Y19YPHOejHviE3qTwEB
	shIskzozdBKb/8nq+ruRzCF4QxH+KOMRHSBD+ATGo3nj+w5r+jfdZIunGXcBUBPw8ROS+JTM5nQal
	vxuR9zeE6DBsb2sM4F6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOj-00FBPh-5U; Thu, 23 Jun 2022 12:57:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLo-00F7xP-UJ; Thu, 23 Jun 2022 12:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=DN8v8qtec1v5YCZ914sIJGES0VWwSNxzupuu1YFG+cU=; b=kthcOX1KvZJki3jmH6emrgx/Q3
	jTQeytwEEoXpWNhJBXU5Iu8F7YErWlWUD4s8Z0MnTJlg3+gnfXiogfxjvUkgkIOTnSTeO7lFXVugf
	kJhrwl5kfSb5Dxy3veL4xaadqduon073A7dEiqmQgOL2VQrhaPBpBzRBFt8xxvHrdnhkx5FvRRukt
	h8NVaZzHxnMfOiwfhMEzLzDXx4xiadc6Uavtt/pf1esmiUcoDGtJqb2oQfb/HMBe+VLqLDKYh4CKC
	nSqcxWTUGC+73HOwbzJ12ka3Bt7XThwPc8JlEIbPBbjJY8lG6pTz0ih79TPB5LIRtW1+1S9uJhSKI
	LtQvopbw==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLj-007sAN-Ew; Thu, 23 Jun 2022 12:54:23 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqk015665;
	Thu, 23 Jun 2022 07:53:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=DN8v8qtec1v5YCZ914sIJGES0VWwSNxzupuu1YFG+cU=;
 b=a+wqoo7WmKUWzuaF6s3PqYdvm5nMcG61wN7LtWhiHwENCBq5DuI9DUsex4LBAde0zbu6
 AyBcusxWMYlxgM1xYeMOUKqUpmq9zD4uNR5KMHp/3GUpknh4Yz6J2bQgXmFas8SGzr4S
 c6WPWF8KvE+ytV0V1+gWue6pbbAV8zWDPEHkDZzKWEpbEsMSBI5kv3dPjgD4C5P9CTTx
 B3htNmmUbaI6eXuYcHeLToo8cTVxkIph2xY8vepS/i89Z/5xWzdmFQb9u9JerdJCgJS3
 hyGwJU0KrYibtTZQCBq+233agutZhMiISgyChWdpU/xLUO3NEi83opFHgIiKyK8A/xLp dA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:06 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:55 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:55 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 79EF511D4;
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
Subject: [PATCH v2 53/96] ASoC: msm*: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:07 +0100
Message-ID: <20220623125250.2355471-54-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: XpI5MOfl5aHmcnSBssvYb8RHyC6P163D
X-Proofpoint-ORIG-GUID: XpI5MOfl5aHmcnSBssvYb8RHyC6P163D
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_902252_4525C105 
X-CRM114-Status: GOOD (  13.71  )
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
 sound/soc/codecs/msm8916-wcd-analog.c  | 1 -
 sound/soc/codecs/msm8916-wcd-digital.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/sound/soc/codecs/msm8916-wcd-analog.c b/sound/soc/codecs/msm8916-wcd-analog.c
index e52a559c52d68..78e543eb3c834 100644
--- a/sound/soc/codecs/msm8916-wcd-analog.c
+++ b/sound/soc/codecs/msm8916-wcd-analog.c
@@ -1128,7 +1128,6 @@ static const struct snd_soc_component_driver pm8916_wcd_analog = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int pm8916_wcd_analog_parse_dt(struct device *dev,
diff --git a/sound/soc/codecs/msm8916-wcd-digital.c b/sound/soc/codecs/msm8916-wcd-digital.c
index 098a58990f07d..d490a0f186752 100644
--- a/sound/soc/codecs/msm8916-wcd-digital.c
+++ b/sound/soc/codecs/msm8916-wcd-digital.c
@@ -1155,7 +1155,6 @@ static const struct snd_soc_component_driver msm8916_wcd_digital = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config msm8916_codec_regmap_config = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
