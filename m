Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FEC7C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvcwmkmO/IKlAJhn2tNmelQiaCIZTLsszdZnT81Gcvo=; b=a4V3f53KWl/RlE
	Hn2maxPn2KfgSPvdrL44h8jI69JOkoNEq8V6AB1YOJZD2YUO5UuHq4CQJhRvHZ3uEBTzUeZyOKPd2
	NJdTX1Pg5duu7pwQDpAAHpl3KDwg7Ju+q+3mTqt4AmnXLewIsXGVuZYxWxPQ3GiAw5XUGqbothBjD
	Ur8KGSbeRZbl8R90wjzUhNCicHwE06tky4dJd/kgkJH8lSM1EKqJXAzqMCNKu2+CKuhnEj5oYR1vY
	+1gASRzTz4i3E9O+iTVnENzyeuN79bZ3sQTj34S8nrpgCyIlX53YZ1vkcLzhYHRO5bC7/j3Fq3DZ7
	ujkWcDb3T7G0iciBfMiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MP4-00FBtr-NE; Thu, 23 Jun 2022 12:57:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLp-00F7yA-9x; Thu, 23 Jun 2022 12:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=FkLf0EtaO/Wlr40PHCKBnepFxEPRj9BcKFU4t6wlv3U=; b=oShUdaacu/0+YeK5HeSrPiGZN9
	4RNZICHjPBJNrESktDfkCc3oHN+msyOEZDB26DRyY7T+BT+eUtHMoAB74qkZhm3UVGiLPHS9esEeS
	pkbuvN3t8iU9mNPZ2eAhuA/XIeYBHR5TlyTthQZ1iF6v4CushgALiZi+RfytiBOitC0QrH86j/09k
	5WnTi7Mzir08DRFD9FhTFxDVFASOBF2V2XvZRuwOYl94EcjKfvd4JkCwsJUU2Wkz1gJ5eNeMoKAuW
	Ri0XWvJqAWbR+OLWKXNamk4TM4p1oupuqlwepr5adtEag4un/F1jIbNACKHsljGbiF49s2UuaJcdK
	Cuyazqlw==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLj-007sAB-Ga; Thu, 23 Jun 2022 12:54:24 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxlF032604;
	Thu, 23 Jun 2022 07:53:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=FkLf0EtaO/Wlr40PHCKBnepFxEPRj9BcKFU4t6wlv3U=;
 b=m0tMdBVQQqInsDUSTx2jrYAfwibkFPDdeEiqgo+2XQI2wFdox/spoR45GuWb5ICgvuPW
 +CO+SlBH7hXom9yVkxaNGUkR5V+5fqSc9LBmELh+lsfWFuWwbke6xd77pVLcU8B6mZa7
 Aucci4B6iTeuuQUcwdQDgfT8E6jLPRxO4ClJGG17T6fTacCF2siHqxFtA1JMIZsncB5/
 o3BeiVo3GMmnH9kyebyZs7m8JU3es0mupG2tria2xKh2adMoJ0uiKLwio++CTz3WnRRT
 o2e0V/USj5NqbhCyQbCyQr/vrgwv+AkTVOtZdaB7mVuFJGgqrrpgmNPG5wAnuCt0UBPT EQ== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:08 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:57 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:57 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id EBE5411D1;
	Thu, 23 Jun 2022 12:52:56 +0000 (UTC)
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
Subject: [PATCH v2 70/96] ASoC: bd28623: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:24 +0100
Message-ID: <20220623125250.2355471-71-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 3t5f7Am4W-u930DixOXyw4LIYPu0H_d9
X-Proofpoint-ORIG-GUID: 3t5f7Am4W-u930DixOXyw4LIYPu0H_d9
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_783614_315E5D1F 
X-CRM114-Status: GOOD (  13.03  )
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
 sound/soc/codecs/bd28623.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/bd28623.c b/sound/soc/codecs/bd28623.c
index a6267cb86d860..82a94211d0123 100644
--- a/sound/soc/codecs/bd28623.c
+++ b/sound/soc/codecs/bd28623.c
@@ -161,7 +161,6 @@ static const struct snd_soc_component_driver soc_codec_bd = {
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-	.non_legacy_dai_naming	= 1,
 };
 
 static struct snd_soc_dai_driver soc_dai_bd = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
