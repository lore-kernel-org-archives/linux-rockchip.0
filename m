Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57FAFCCA47E
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huL21HPwgcS4VluOB/gN0L5MjA7IrmurPRwg4kogFjA=; b=u2Q++xf3CDIlb7
	ZBLp9B1/NCZRHYWC0ubgSdTZLA7xxwjcmdd6xxS03jNpHv1ML71rfzgZFuaOUeiXH3zNrjKr2tsh+
	JQsgAYe3SL2WY+AZbtPEyioRHnExsMk07+6JLxvSno+xL+aL2yzzyqtMuVaKnRkn2Oj6T41bI7tVr
	vB1Z91gUihJ8FBYbPG1Th23IqAP/8CyQzcpOelP3W5iZIJkml2Y9d0L3SJ3hS6nWsvTrwBSIdNDTm
	LYcOR+WkZyP8Bq9DMokE9IcZgVLppWozLyLch+rEr08X7sdfrJDfNGodgOCizF6l3SDzreQLkYM/S
	Uygt5fRfd40Gxb/6IbQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOH-00FAoj-He; Thu, 23 Jun 2022 12:56:57 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLY-00F7gP-6u; Thu, 23 Jun 2022 12:54:11 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NBvlrA011978;
	Thu, 23 Jun 2022 07:52:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=NITDP0/FzeUs4judT0jNQp5cBIgyRfB6xBGDNoV8sco=;
 b=m+v9vZAfFeVOlnwFZgahgAKNJ4NGZ53KTM6plTCgNRArOzYLh4tjRI+mwZa7tvt3YQ+w
 xNLL+BkHbTQSGbNJWOV+eXR7fYW/N5v/aYMMPrmZweL1u1xeErrEv8tmhbQBdeIjLKFe
 rLWM4iM1IBAYlBahHKmgD4b3lXNHPAEw5CVG2ECx/6uo1qyRWnRHSqWGJ6sn+Ji96w7K
 kbyXuOeKetQGkK2VGik68YwXeYsuj6oPoojLT3p4+gnA0w/gXR5JPcrWlU+KpdFSX5Lp
 w7EaGRcfpgQGiMQEDb6IrYj84sCF07MxJVpq2DlkOh4vz3sllt0Av9bRJFl4MP6ORgY9 ug== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvp-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:55 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:51 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:51 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 408AF11D1;
	Thu, 23 Jun 2022 12:52:51 +0000 (UTC)
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
Subject: [PATCH v2 06/96] ASoC: jz4740-i2c: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:20 +0100
Message-ID: <20220623125250.2355471-7-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 2ac3g-pI5i0cTZx-eg0dkHCQugA_LbdB
X-Proofpoint-ORIG-GUID: 2ac3g-pI5i0cTZx-eg0dkHCQugA_LbdB
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_055408_449573_D4504C6B 
X-CRM114-Status: GOOD (  14.23  )
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
 sound/soc/jz4740/jz4740-i2s.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/sound/soc/jz4740/jz4740-i2s.c b/sound/soc/jz4740/jz4740-i2s.c
index 446c5e0615649..79afac0c50038 100644
--- a/sound/soc/jz4740/jz4740-i2s.c
+++ b/sound/soc/jz4740/jz4740-i2s.c
@@ -498,9 +498,10 @@ static const struct i2s_soc_info jz4780_i2s_soc_info = {
 };
 
 static const struct snd_soc_component_driver jz4740_i2s_component = {
-	.name		= "jz4740-i2s",
-	.suspend	= jz4740_i2s_suspend,
-	.resume		= jz4740_i2s_resume,
+	.name			= "jz4740-i2s",
+	.suspend		= jz4740_i2s_suspend,
+	.resume			= jz4740_i2s_resume,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct of_device_id jz4740_of_matches[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
