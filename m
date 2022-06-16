Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44E32C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ft+lhyUIfFnkDJvraCAPoyJXHtkm9yQGKkXeHB+DlY4=; b=L9jyPU7DbtwZHN
	GF69bP9InFf+GtrMAJi27kr6O47QKmWAwJNnxIgDt7x9H/TYiu75Ba6M2quO90hy9TIBe395AWkQ3
	/Sik8wVHjWwXc6LDnVwAhEfi4mTXIncQ6PxTDIKrKT1FVZda1b6A8vAoHBjCmKOIiuFE9LEy+WZkb
	ZS5b17t6ndLu5gBizPssGolCm3yW12gc0kXpe/MGqQMMzoLtaHfF64BRuarfjQIFoY6MIA75cpYvi
	mP+Ohoto37odagnsDfUX6e3mljQLbs9z9ji5G2zARa1lohaFslhUXv7u5UImdIrwWvvF0cJp7Bakw
	/5Y72rMeG/EpnDjVDHFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qvQ-0033tB-7V; Thu, 16 Jun 2022 14:56:48 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1quP-0032P9-NA; Thu, 16 Jun 2022 14:55:48 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G4igBj030693;
	Thu, 16 Jun 2022 09:34:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=ttKYMuSSk7Enh/QuRNnfQy8ImbJaSohSJEJ1HjOktWg=;
 b=POtGEEImxsDrrP6xSYfWk/YXR0ANLAZQVr4N1AoC/h4GmT3B4LfGfQvQ7CGEX09CcVxu
 +kiW6IYSpTe1jH7WfTTAYnwZEPJYf1Lqz4jlwdLXo41bIwJYzAvmyvFq8STOFlSfB4HO
 FJITJO2kZvKUS4AZ5PeqyWFFPuy3wL7rP6knkhnY2Y21o5p/gnFlFBFa93Ds7qvENfgb
 1RLN5xMx0pUGE4aH6+sED1e0ZlLkCh7aC4dDXN5S+sZlja5fKoA3Dj1UTJHCESAE6Z/j
 NBkC/4bZhF/0gysEtQ6b4lVjD6tO3+vQ/H5Vp4kAB8fzjPuNuXMj6E1CR/k/0IEKKg3S /w== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuw-14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:48 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:35 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:35 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 2383B11DA;
	Thu, 16 Jun 2022 14:34:35 +0000 (UTC)
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
Subject: [PATCH 66/96] ASoC: 88pm860x: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:59 +0100
Message-ID: <20220616143429.1324494-67-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: IB_gmBi4nAMgjTHFh9oozsfwPSYxn68N
X-Proofpoint-ORIG-GUID: IB_gmBi4nAMgjTHFh9oozsfwPSYxn68N
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075545_830764_A251DDDA 
X-CRM114-Status: GOOD (  13.38  )
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
 sound/soc/codecs/88pm860x-codec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/88pm860x-codec.c b/sound/soc/codecs/88pm860x-codec.c
index c6043fa58c740..fc65283031cdc 100644
--- a/sound/soc/codecs/88pm860x-codec.c
+++ b/sound/soc/codecs/88pm860x-codec.c
@@ -1345,7 +1345,6 @@ static const struct snd_soc_component_driver soc_component_dev_pm860x = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int pm860x_codec_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
