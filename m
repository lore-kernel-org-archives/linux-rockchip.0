Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DAF7C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu0Oq0OHqvHd1xA0BskvHi6g+M6vV11F0/KV/qBZAww=; b=BXsvg5O8Pk9Rax
	HsKuawcuK98ZaE0w1i5a/KGLyR9tCyrvMC4l+izdtgs+ulAFEk4ZeqOXsLL1DLF9KerQMKJPBaBaE
	kaWNTZa8xpHTKQTYz4kXVjRLz3HVJPsAw0+C3N1btEPXNGXb22N4TYNQ+qbZBtm0VWxqPQie/UuYp
	7QTH9obD2tBLvI3tIiRCM0zI+L7IYhUom29jh5eVAkYuCALznPXvE5hgueDN1jS3b1mWfETMqY9/F
	PhbYrXuuPJxV76PNHp/jCVSi/nitgdN7LX8hi0v4rPtNuXofC9D7dDCm3Dt/+CAagfimg3KijauI7
	pWs3fU1UOSyoaQTf14EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qwE-00351L-Bw; Thu, 16 Jun 2022 14:57:38 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qwA-0034wa-2d; Thu, 16 Jun 2022 14:57:35 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G8o9fY009500;
	Thu, 16 Jun 2022 09:34:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=QP+ZBUYAIdt6LRCHim/xoQUoHPNHrMxphXy99QAQmFo=;
 b=W7sD76ijL9djsTr6abct6t6eYBCgX3k7+AWRKQfipU6uE5UY7hBQbcDB+jW1dFjPalKq
 dx91m8fYrim8XadX5hAui+ITJmYe84DxF47r7sBQZqzyhAuqEGYLXFVTJg+iCoa5HOOS
 WZxkKP1kji1VWHA25GyMsnkLBJJ5SIJoE0/pWOjt1LSb5eL+cCvmmEOj1vgQ2Prfs7F3
 kjiQJZD/12wQJPZwWn6bpMzLUFOGDU0GIJhDYusAND/q46lIVXCSu3CZ5TeDFjDrprN0
 u8jetXplIR+COOr9H96kHQCJm+8//e50jGT6Q65gbGXXV5IJKJ/i+lx4bRl6p3muRiQM Kg== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3u-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:51 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:36 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:36 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 6D60E11D4;
	Thu, 16 Jun 2022 14:34:36 +0000 (UTC)
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
Subject: [PATCH 81/96] ASoC: Intel: avs: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:14 +0100
Message-ID: <20220616143429.1324494-82-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: MIJ5E7-CTCdKno97jBsHKYzCP_lVa-eW
X-Proofpoint-GUID: MIJ5E7-CTCdKno97jBsHKYzCP_lVa-eW
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075734_285164_2D2A866C 
X-CRM114-Status: GOOD (  12.83  )
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
 sound/soc/intel/avs/pcm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/intel/avs/pcm.c b/sound/soc/intel/avs/pcm.c
index 668f533578a69..f21b0cdd32063 100644
--- a/sound/soc/intel/avs/pcm.c
+++ b/sound/soc/intel/avs/pcm.c
@@ -846,7 +846,6 @@ static const struct snd_soc_component_driver avs_component_driver = {
 	.pcm_construct		= avs_component_construct,
 	.module_get_upon_open	= 1, /* increment refcount when a pcm is opened */
 	.topology_name_prefix	= "intel/avs",
-	.non_legacy_dai_naming	= true,
 };
 
 static int avs_soc_component_register(struct device *dev, const char *name,
@@ -1172,7 +1171,6 @@ static const struct snd_soc_component_driver avs_hda_component_driver = {
 	.remove_order		= SND_SOC_COMP_ORDER_EARLY,
 	.module_get_upon_open	= 1,
 	.topology_name_prefix	= "intel/avs",
-	.non_legacy_dai_naming	= true,
 };
 
 int avs_hda_platform_register(struct avs_dev *adev, const char *name)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
