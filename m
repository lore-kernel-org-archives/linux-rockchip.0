Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2169C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFBFOHf3v45nkhISU33oiW2x28lC8DEDYt0/7xhEZHk=; b=UdXb6AAZHUphDs
	zRh8/u51PZlVTOgKbHg8G+KbGQLgmz4qHv/QJstCfDdmPlHO2Xg3JAaNtf1nO7KZAGcCnMabKw7/R
	GPSLPndHGR+HdEKVPzmVqT4laTc4D7qbWzElQqXfKYPvuOBOJoHfmuVT3gW5Wd002/atQ2D8jbZDe
	/e6MpU4spswWyWphp+bKzUsZliGmfxoAOeP9OasuStse+Eyz49e8inUipjGsh3mTT9H/MRAFATtad
	caclSLz00oNv+Sh67ofwFAHZYZh4hltvewoa0D5aE2ATK2HS8+Vi0jTq/d0uhMdr6Wes+/BC5EE+O
	WF2B6Dw+s9xyTyBM0vjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MOq-00FBbF-2C; Thu, 23 Jun 2022 12:57:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLp-00F7z9-UZ; Thu, 23 Jun 2022 12:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=BgbBX9Efb8K0LJNikCHrznq2RAOzoLRPZllxMCU4hQg=; b=CgDTDh37MXou58R51sakySiaN/
	YY2SK84TSoLQdn//ilkNN6ZzmHdTtdiAoMY/6Cx8UdT+R967D7cTt0YzCd6SlCZnYDroV3zwks6eP
	Jpz1UD2eD2Z3nkbRkFAvKcakAcakTIj5ItpVudSQiuSZGkohkxa0wlKF+PAZ+c3ed+uUzMygskjXP
	kTON8cxmoYljRsuTeuxm8W902rTNoyzKW4aC6qMRXCJqGEab+7JlrmUihX4aEoxrIilUbz5CAaoDS
	WIiizdYiKiMSvAOXg5w5AD+IrKYbK589lYvKC8f0zBqmYIQS2dBJEv07HIvwH9e1PoQ8+K+DhSL1V
	ffJlzf4g==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLj-007sAS-GW; Thu, 23 Jun 2022 12:54:24 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25NAKUtJ006859;
	Thu, 23 Jun 2022 07:53:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=BgbBX9Efb8K0LJNikCHrznq2RAOzoLRPZllxMCU4hQg=;
 b=BlSXO39AK6ILlrMGhditR/qvxvAwY1jMLgZ0oQIUcRy2EMQB0Kp7rUM8XGWn88LqGtTa
 PZRH18Key0WntsJs3vZcCHbOvT4x0RcEi1W7OqmcnQTV+y2QZoKJx+PwwuH63H7JyvZd
 0EWp/duQ0UF0mXlLqm24AyhoQnTKEKSNTq+ofEfY+3LDviMhvjeUOciUfR0TX2+DkwVW
 MuBa3NqryCLshfuxNZH7VFlp8g1R9duzcaL6gAii2V3ORRcrxPYfXkUBowqIaXbH8ZIE
 XEyuJmcKAbEajkuvGtsSSirzDPkeNMJfPJ86f+GocycR10QTqaGGUKa2NdKZQ/ccQfPp 9w== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3gsc41fa4u-17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:15 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:59 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:59 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 53DC811D1;
	Thu, 23 Jun 2022 12:52:59 +0000 (UTC)
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
Subject: [PATCH v2 96/96] ASoC: soc-component: Remove non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:50 +0100
Message-ID: <20220623125250.2355471-97-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: fUGTb7dJJMOmVmNkY5DMbA2EPSxXxxUM
X-Proofpoint-ORIG-GUID: fUGTb7dJJMOmVmNkY5DMbA2EPSxXxxUM
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_907086_384DA2FD 
X-CRM114-Status: GOOD (  12.38  )
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

Now all the users are moved over to the new legacy_dai_naming flag,
remove the now unused old flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 include/sound/soc-component.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/sound/soc-component.h b/include/sound/soc-component.h
index 96c2f5fffc51e..c26ffb033777a 100644
--- a/include/sound/soc-component.h
+++ b/include/sound/soc-component.h
@@ -180,7 +180,6 @@ struct snd_soc_component_driver {
 	 */
 	unsigned int endianness:1;
 	unsigned int legacy_dai_naming:1;
-	unsigned int non_legacy_dai_naming:1;
 
 	/* this component uses topology and ignore machine driver FEs */
 	const char *ignore_machine;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
