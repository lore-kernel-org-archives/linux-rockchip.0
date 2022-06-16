Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C931C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DgX61eKNrCM+1Z7Q+Qqw13KEhilCCMTzR+c/YMdyvY=; b=bmRRSdFrX7C7Te
	6/wjabbTRHQGf05iBuZMNqCK+o2c9Bv2MFcq8/eDOMQH3GAAM+Qt0cd7xfu1lbkBubn9vI9Tge1WK
	Zn9OgA7bNAYhQRvTHNg+wPAQpUSM4O+sXlgWP8/D0ehIjwcJi+NBkT2/DfF4wj3qjM6BBMf4LE/jx
	QnFcQ8puQ1mLS8CYF1sAF7OdSSinbfHDs4/vruHKoLHKy9zVtploN2lmD7gV03YxDF1PeB3/MPtWR
	kHB35PdswYsTdcyPbEUJl5uywe7uHo3iaQTaJhec4KRmzqfpximo6cLsGcYjUL8dDwl3WLUyGzfsY
	lwP3ycKoi87O7bSd5CYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qwg-0035Mq-PD; Thu, 16 Jun 2022 14:58:06 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qwe-0035Jx-G8; Thu, 16 Jun 2022 14:58:05 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G4igBZ030693;
	Thu, 16 Jun 2022 09:34:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=2rO2csJgitEQs3OC7sxGlM+d50Sg1X6iLqCuhVLcybA=;
 b=CoEtyYAmL9GtOap1UiaIKtynAGoc94M2RhtZduMVLXZU+HQwlVVQCmnh+oqcDMKOo19J
 JVLbmX8r55SFYSTzF+ja0ar94jIas8GZfaUyOTSY1kONezkwYWxu+FxJtOwwIhPPxWDZ
 kWNcovn+Jb3lUDT8wF1HHes5/L6IdUWCM9CNQ/8yVb8mOYLoSNC21qDzVhWyloxIQDFQ
 2L2BWKDl8vlgnsRVtKnIAvyWkA/YwiqkdR5w/PmNQh77LxvKHqjXqPvB/YEctccjTxOd
 e8n9pgmcdwY1WPwzAmIIGU73sFBCkRGKa2v01IVJXVl3t3DPXeA7GLYjRx72Ae46NnGC 6A== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuw-4
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
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 1A74711D4;
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
Subject: [PATCH 27/96] ASoC: au1x: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:20 +0100
Message-ID: <20220616143429.1324494-28-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: cu72FF8zL6hScIpqECZnPeTc5fEXSo1R
X-Proofpoint-ORIG-GUID: cu72FF8zL6hScIpqECZnPeTc5fEXSo1R
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075804_561735_0AE6B3B5 
X-CRM114-Status: GOOD (  15.42  )
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
 sound/soc/au1x/ac97c.c    | 3 ++-
 sound/soc/au1x/i2sc.c     | 3 ++-
 sound/soc/au1x/psc-ac97.c | 3 ++-
 sound/soc/au1x/psc-i2s.c  | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/sound/soc/au1x/ac97c.c b/sound/soc/au1x/ac97c.c
index 3b1700e665f52..0320513942774 100644
--- a/sound/soc/au1x/ac97c.c
+++ b/sound/soc/au1x/ac97c.c
@@ -223,7 +223,8 @@ static struct snd_soc_dai_driver au1xac97c_dai_driver = {
 };
 
 static const struct snd_soc_component_driver au1xac97c_component = {
-	.name		= "au1xac97c",
+	.name			= "au1xac97c",
+	.legacy_dai_name	= 1,
 };
 
 static int au1xac97c_drvprobe(struct platform_device *pdev)
diff --git a/sound/soc/au1x/i2sc.c b/sound/soc/au1x/i2sc.c
index 45bb7851e75d7..b15c8baa9ee45 100644
--- a/sound/soc/au1x/i2sc.c
+++ b/sound/soc/au1x/i2sc.c
@@ -227,7 +227,8 @@ static struct snd_soc_dai_driver au1xi2s_dai_driver = {
 };
 
 static const struct snd_soc_component_driver au1xi2s_component = {
-	.name		= "au1xi2s",
+	.name			= "au1xi2s",
+	.legacy_dai_naming	= 1,
 };
 
 static int au1xi2s_drvprobe(struct platform_device *pdev)
diff --git a/sound/soc/au1x/psc-ac97.c b/sound/soc/au1x/psc-ac97.c
index 05eb36991f147..b536394b9ca08 100644
--- a/sound/soc/au1x/psc-ac97.c
+++ b/sound/soc/au1x/psc-ac97.c
@@ -356,7 +356,8 @@ static const struct snd_soc_dai_driver au1xpsc_ac97_dai_template = {
 };
 
 static const struct snd_soc_component_driver au1xpsc_ac97_component = {
-	.name		= "au1xpsc-ac97",
+	.name			= "au1xpsc-ac97",
+	.legacy_dai_naming	= 1,
 };
 
 static int au1xpsc_ac97_drvprobe(struct platform_device *pdev)
diff --git a/sound/soc/au1x/psc-i2s.c b/sound/soc/au1x/psc-i2s.c
index 530a072d74274..79b5ae4e494cb 100644
--- a/sound/soc/au1x/psc-i2s.c
+++ b/sound/soc/au1x/psc-i2s.c
@@ -286,7 +286,8 @@ static const struct snd_soc_dai_driver au1xpsc_i2s_dai_template = {
 };
 
 static const struct snd_soc_component_driver au1xpsc_i2s_component = {
-	.name		= "au1xpsc-i2s",
+	.name			= "au1xpsc-i2s",
+	.legacy_dai_naming	= 1,
 };
 
 static int au1xpsc_i2s_drvprobe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
