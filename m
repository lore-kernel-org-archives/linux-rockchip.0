Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D132FCCA47A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IL2b6bXwY1Rk4mPQJgynmnVADxvij1U2VvfHZ+Yt0M=; b=J5rQ8l8Anix30+
	kC01rbY55A1cyFfoNOOR2r1UC2LUUwvAjCihvSp2OgoxiRuu5fB6mmuPcUFTstVmf0z5SxmHPGsHW
	g/McXNVYrmduDnPQ+F7UlpHdEoBA4HthvrMLWRvm7nIaMywuRlcvnhoce3za0TJOBO9ZzmHQvt7LJ
	bUqLomfANgPaJUt+E1q9T12uEzrHEeggTlcYxm8jViGMDR7VoQu72suHzBx3ryHi13quCEomoygdF
	GxM+Sc6+KdhdKgo3JXpJ2Zu9Py1wOGKww2dojUecR7BP0/NhGIBeRYjImuiVsxNn4mbskDNNH03nT
	smeCLtYkB6nMUbrqOBZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qct-002u25-Ae; Thu, 16 Jun 2022 14:37:39 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qac-002rhO-Ee; Thu, 16 Jun 2022 14:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=96o+562JkkL9bhGImvZTp19A+OVl2G5bsK/3jHm4+To=; b=FZTvHQvHzWE1Aq7828rmxypoeD
	bvTXK8X4HJZ1Q8kSddlCwkNyDGnrxcM/BmrlXnogqqfPmo+tqMeUaikqAjZ22piXsivN0ommyE9Lb
	+HU+2Lq0L5T2v8/IPbVoOEWQSlxLDTS3XED7L+FaQaoReprGMz5segqGeLFVGDnmu63aE3s7aRXjS
	RE5uvQNjjGOzrdC+ZV05Gu8pGwq+bbu9q/oLeeRDArs3kMaVxLcBtrJtmbaxzuwr432aqQeaWBMgS
	bDCV6EEQH3b1i8LAfZArxDofjMNoVEOw/TofYBVYtTZZNqbxJDxC+0y7KJU3PBCxWXQnXE2vB62JP
	EaVQOhpg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaS-008R3X-8S; Thu, 16 Jun 2022 14:35:14 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJa015765;
	Thu, 16 Jun 2022 09:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=96o+562JkkL9bhGImvZTp19A+OVl2G5bsK/3jHm4+To=;
 b=jIRtSajv3ftzFtO1om4cUfZ6Q4PSyeBY0BTB6dXjE4mY0Ln06HvpTftnvhN+e2Me98Hq
 QPevX7bk9W0eA8oH9ZqNwoVTxWSphO1KJIX6ZvHb7+F7o1MsqC+OQ5rWsmOmNFZ1Fq5Q
 Svpnp0Mus7Yi28L9cn9gfFVcuUc/EhuGQ/rmLn/kU4NDOvxDK6AD0zySwK3v5WETn/Vj
 vNVqzZB/uUX/954+wVUQr8bRp5S0JOSp53Uryp7USj3bLsunb6Ro+e1CTvO31WSjl/yL
 duJS+X/1KdYrptz3973W+wGcK659zZ6tO7SKVe+4vUE0y/yt+ecWUy2lauulz4IcqxpV lQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-8
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:36 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:31 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:31 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 0CD8F468;
	Thu, 16 Jun 2022 14:34:31 +0000 (UTC)
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
Subject: [PATCH 14/96] ASoC: sunxi: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:07 +0100
Message-ID: <20220616143429.1324494-15-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: cjWLu3nTIWbWMGXDYD-s4w34i12Rz64t
X-Proofpoint-GUID: cjWLu3nTIWbWMGXDYD-s4w34i12Rz64t
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153508_738148_8F0BFEF3 
X-CRM114-Status: GOOD (  15.30  )
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
 sound/soc/sunxi/sun4i-codec.c | 3 ++-
 sound/soc/sunxi/sun4i-i2s.c   | 3 ++-
 sound/soc/sunxi/sun4i-spdif.c | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
index 53e3f43816cc2..bc634962a57ee 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1234,7 +1234,8 @@ static const struct snd_soc_component_driver sun8i_a23_codec_codec = {
 };
 
 static const struct snd_soc_component_driver sun4i_codec_component = {
-	.name = "sun4i-codec",
+	.name			= "sun4i-codec",
+	.legacy_dai_naming	= 1,
 };
 
 #define SUN4I_CODEC_RATES	SNDRV_PCM_RATE_CONTINUOUS
diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index f58aa6406a874..806f331890b02 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1123,7 +1123,8 @@ static struct snd_soc_dai_driver sun4i_i2s_dai = {
 };
 
 static const struct snd_soc_component_driver sun4i_i2s_component = {
-	.name	= "sun4i-dai",
+	.name			= "sun4i-dai",
+	.legacy_dai_naming	= 1,
 };
 
 static bool sun4i_i2s_rd_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/sunxi/sun4i-spdif.c b/sound/soc/sunxi/sun4i-spdif.c
index 17090f43150e0..bcceebca915ac 100644
--- a/sound/soc/sunxi/sun4i-spdif.c
+++ b/sound/soc/sunxi/sun4i-spdif.c
@@ -583,7 +583,8 @@ static const struct of_device_id sun4i_spdif_of_match[] = {
 MODULE_DEVICE_TABLE(of, sun4i_spdif_of_match);
 
 static const struct snd_soc_component_driver sun4i_spdif_component = {
-	.name		= "sun4i-spdif",
+	.name			= "sun4i-spdif",
+	.legacy_dai_naming	= 1,
 };
 
 static int sun4i_spdif_runtime_suspend(struct device *dev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
