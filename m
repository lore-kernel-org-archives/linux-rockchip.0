Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A35A5CCA47E
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4adGE6oqvYzK6jat5rB/gLrQWg7ORl6MihZGWA2G4mU=; b=iJXK7yP4jG+9Mt
	R3iv+EBIrN2TeyTikQSb9kxRlmsYkDERKT1oV0iU7Hlb+X3WwgLwRwUXsEc85mgrBTt4mRNq6Ge13
	igxH06Gzph6lpo5RPZcpTeDghH25W0Wo2jwXPE/TkPLC3qVtvWZ8MZKiQqFv9li9NP/02/mglm5PS
	wX+NREtP+v1bgq0FipSCMGa7RHoETkYWt5IWg0rmE5jEOIFFGlgbFIu5DvTY1qb0Eb3VCrkXKoyIt
	nZRobi8wuIySaXLM52gLZ4rO0NlpeAm5CbTl2rIvdwjKI6R4k3thzg8fFodIlwo08dZhIMeEIiO8D
	07+oAjanqvyQ2ahadtSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MP2-00FBqU-SK; Thu, 23 Jun 2022 12:57:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLp-00F7yZ-IP; Thu, 23 Jun 2022 12:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=PWSGRrWgNvQqI/FJwn730ONsTAALyjkFDX1e4aDoN0Y=; b=pluqMP+k1TLK2cx6mVSp7SRwHk
	oNmUcJjg1F3n/S0Xw0FOnHgQX7s4GStue8tDig4GQ5g6lEq5B5pZzs1PD28aTHqfBkSR26akusvAM
	bRNS5ZHPoo/1LW8E3ybAqcyN7fGDCaUsf9GcDNUVnn2Yh1iQVJffV+2mNTsuOReOtmhzpAFuauYMn
	fGFCKgZIAE1OSJAGZfD7OaTW6fldA+dWXSNxZk3AKHtGyVnwP7r5TewaGtZrRvWMdfTgmlx8YDfsr
	SVQxvINlQai6OBKfDIoh4ewPIED5rUS+qnG5sLe+8q7L6EUwp9DUbLKFugHvBTWFBsoH6TRHBdOiR
	7ArOyJcQ==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MLj-007sAA-Gd; Thu, 23 Jun 2022 12:54:24 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxl8032604;
	Thu, 23 Jun 2022 07:53:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=PWSGRrWgNvQqI/FJwn730ONsTAALyjkFDX1e4aDoN0Y=;
 b=bKxrLAXAB+Levg9Ryb8wPZzMyFxm4gGK6IMfnAG08l8/SXBc+vuWql3wIjYxU7xd9F9O
 ObVDTp19SliXDwuVGGTsgAsnxLqYqFUp2yeVxAOdaFxCE8TMvZBpaYO+TGu9IZhNIsP+
 1SHmYAZNcuOPv34RDgnmSxtMB9HJ18MgGGXXM+haAo48PNT8Ln55NclDh1zBIx2ZlJ/l
 Ul9Fee2q1Z+LojCvy/CMfS7pe/hEFFDR7ji8o4uQ0KB8ludEBbe4s9UQIyNgjXj7N+bi
 tsEU2s7QHlD4G4q1kwY92afPgAWaZGW+SD1sjXHnM4+hBpNuHL3gVO3gUERtCdoNA5sg yw== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:02 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:53 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id A15D911D4;
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
Subject: [PATCH v2 32/96] ASoC: mxs-saif: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:46 +0100
Message-ID: <20220623125250.2355471-33-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: U_xxkO-3rI0tMd7c7V3pwC1aVNGN9wuM
X-Proofpoint-ORIG-GUID: U_xxkO-3rI0tMd7c7V3pwC1aVNGN9wuM
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135419_883202_52927B8E 
X-CRM114-Status: GOOD (  14.50  )
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
 sound/soc/mxs/mxs-saif.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mxs/mxs-saif.c b/sound/soc/mxs/mxs-saif.c
index 467b0f2ce0bb1..ac761d3a01c05 100644
--- a/sound/soc/mxs/mxs-saif.c
+++ b/sound/soc/mxs/mxs-saif.c
@@ -663,7 +663,8 @@ static struct snd_soc_dai_driver mxs_saif_dai = {
 };
 
 static const struct snd_soc_component_driver mxs_saif_component = {
-	.name		= "mxs-saif",
+	.name			= "mxs-saif",
+	.legacy_dai_naming	= 1,
 };
 
 static irqreturn_t mxs_saif_irq(int irq, void *dev_id)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
