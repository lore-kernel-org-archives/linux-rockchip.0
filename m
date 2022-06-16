Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 013D3C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acdQcJY0/eQMO19Zk99EtvFSz1JDUWXWDHMoOJN2h40=; b=zPUxjPh7j55EGX
	FfPI98eKpct3oukZF5f9JPNNc3HiqWntNbYs1THF0vn4XhM7RXQ6gaMRS78OFiw/2EWj3SSLiZ4FY
	Wt+cuTUbPzeIbXgSbe5l6jORNU/Nlvd/OzPKnytd6j6Q6W7TogdZHZYDwBko0PzD+UwOegSzbkOWF
	GB+EVtxHYk5cNYY06t1O8YcULYVP+7tOwOL1HXUD+Q6db15YGrtTDxg6Gz+yBwhblGgzdcatObaci
	HgppxxL38Rc7Zx7jPPTw6oye9TVcwkrfaq21PhVYMvuFeP6xuY7nP5pYNUXMSTGTzgFVoC66lRQFr
	xWI4qnFinALpgWPf0uSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qy8-0035up-7z; Thu, 16 Jun 2022 14:59:36 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qy5-0035sS-Ad; Thu, 16 Jun 2022 14:59:34 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G8o9fc009500;
	Thu, 16 Jun 2022 09:34:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=lh7UQEX0kU+iQnt9yjv/Ak7Aj+spwbbMvg6HY5Ou4c8=;
 b=T3lNCs32CvmRwC+vJXdIjpU2bk4lO986NtotvdeJEe1E1gEVydhXjHs83cyGIECvbnoW
 06m5hEmpmilnB46/Xq1+8NeawaOYIiAFcEpmoPKcgIiYElQMU7NJRg/j9c/6nzorg36g
 awpcqEPRod6yvfcbCH147Az8P2Wrtn52TpadKpn4khunqNsXjpn6O20tBw4RY+mRdMHs
 lmuVWEKc+nn+cR5/G1hxsMNtSg4bFaPL3/syE+tQleIp9sLJipm4uddqadMrQ64HUFrf
 b82dZ6wrGb7jtQ6Tl3N70wZD+jRPfcfUHlbGKcJ7DZZmBeVOeUz5p1fFtNZWxzdxigkj VA== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3u-10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:54 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:37 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:37 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 4F43A11D3;
	Thu, 16 Jun 2022 14:34:37 +0000 (UTC)
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
Subject: [PATCH 91/96] ASoC: stac9766: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:24 +0100
Message-ID: <20220616143429.1324494-92-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 52GKgpDm3KmMR0TFZncqEQ7Eux8mKfaD
X-Proofpoint-GUID: 52GKgpDm3KmMR0TFZncqEQ7Eux8mKfaD
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075933_505302_EE230B3A 
X-CRM114-Status: GOOD (  12.66  )
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
 sound/soc/codecs/stac9766.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/codecs/stac9766.c b/sound/soc/codecs/stac9766.c
index d99f6e466d0a3..1824a71fe053d 100644
--- a/sound/soc/codecs/stac9766.c
+++ b/sound/soc/codecs/stac9766.c
@@ -313,8 +313,6 @@ static const struct snd_soc_component_driver soc_component_dev_stac9766 = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
-
 };
 
 static int stac9766_probe(struct platform_device *pdev)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
