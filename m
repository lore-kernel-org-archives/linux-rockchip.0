Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5853C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 14:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFBFOHf3v45nkhISU33oiW2x28lC8DEDYt0/7xhEZHk=; b=Xi/DVZmLYlW5KB
	LtUxRcxvjc9oCWZMABLk12M/4Ch/Y2pJlAFKvepT4qOAVQQNgwMHEIziqMnYLjVVNpWUvw4iv9biY
	W4Tv10vzvptQza18zck1UCyDYBEC8bkr5uz8kxKcJESkkLGFnaGXz8UDwmUgiDyLgYJsaeVWN76Bq
	AWrGDdeJhOXkzT7X0wwMztSDc3az/SUOCKuBjCLYSOpMD4JiJ2pwZDXg6neqZEF6x9OgGTUjNBT2y
	VBixomqpSVPxHiq8/LotJ4aLg2zMVcKykIoPGkQUkxKXYZf8gdzoLwlKClZzRVrE+Xl6EPaIYrVXQ
	F73zywLpBIx7fWMZNnpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qus-00330q-29; Thu, 16 Jun 2022 14:56:14 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1quD-003292-VB; Thu, 16 Jun 2022 14:55:35 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25G8o9ff009500;
	Thu, 16 Jun 2022 09:34:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=BgbBX9Efb8K0LJNikCHrznq2RAOzoLRPZllxMCU4hQg=;
 b=gCQdUSk/rpXWxIbHsNOWoet4j2CvQDAbvyMUKg5MV9c7BW9qmUnwOMU3XkvoWH73h0p2
 8N11vjRf6+hCqPoBYabcE14Q/uSpf2ddYtYzdi//jC6Rr5qBRI4EorNp/N/ApSyc/Oba
 madrOdzUyt2II2A9U6Ez3i9BJsP81VvXLfeKDwskOiaR6Zq2wZN1CK7iKSu9E5y4suIr
 H6cANzf8oLPK5k72u1fg3vt/j7okmXScfrX7FZXwhFGe2/GvBBeQN1ZcVdFOg41OfBf8
 f1Ex8eA3ibrKLVYMdi9UwBzhcZxNw71JWQVHLH0KwegXNuQAHzrlmdHd9xHrRWHuEU1i AQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gmqfq5w3u-13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2022 09:34:57 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 16 Jun
 2022 15:34:37 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 16 Jun 2022 15:34:37 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id BAA5D11DA;
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
Subject: [PATCH 96/96] ASoC: soc-component: Remove non_legacy_dai_naming flag
Date: Thu, 16 Jun 2022 15:34:29 +0100
Message-ID: <20220616143429.1324494-97-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: QvTLDZlAgJ1aTgudm9s4QWmV0lZ-2fqM
X-Proofpoint-GUID: QvTLDZlAgJ1aTgudm9s4QWmV0lZ-2fqM
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_075534_207972_08668EFD 
X-CRM114-Status: GOOD (  12.11  )
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
