Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70F4EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEAiBLlPrfIwZgxxoLB7dWmoSAKGCvENuVeaq69sCMc=; b=0xcG5sPs/ySPed
	5Os9luDIgBJ8gmuUOXOdw4xbaC0hzHd/V8A/nePQuEy6tNEUjzNrBFVu60gbZ8KIaBTEDe290I5CZ
	HAXZ87VrjFGaoSBAczDeIofPsLLHMH72PuSnVhyueC1IcOqeodoHFQIwp3mM5LEBmNhdDAdl9i7wL
	Sn7If18JAowPT8FJXJyLo48nhLyIxNxBNXixZ5qMite/bDZA1KN17AesQQcNUgpdpo5SK7ZLIC85w
	yymaYrBNAb2nerYUfjNF8OAgryKPt99qNwWqy0mFMrjruRwMpbeGxarD9eOhm/6Mxa0bwSgxWl5nI
	q7gVLEagw3RmMw5k93Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MQf-00FDyl-OR; Thu, 23 Jun 2022 12:59:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNS-00F9xU-TB; Thu, 23 Jun 2022 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Moe+iDLBBrEDDxnDYh3XwjhpqoMM9y00x+UEeU8HbSI=; b=rIrGuWtuFcKU7jQKRHI8zT2fnP
	1jG88sGJg1c57xXc6liu17GRNn27uKvZeWBSQofTsCIPzcDslVFIqJojgeoTlk7paAu6S9E2iuuuA
	0p0PYRU682/g2tIbkBMZ4jdO4AFC9ju1cRnwMot+qZ8Eu3y6K3WJlCbv+W+ysoAJoUET7ROLibxsQ
	Qv3lytoXB+6Jl0wAdkIvwbdqUjvzhfXsWmF/9ZOUg9nUaITsRUIfVVMxQHM5SsegrhcxQDrWdTQ5A
	CmuFn7iuYMJJ/vxaJ+S4LC00CGNwIZ+n7XqUkQ3RIcZX+RR4QpIQxnjMn2bG8uu8BTXM2oDt9X5yy
	Rl+tic4w==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj0J-Dm; Thu, 23 Jun 2022 12:55:59 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBNlqi015665;
	Thu, 23 Jun 2022 07:53:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=Moe+iDLBBrEDDxnDYh3XwjhpqoMM9y00x+UEeU8HbSI=;
 b=nzDzD0M4+oBoB04zS3kTEyNWmfUPwrllM6NPXCURXxqnZPVrKRnNM+1jC4reaatLVL6/
 eaomOFc8OgQ2rokIOM0wG2hgPs6+RYsLQPb2oV8sD/PkdNHr1IQzFA6f8R0GaPfDEQeZ
 VidDMiKaPsXwSbSfpdwcp4/AiYqrRsXGc4lHJQVZWlPU5Rmpe7H/hVR96x/x697vhA42
 iYKSSgo81x3ysKhIVLvEbah/ud74YD4LgwsCmVxVtNxxJJdR1cfYrk715n/4EDxd4zAC
 DUSBAQ0jTicDQZK4NsJC8HM7nRljzfttU8VuIy62/4TkTAunWA8txK3sORmBQ8vXANg1 6g== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4j-15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:04 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:54 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:54 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 87A0F11DA;
	Thu, 23 Jun 2022 12:52:54 +0000 (UTC)
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
Subject: [PATCH v2 43/96] ASoC: test-component: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:51:57 +0100
Message-ID: <20220623125250.2355471-44-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: C7mfGE8ZI4r9XF-oXseaPgPSXaUVL4js
X-Proofpoint-ORIG-GUID: C7mfGE8ZI4r9XF-oXseaPgPSXaUVL4js
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135553_853250_5BC8770B 
X-CRM114-Status: GOOD (  12.81  )
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
 sound/soc/generic/test-component.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/generic/test-component.c b/sound/soc/generic/test-component.c
index e2a009bc69af2..98c8990596a88 100644
--- a/sound/soc/generic/test-component.c
+++ b/sound/soc/generic/test-component.c
@@ -569,7 +569,6 @@ static int test_driver_probe(struct platform_device *pdev)
 		cdriv->name			= "test_codec";
 		cdriv->idle_bias_on		= 1;
 		cdriv->endianness		= 1;
-		cdriv->non_legacy_dai_naming	= 1;
 	}
 
 	cdriv->open		= test_component_open;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
