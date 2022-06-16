Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F7E7C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qllMjMI2RtnilbmKzBVTuVKkhdHsUbOjMKyFJbxGCQo=; b=aZXLcvnVVq55AR
	X//1SKzKQZc0Q16QAKdHTYxYByl2QukpbVtxPdTW6C9trgpoorbJYLjBrQRFORFpEh2utHcWbpfSW
	mtVXugWu8iQiNsDop4AlfGZSidBucxqxpfOF7uINSn+PWHtwNrXZxr4EPBanZ972nwC3LJuaIMDXb
	UpF83iySeiyyXxSnESTXWSh4MVS6F5ZZP3krjSKhiyj9+TXnN3lEaWvnJjDtWcludMPFT/NGcU8Iv
	8x/vgC+BwKPTjHf0ur1uKpqzoZlFkGlCW1Ez0GgmEMC8Ca0f7YaNl+yoVukcZrRbQTQe96Zt5iPrU
	mdwlSpI82WX/16QfAm5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qeO-002vn4-DZ; Thu, 16 Jun 2022 14:39:12 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qbH-002sL2-KH; Thu, 16 Jun 2022 14:36:01 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaL029573;
	Thu, 16 Jun 2022 09:34:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=lUR098xjWteEbH1+FUtUPo6I+j1bPK4ArKFxC7siG8M=;
 b=XTw7XT5/tRoU84b9ZED4jcQzVAKM2wCORBLfUZzoaYCwk6YYNSTc/N8eNgdo4wuSf9nz
 bqBPAIb31fQtnDqkFfEPYgMzwMyz7O1XIAw1i6O2d+2xmg/eyCeD48Y/9UXyybOOX2z0
 lfxdgyIS411qSriRX8SAKQQ8pL4N2fyX04qvTtg26VWVALzzYzFrzrsdGEEXyl/h9usQ
 iIDVOjATlUDrQZuUOkObGSapaNUjTyWCJspLwLw/X7g3TwsqgJzPlfdzwcaOOGXVV3g2
 8Q7MeCade04EvPuxG6QItkoQQo0Uc4OA5/s8HG6HEJUTBGfBxY+APK0/RqLSa66ZaBzg EQ== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:43 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:33 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:33 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id E639A11D4;
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
Subject: [PATCH 37/96] ASoC: meson: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:30 +0100
Message-ID: <20220616143429.1324494-38-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: nAqQYQX3tRsdxNBDXewgD7kcqwRQfft5
X-Proofpoint-GUID: nAqQYQX3tRsdxNBDXewgD7kcqwRQfft5
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073559_834612_8506E230 
X-CRM114-Status: GOOD (  13.36  )
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
 sound/soc/meson/aiu-acodec-ctrl.c | 1 -
 sound/soc/meson/aiu-codec-ctrl.c  | 1 -
 sound/soc/meson/g12a-toacodec.c   | 2 --
 sound/soc/meson/g12a-tohdmitx.c   | 1 -
 sound/soc/meson/t9015.c           | 1 -
 5 files changed, 6 deletions(-)

diff --git a/sound/soc/meson/aiu-acodec-ctrl.c b/sound/soc/meson/aiu-acodec-ctrl.c
index 3776b073a3dbb..d0f0ada5f4bce 100644
--- a/sound/soc/meson/aiu-acodec-ctrl.c
+++ b/sound/soc/meson/aiu-acodec-ctrl.c
@@ -192,7 +192,6 @@ static const struct snd_soc_component_driver aiu_acodec_ctrl_component = {
 	.num_dapm_routes	= ARRAY_SIZE(aiu_acodec_ctrl_routes),
 	.of_xlate_dai_name	= aiu_acodec_of_xlate_dai_name,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 #ifdef CONFIG_DEBUG_FS
 	.debugfs_prefix		= "acodec",
 #endif
diff --git a/sound/soc/meson/aiu-codec-ctrl.c b/sound/soc/meson/aiu-codec-ctrl.c
index 286ac4983d40c..84c10956c2414 100644
--- a/sound/soc/meson/aiu-codec-ctrl.c
+++ b/sound/soc/meson/aiu-codec-ctrl.c
@@ -139,7 +139,6 @@ static const struct snd_soc_component_driver aiu_hdmi_ctrl_component = {
 	.num_dapm_routes	= ARRAY_SIZE(aiu_hdmi_ctrl_routes),
 	.of_xlate_dai_name	= aiu_hdmi_of_xlate_dai_name,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 #ifdef CONFIG_DEBUG_FS
 	.debugfs_prefix		= "hdmi",
 #endif
diff --git a/sound/soc/meson/g12a-toacodec.c b/sound/soc/meson/g12a-toacodec.c
index 1dfee1396843c..ddc667956cf5e 100644
--- a/sound/soc/meson/g12a-toacodec.c
+++ b/sound/soc/meson/g12a-toacodec.c
@@ -242,7 +242,6 @@ static const struct snd_soc_component_driver g12a_toacodec_component_drv = {
 	.dapm_routes		= g12a_toacodec_routes,
 	.num_dapm_routes	= ARRAY_SIZE(g12a_toacodec_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_component_driver sm1_toacodec_component_drv = {
@@ -254,7 +253,6 @@ static const struct snd_soc_component_driver sm1_toacodec_component_drv = {
 	.dapm_routes		= g12a_toacodec_routes,
 	.num_dapm_routes	= ARRAY_SIZE(g12a_toacodec_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config g12a_toacodec_regmap_cfg = {
diff --git a/sound/soc/meson/g12a-tohdmitx.c b/sound/soc/meson/g12a-tohdmitx.c
index 6c99052feafd8..579a04ad4d197 100644
--- a/sound/soc/meson/g12a-tohdmitx.c
+++ b/sound/soc/meson/g12a-tohdmitx.c
@@ -226,7 +226,6 @@ static const struct snd_soc_component_driver g12a_tohdmitx_component_drv = {
 	.dapm_routes		= g12a_tohdmitx_routes,
 	.num_dapm_routes	= ARRAY_SIZE(g12a_tohdmitx_routes),
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config g12a_tohdmitx_regmap_cfg = {
diff --git a/sound/soc/meson/t9015.c b/sound/soc/meson/t9015.c
index a9b8c4e77d405..9c6b4dac68932 100644
--- a/sound/soc/meson/t9015.c
+++ b/sound/soc/meson/t9015.c
@@ -234,7 +234,6 @@ static const struct snd_soc_component_driver t9015_codec_driver = {
 	.num_dapm_routes	= ARRAY_SIZE(t9015_dapm_routes),
 	.suspend_bias_off	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static const struct regmap_config t9015_regmap_config = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
