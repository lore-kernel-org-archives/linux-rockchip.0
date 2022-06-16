Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88225C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq0PqlyZItaF+P3Si3DrM5rr298U2iuK4nBGxnVWVwU=; b=ymqIsK2P0J4QEQ
	k2EC/tCLm2YNDHIxMxUp6+qO+7RFSpYm6zZ+EavL9wP7C1G6s3zWS+i4Ee2/7rDBSWXUcxPbNi8kT
	DmZwPkMbt6NlwzZJNwtdDRXHGo3HdONP2ALhWj0u4Vc8s5eRlFzDqxqAf1OR49+W/E5gQL2M1qhqV
	IcG9bKMQu5623GcsvuwqmzP9rbBhDiipiC/S3Bb97h5iwXQzgwl5NU6ok/TXwMfEa06RDt4SKBTvH
	CYVTPfTlBz214GfNlfITHpWcWV2TLRe843mBjBH0C1R6XcAi07WJ8pIE2UlXSEVwnULoeD1J329ng
	0E5rrdKEpCQhuv2a9Z9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qdV-002umL-Uc; Thu, 16 Jun 2022 14:38:18 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qae-002rhO-S3; Thu, 16 Jun 2022 14:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lqoRHHMFIgIRfllvN5faHs45FcRKNS8aA5VFm9IyeX0=; b=Dl9ek/KXE2PC1Ck2Docq39ehvd
	an5bwAXQCpungp/lMFWL8b6pwqp/RsjpwXPrYJqPbHv63Vu+KwdoUzpttAqbgfEQVMxn5x2n0j6x9
	ZWV7hSX+qwAnzpfCaiPHs7vmtOfCnzL9vxbU7y2CGmovaNykuljhlFiyn8M/wVUYIpEWK60TGemD7
	sfT0yM1JRdup9TpgiEhqHSp3jCFwtxIOtqNxVEYpdmJH5z3xli4nhsqLFUQ0aCPT3HixLiQhm4p0G
	59qnCQIqjcO0CIU6t0SLNm7RHyFcfaKG6UcJQxVshhoInFw8N0w6HGi62eJ828lRzGQhYHyuEVIvI
	lm4hIn3g==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qaR-008R3a-E6; Thu, 16 Jun 2022 14:35:12 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G4igBb030693;
	Thu, 16 Jun 2022 09:34:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=lqoRHHMFIgIRfllvN5faHs45FcRKNS8aA5VFm9IyeX0=;
 b=EXYkDl5DZtSX5yFG8rdWUmqR3uWcOW929GGq+uPnQj/6c4pn077mS/7kkLtL9sg0ArZ1
 ao1tHaxJWDNwiT9jgJppVvZ02uH7uEN1imBGhGY39DJa2ZQgJNKBd1o/IY5OvmsZltwF
 xuKJ2kTsokLbE2nzbymIBy2Rd1JV6mPx10oRusfBr8W+r/OwYaIsrphA/haZqtWell8q
 S0R8JDG9yBKAr62+4vgLPNHguspPgjE+stt+KVJF2sE6iMJBEOGVjaOn5aexlRmo4cGd
 k4Js07y33S6EbDAnJOE9wQqWUN1Dkvij2GusKT03ULg6ON58enFB8RK97yJw9Rlrival HQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gmrf35vuw-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:40 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:32 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:32 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id BB05411DB;
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
Subject: [PATCH 35/96] media: TDA1997x: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:33:28 +0100
Message-ID: <20220616143429.1324494-36-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 15T4vG9PNYUITCohKksVNcfIB2iiKG-V
X-Proofpoint-ORIG-GUID: 15T4vG9PNYUITCohKksVNcfIB2iiKG-V
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_153508_676188_46C36ED8 
X-CRM114-Status: GOOD (  12.57  )
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
