Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BC3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2tSu0hCnmuAoAn08WC/NHP1/ISf2l/F+GYBe3nezEU=; b=TZHcL2YsfHzbRd
	CKfmfN7ucsOs1fpN868V52gMl/V2oqIMpt/7R7VQCnkL5w85xaA3L8dWmFIWmSSTcfg7qMSy9p7Qm
	EmaUauF/0PklAAtZQu4sXt7knKahJCBlP68s/tem+ToDdef0/wFx80JQWsqbISUH/cPtuKtx8ZTgJ
	U02J+42kCsFlWCFqEb48l+1IVfAxzDDH7qtyrIgE0Au9n0uIJy+2cqQfsLH75ULfOFVEeD3q5cPFx
	5ueWFDqGbF0Pm5xl2lfky6iTJDS1IivTpnUrmUefw0PYLJiUp921gZ8+Qta5sYSU32ioou9gLRCan
	bmHYhq5cFVaozab45Hug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qv0-0033Bd-Sm; Thu, 16 Jun 2022 14:56:22 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1quM-0032KD-Hd; Thu, 16 Jun 2022 14:55:44 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25GC07CC027888;
	Thu, 16 Jun 2022 09:34:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=QrMJdKf4Z+/ZQRuy+lyxsoWSwzbRShT9MEE2wu/XMYc=;
 b=CNcF2YGiRTSqdB3LSI4xklNw0OcMAlMY3Zbm/m5wUZO35pdM8gbvxzwGWKnhbWcmlXma
 S7D86vhX7tzNzPxNIA79/HsYfnroxefzIin/1TC7ekI5J/icTspqluLQqvz7yIB1bG/9
 gkCGFHOLfHIXwvZuMOAGCFHLGY1IXtqy7woj24LWk+7bxthMAgMkCCBu8+Husc23f4WI
 VLDEPeJ+3RF0WCinUBHMqV9GoqfFSfr8R3D7Ol0Kn2C2hJq7DlHiNIm5stOIcAN23Vcf
 CaFSXwr8B95cYFDPoJedQDKrle5rZAm4Ve7ZjhtZVKNj/xuoKsXIdTSlHHccMT70DknT Ng== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuu-9
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:39 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:31 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:31 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id B99CD11D3;
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
Subject: [PATCH 23/96] ASoC: dwc: Migrate to new style legacy DAI naming flag
Date: Thu, 16 Jun 2022 15:33:16 +0100
Message-ID: <20220616143429.1324494-24-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: ga9XrrBTb9SSgH6YeoRuMvFL-ejZWcYV
X-Proofpoint-ORIG-GUID: ga9XrrBTb9SSgH6YeoRuMvFL-ejZWcYV
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075542_658591_76BA5C72 
X-CRM114-Status: GOOD (  14.68  )
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
 sound/soc/dwc/dwc-i2s.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/sound/soc/dwc/dwc-i2s.c b/sound/soc/dwc/dwc-i2s.c
index e794e020052ef..7f7dd07c63b2f 100644
--- a/sound/soc/dwc/dwc-i2s.c
+++ b/sound/soc/dwc/dwc-i2s.c
@@ -449,9 +449,10 @@ static int dw_i2s_resume(struct snd_soc_component *component)
 #endif
 
 static const struct snd_soc_component_driver dw_i2s_component = {
-	.name		= "dw-i2s",
-	.suspend	= dw_i2s_suspend,
-	.resume		= dw_i2s_resume,
+	.name			= "dw-i2s",
+	.suspend		= dw_i2s_suspend,
+	.resume			= dw_i2s_resume,
+	.legacy_dai_naming	= 1,
 };
 
 /*
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
