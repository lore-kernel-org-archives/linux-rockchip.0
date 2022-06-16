Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C9FC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vb+wjIJksLr6EB/8dV87SKSxaYIOWRvCzEsEKraCils=; b=S/dKQANDdRBjiw
	V0gHeXS1jLA2a8uqlH6yTvbNd8LJJOaEq8bPfSD3zfflej/JTqShJcRPHxv1y4XsX9McRgnnHcDPG
	hZoLatAL0TiDp3/RtxDEzl1BAN2ZZxZj63iT4TwG/Mtgdhaphtad4hr4IEgy899oJOYXS93AYVoO4
	TCTUdvAmC0Rm0YG0CZbTVdkCfCF2Pq7VMbVOA0r7hoJ5AVsPqz7eeoZfhC69tmjEPRh5OXNy/tHvz
	O37L+kp24VYR1+KlkjdRrJ28jb25/eI1Z9WuGSqBSfymSb4YHI6anX8B0lnJlZrl0fP8VgOmURyTQ
	RHqPR+GjFr8wMSs+FBbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qcA-002tCM-A1; Thu, 16 Jun 2022 14:36:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaa-002rfD-Ar; Thu, 16 Jun 2022 14:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XTmK71WuLA/9Ac99kLz4eBCLnu0emzzD2gDzWBOz9gw=; b=jKDYDRtL7k/aUsGW+2KdX5Wsgr
	T2ErYGj0Mq4gEY0rlhkB6eVcIICRIjKxT7FZ/4DbTXV66gHtMQQWyPUXeMhy9IY3IApHLF7TJNl2m
	J8NHEC3X93wraFrJrCGys+OeqW8fusH9MSZJKXH1BSuaydNYzfID8KkJsimtnXKFwSXJ1jq8keKrQ
	HZENAU0JAipiIC9Gy94RQOs8kfU0m0OcIOFcIiQBuzdDHM8leMusvsoi2BogVvAEf2auU6WGUGMEl
	oTTJ5tlHRoybj/IfAsOv91s9vLLZyEjUChaTNjzTkRu58tZH2bOndObGubr3wagj39OaKDCV84gWT
	fSXUxiDg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaR-008R3e-EC; Thu, 16 Jun 2022 14:35:11 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaM029573;
	Thu, 16 Jun 2022 09:34:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=XTmK71WuLA/9Ac99kLz4eBCLnu0emzzD2gDzWBOz9gw=;
 b=ouPrD0vUxrg5wqwMz6ytNI/eWUqeRG+CjEflUIy7GD/jbt5am5B8H/CHpL8CWd6OGrBT
 UJJlZGtExSrRRjCpUFflt9skPyFYfYfJIrm+HQ3aCT92QE/KMewWIRyOilJowkzFEwyk
 jX0WDjYT2amA/MfjQd2oJHmKBXztvsMq7mGBAC5VzZrcNv02PjgkjrMbyausVAh1JxgM
 IHDI5tJJCPJxA9UW1iMq9nXTJkKB4g7V/MAIJqA8nhnGFoHSEaAO3vaSzf1oFPTMaefC
 BwxhPiyuRl3eZt9cknm4Ms2c8WXSAjgAJZwghjhMmM9eXg5m2m/2qExHxQ+hDjdYjl2b KA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:44 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:33 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:33 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 8263711DA;
	Thu, 16 Jun 2022 14:34:33 +0000 (UTC)
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
Subject: [PATCH 44/96] ASoC: topology: KUnit: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:37 +0100
Message-ID: <20220616143429.1324494-45-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: nFsoe9Gac6mxi3v6zo_f_OUaPb_Nl9IN
X-Proofpoint-GUID: nFsoe9Gac6mxi3v6zo_f_OUaPb_Nl9IN
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153508_574473_1E1E2D88 
X-CRM114-Status: GOOD (  12.24  )
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
 sound/soc/soc-topology-test.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/sound/soc/soc-topology-test.c b/sound/soc/soc-topology-test.c
index ae3968161509c..f3ba2be259e5c 100644
--- a/sound/soc/soc-topology-test.c
+++ b/sound/soc/soc-topology-test.c
@@ -104,7 +104,6 @@ static const struct snd_soc_component_driver test_component = {
 	.name = "sound-soc-topology-test",
 	.probe = d_probe,
 	.remove = d_remove,
-	.non_legacy_dai_naming = 1,
 };
 
 /* ===== TOPOLOGY TEMPLATES ================================================= */
@@ -238,7 +237,6 @@ static int d_probe_null_comp(struct snd_soc_component *component)
 static const struct snd_soc_component_driver test_component_null_comp = {
 	.name = "sound-soc-topology-test",
 	.probe = d_probe_null_comp,
-	.non_legacy_dai_naming = 1,
 };
 
 static void snd_soc_tplg_test_load_with_null_comp(struct kunit *test)
@@ -346,7 +344,6 @@ static int d_probe_null_fw(struct snd_soc_component *component)
 static const struct snd_soc_component_driver test_component_null_fw = {
 	.name = "sound-soc-topology-test",
 	.probe = d_probe_null_fw,
-	.non_legacy_dai_naming = 1,
 };
 
 static void snd_soc_tplg_test_load_with_null_fw(struct kunit *test)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
