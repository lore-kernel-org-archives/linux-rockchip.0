Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4F1ACCA486
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq0PqlyZItaF+P3Si3DrM5rr298U2iuK4nBGxnVWVwU=; b=OzrHYOIeM6icUS
	D6aU8zG4xhOFrr/2ixMJzsTBothwDdK9iJVm6FWY47T/r082wrGNH+MZ741yLsLslsANb1WFS46xW
	ckDnkNBt6oQzcfWUODgs9yXK7Im3AkEDC0WqO7BlxXnFzky70msCMB3PvfcAbInMhoXUsdvtt6t8h
	WBwBy3p3GUHELiWtRGFuov7NiyJR0FwgIaoixRMIT7pSXXrV/6uwYk0wjYjUVmJBMHKiQPYssNvBV
	QubwgNUnXd1aZJW0Gqly4yUjmtDSmPSERu7mavfP4wGDFn7LZRmXe3okYAISYtnxkR20f3NglzEts
	1OY9Rs0dikBlbPcfu/kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MPx-00FCwU-8y; Thu, 23 Jun 2022 12:58:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNL-00F9m0-FL; Thu, 23 Jun 2022 12:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lqoRHHMFIgIRfllvN5faHs45FcRKNS8aA5VFm9IyeX0=; b=nXuZQcjr/ltX/MLdekgZfsqjkB
	oo3I8K6KiIEJV1bu54awt93ixpKAf7I6SEgNhPWaR9JxvM+BtcBehQSHzsEGMApjCSB/nSQ+SrvrM
	X7kTzpGHR/xcoaWSMEcIHCP6iLcoSDozdfcQctcnt2Ae6+rx8jvvUQnZPoFrtaqaIQkJSaxkYqyJQ
	YnloJg0MnRnO/IGdn1GGBNPQp0ReQ0uXSb1C+HJ3eywjag0y/akXbjqFdzyrzX1RLIBMIlMh9jy+h
	39s0DAbUKez6o/tYai7cSlhYrqzDMtiTeJknLdCKK6mUm84xye1DxI1qHVXzLbNh8V4iDnf5iN9s+
	vmKE14gw==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bj03-Ey; Thu, 23 Jun 2022 12:55:57 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxl9032604;
	Thu, 23 Jun 2022 07:53:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=lqoRHHMFIgIRfllvN5faHs45FcRKNS8aA5VFm9IyeX0=;
 b=cjQaSqas0hKJXvpD8NvbD04X7vq7LUdYz2jq3LHSCJYDA31lxXNh+AC9xh7jGV9w6FK2
 AbMyk/egO8YsPVrOEU5XvPxjwOKzSVj1Fxf+AqLbBAQHkYTuA1JEGnrjXu8NtslNaEtk
 v/HDyQO1GKr2JpesTu2d2ShwJL+aDnGEdkus7pUjRONjqpvBFJqHsdP11OfxMfNR8s2E
 VmNvMBTUC+KcZGxUXdmnrx0BD7uodpY0VQpmwJ7o96PwnC6QJG56K+yzB0PAIV1VUGLI
 3kWeSJGWL96zuSFc9mShlugk5cn9pLAS+zS8ZO/F91de1u75025QAcf58bx+cJzjgMAO jA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-8
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:03 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:53 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id DE89511D4;
	Thu, 23 Jun 2022 12:52:53 +0000 (UTC)
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
Subject: [PATCH v2 35/96] media: TDA1997x: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:51:49 +0100
Message-ID: <20220623125250.2355471-36-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: JQVv27oIieg2p2T4U3qNO2VDaWCD8oAe
X-Proofpoint-ORIG-GUID: JQVv27oIieg2p2T4U3qNO2VDaWCD8oAe
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

The ASoC core has now been changed to default to the non-legacy DAI
naming, as such drivers using the new scheme no longer need to specify
the non_legacy_dai_naming flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 drivers/media/i2c/tda1997x.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/i2c/tda1997x.c b/drivers/media/i2c/tda1997x.c
index 8fafce26d62fa..965c7afec57d3 100644
--- a/drivers/media/i2c/tda1997x.c
+++ b/drivers/media/i2c/tda1997x.c
@@ -2517,7 +2517,6 @@ static struct snd_soc_component_driver tda1997x_codec_driver = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static int tda1997x_probe(struct i2c_client *client,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
