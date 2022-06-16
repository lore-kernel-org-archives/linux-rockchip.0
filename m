Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0026DC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGx6thldg9s14zvwNH1TzE3+tIAUdwWOJlC4bLdUnYE=; b=V1SNldLZ3HnMwZ
	35hedmTBRjc0nQkr7MWDSED0+XiKd0PkhB++YelestVP5CCaTSTKu6mjwB+l0kJiRZ/7BclYvgK9t
	1y5e7O2iRHSnBSmB2mDx+c1cdWb7ay65RYWNXQNX/3A0LvFcjZexzgiH6t7okMpxxD7X5P3SSp5i1
	47LSPOCBJVzspW0C7/ZL7tAxQE3L1vFOg6Ut4ElN2q+PLLV0qTQ0V45rTOJp4GMgMxT/GOLnzJ1Qz
	3ZC1M/OuIJgwDBsSipkuzg9W+XTNGd4DMu2gYp2mvCHL73qQ+xNAMi9U35xWj5wWrNvljgZ8mqF2l
	xCJBS7foAPrx/fqYjRsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdZ-002us3-Lb; Thu, 16 Jun 2022 14:38:21 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaf-002rlt-9p; Thu, 16 Jun 2022 14:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=dui2WyLPcVQAcGZTKMeDfiNpSHT7WGXeltT4HVqDtXA=; b=TEEGj8gxSq7iOiu8xvJgEX5Ggj
	W+AQHU6dKGzUokwQS2/VJAGpNAoqN3v+ACH2JskzLuxkVQClYr/VY+Pp3knRLtwAvPc/QzCbAwk1Y
	6XkOtsohPDYvOiIebvr+5aGi5mlydBRCkysz7RhGVG7b9I6gRjs3d15bh1QNm26WwL0oyVIx1Wybv
	lvRKl2zcF/7+PnFBCpVenj4K1XRmj658xxoKcHvg+IsGcXd5rix51msFJcYBLfPzbxnJdFBB+RDyR
	exThYMcpbW/P1LU6Ya0Jct3Hg0c82eGPlHT+Kf1v+Jdi+ThLcZW9NFrKz08iryK1HGZvx03SGgYIl
	tagt4Opg==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaW-0020kC-HS; Thu, 16 Jun 2022 14:35:19 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC0DJb015765;
	Thu, 16 Jun 2022 09:34:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=dui2WyLPcVQAcGZTKMeDfiNpSHT7WGXeltT4HVqDtXA=;
 b=lT27ClE7Zuc/E23rdSF6nMuptmWNsvuNWRwt0gs3H98WOyYfNtv5++/egPRZJxvBQR9M
 r3tJglLycuwXnbewEgyAgU4zMjP8EkgVKGOV+xEeZc5d7PbLyZx1rqKyjPUE38vjMvc2
 0AExeofU3I7AqyAWT8Tqw0UdV8oxRzJBr8WcbGD6xmwBQdcLQKauLxu/Sj/alI2ySwDn
 US2rGT1TaHzLLFxV1tvCDfwQEFlD+ID1uyEYV78dj1sQGb5pBFympJocR9UvtDHpovRX
 qq+dbxirjNsPy4EU6BPElJHEYugNFwUFjWY9dom935tDUtjRGZht8tMGvS2GFcab8o/9 dQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3h-9
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:37 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:31 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:31 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 4318E11D3;
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
Subject: [PATCH 17/96] ASoC: sti-uniperf: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:10 +0100
Message-ID: <20220616143429.1324494-18-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: uV9c9rTCnXh09g8-t_Y2odTGtkt9uCpb
X-Proofpoint-GUID: uV9c9rTCnXh09g8-t_Y2odTGtkt9uCpb
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153513_287094_BFA80A36 
X-CRM114-Status: GOOD (  14.47  )
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
 sound/soc/sti/sti_uniperif.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sti/sti_uniperif.c b/sound/soc/sti/sti_uniperif.c
index 34668fe3909d1..a4d74d1e3c240 100644
--- a/sound/soc/sti/sti_uniperif.c
+++ b/sound/soc/sti/sti_uniperif.c
@@ -376,7 +376,8 @@ static const struct snd_soc_dai_driver sti_uniperiph_dai_template = {
 static const struct snd_soc_component_driver sti_uniperiph_dai_component = {
 	.name = "sti_cpu_dai",
 	.suspend = sti_uniperiph_suspend,
-	.resume = sti_uniperiph_resume
+	.resume = sti_uniperiph_resume,
+	.legacy_dai_naming = 1,
 };
 
 static int sti_uniperiph_cpu_dai_of(struct device_node *node,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
