Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DB05CCA481
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhLbzI6r38qjU89DG00MZtU3+x4AVWSxHoWnasWyUTE=; b=LXsCxOpiqiGj6E
	ddmIbSBLIWu89Z4ShM8/wMWt4MMcKs6lKpKtInbA3hQTJwTE4VvXcuERbvEnQ5TnNXktL5Bvd2dtY
	M7PPEUpGjhuq04pgFcok5ic5nkCeyHhoyK1lyTi5mlMxhLF63yHSV8eSPn1IXuG3bZJEZ8TFXGPWd
	RLGkYAScUeyMQPvpFC73kI05ax8/HNe/5Uc86V0nrQdG2iHTbOI9g8/D0/yIqY7uWB5QuBCOEj/pb
	9Xnzdmq6ZcFAnQXr0d/1O/fiuzqhktjih9UG4yziAagr3h0blxu+Fw2w67f+ed5//TZc1/4kO2SNQ
	SFmUfVzpwOtNe7FIE3FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPw-00FCvQ-Ph; Thu, 23 Jun 2022 12:58:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNL-00F9li-Ao; Thu, 23 Jun 2022 12:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TTe/CecmY+9QKzBX8S0Rj3j8y6EEdzCLr8WaNNo1SnQ=; b=rXg2hr3suykJgKHEtwgvN5TJZA
	Cvacz/f5sN38IyXPbj9NQDleAjkyqDhLITT+kxs8IWXm9CPkur8Nrl4BHuzzneyt8aWvMYwuXiD3X
	j/YnMmh0am1mM/JSM81rY4DUQ/czdDZe2oosWzbtr2Pr2hfT4FgyqaYJ4xFOmOzGz8tM8T41fFSHz
	zc/WbbCaH4QN0otBWBELWDK0XaV6zFU/Rt2dNfQuzqvDLuXpkrIWD0WoCM6q6TWfb5W2d8f5VK2OH
	3hvvcWuywAVQWi8sCNcwFKGRACKohvAmY0IuYk6kT6kGpJTCbPkIvIMUenLQ2DIg2tKdXu7Vzrc5r
	P58UOSfQ==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bizz-Df; Thu, 23 Jun 2022 12:55:55 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrD011978;
	Thu, 23 Jun 2022 07:52:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=TTe/CecmY+9QKzBX8S0Rj3j8y6EEdzCLr8WaNNo1SnQ=;
 b=bh9RDLptrDmcxbWFrZly6hCxC1g8IcmDj5vmmDNsXZ+E3MPs9GYM5d/V2hr2a5bvFh+K
 bBI5WWwgsypbigEtd0rcYjeitEJRhW5onaLWsRcbvchjYDG+MK6dTUHSFJLwyCzYXMts
 IfQAplk8CJ3+dFWd4ThF/hDRErK1Me/4Cj3k2xYzsfRKF+0qhQploS2GGLLmDXzyLYwH
 09SHG9+fwisSBmRhL3SFXfBmTF9FOt7/bvT0HgTuOHeX/sq0PIpmcu4imK+qUUHqhTFW
 G56mddyuMfcb7GjzF+sDFaPM4tUTKP7AIFZnyo3avKitnFlkC7T7wTNKWSUnTjVHptF8 EA== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-8
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:57 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:52 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:52 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 9DBC611D3;
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
Subject: [PATCH v2 21/96] ASoC: xtensa: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:35 +0100
Message-ID: <20220623125250.2355471-22-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: UT8f1XYJ0y16Uxm3jG1UZFGszERJpkcF
X-Proofpoint-ORIG-GUID: UT8f1XYJ0y16Uxm3jG1UZFGszERJpkcF
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
This driver appears to be on the CPU side of the DAI link and
currently uses the legacy naming, so add the new flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/xtensa/xtfpga-i2s.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/sound/soc/xtensa/xtfpga-i2s.c b/sound/soc/xtensa/xtfpga-i2s.c
index 8bd1215460327..a8f156540b500 100644
--- a/sound/soc/xtensa/xtfpga-i2s.c
+++ b/sound/soc/xtensa/xtfpga-i2s.c
@@ -475,13 +475,14 @@ static int xtfpga_pcm_new(struct snd_soc_component *component,
 }
 
 static const struct snd_soc_component_driver xtfpga_i2s_component = {
-	.name		= DRV_NAME,
-	.open		= xtfpga_pcm_open,
-	.close		= xtfpga_pcm_close,
-	.hw_params	= xtfpga_pcm_hw_params,
-	.trigger	= xtfpga_pcm_trigger,
-	.pointer	= xtfpga_pcm_pointer,
-	.pcm_construct	= xtfpga_pcm_new,
+	.name			= DRV_NAME,
+	.open			= xtfpga_pcm_open,
+	.close			= xtfpga_pcm_close,
+	.hw_params		= xtfpga_pcm_hw_params,
+	.trigger		= xtfpga_pcm_trigger,
+	.pointer		= xtfpga_pcm_pointer,
+	.pcm_construct		= xtfpga_pcm_new,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_dai_ops xtfpga_i2s_dai_ops = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
