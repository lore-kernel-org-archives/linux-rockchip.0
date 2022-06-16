Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2F5CCA490
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eh6bfL8SXDwCPieTXKIVI+sQ0UsEaXEYqQweH1yTOUc=; b=1eqGrFiui0Hoh2
	Qq4L8iLTsJYBKPBs5jI9LACZn0JcYv1KwIYMN6gKzLu48Pn+p8+lCiTCoZzCCFu3OqSTQMLEzYvhl
	ZKN7irR+B4jq43YQB7XCRbeQdvf8hCq+N/PLR1SPunzJKT8DXp16VWTI6i6jQZ5z+hIqftjj0V/bG
	mRbTZS4MaIBAi8fj5HQ0oP0Ygv9mphsoDfsbv/60a5SQSB38owrXgRHbX5iTQ5RfWKwO5ihzVh4yR
	VRmjASzhrQNKAC6faydqGsJtlydxUIrmZRL5h2ADszqVEV2xHbE4swur18l8rtQb0Hcg7K/JXQQm4
	A9J6OWyfSTRhFA6GvMYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qac-002rhv-2T; Thu, 16 Jun 2022 14:35:18 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaH-002rQj-2y; Thu, 16 Jun 2022 14:35:04 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GBnCaI029573;
	Thu, 16 Jun 2022 09:34:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=mIa1mkeEkrDJt0gyT2HtnOxCb8TL4rQN20e++H56G2c=;
 b=WF++K2livlbXpnkZLU36xjroMdLavKv47c7KhXYxHJ4WSkyR4VqtHiV2Eul68RXkLdI9
 /8iLqZPBRVmFElqqX8dkPma0XjdzDfFVTSWhwxfvghoaanoULYURQ221tIhmMTA04P+c
 6ODQfViNSnC67OdV7BaUPZEJNbAyCLgiREWik52KQG/SuBpWuUCiabIGCnu/Jixy9gTM
 Nh4q9k60goUMaVqzHn+HzIvjcChdzkM6Ha9EKD9QwIa8YPYIOpIwaLBn6kpF0wWRVVHA
 jm0eWBzaawskt5ekD9OPUlnlqrKLffkRs4m63XFWJeAtSe9tBvOTu4G6fu56rO67l6C1 Qw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3m-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:40 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:32 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:32 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 053C511D3;
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
Subject: [PATCH 26/96] ASoC: rockchip: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:19 +0100
Message-ID: <20220616143429.1324494-27-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: IpsGq9FoaXt-9eT2DdnEMXdnzL34HmIT
X-Proofpoint-GUID: IpsGq9FoaXt-9eT2DdnEMXdnzL34HmIT
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_073457_284493_64639E21 
X-CRM114-Status: GOOD (  15.31  )
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
 sound/soc/rockchip/rockchip_i2s.c     | 1 +
 sound/soc/rockchip/rockchip_i2s_tdm.c | 1 +
 sound/soc/rockchip/rockchip_pdm.c     | 1 +
 sound/soc/rockchip/rockchip_spdif.c   | 1 +
 4 files changed, 4 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 47a3971a9ce14..2eb1a9bf4c00b 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -498,6 +498,7 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
 
 static const struct snd_soc_component_driver rockchip_i2s_component = {
 	.name = DRV_NAME,
+	.legacy_dai_naming = 1,
 };
 
 static bool rockchip_i2s_wr_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 48b3ecfa58b46..2aad0f309cb63 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1120,6 +1120,7 @@ static const struct snd_soc_dai_ops rockchip_i2s_tdm_dai_ops = {
 
 static const struct snd_soc_component_driver rockchip_i2s_tdm_component = {
 	.name = DRV_NAME,
+	.legacy_dai_naming = 1,
 };
 
 static bool rockchip_i2s_tdm_wr_reg(struct device *dev, unsigned int reg)
diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 64d9891b6434f..6d93155411b03 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -405,6 +405,7 @@ static struct snd_soc_dai_driver rockchip_pdm_dai = {
 
 static const struct snd_soc_component_driver rockchip_pdm_component = {
 	.name = "rockchip-pdm",
+	.legacy_dai_naming = 1,
 };
 
 static int rockchip_pdm_runtime_suspend(struct device *dev)
diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index d027ca4b17964..8bef572d3cbc1 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -225,6 +225,7 @@ static struct snd_soc_dai_driver rk_spdif_dai = {
 
 static const struct snd_soc_component_driver rk_spdif_component = {
 	.name = "rockchip-spdif",
+	.legacy_dai_naming = 1,
 };
 
 static bool rk_spdif_wr_reg(struct device *dev, unsigned int reg)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
