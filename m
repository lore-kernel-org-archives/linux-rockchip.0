Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CAB3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 12:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfQyTMOokN2UrVfqmN3pJ7KYj8fny7ivXdR6VghzuZY=; b=YMLTwZnOD3F/oz
	HC37ejhW5PfUOGNjMZksRCRyMnest3Dvp//gdu+Vc++L/9iG+Xni8I8Ys0VhKcsjWo++KNhuKLemX
	jU0uehypQ7271Qt7+AFhv9YgfBNe7O097T2lvlTN8/gRJXt7GDZLEe+fKps0iQpxYhcx3rVtc301x
	eG5Q3x0H3LumsS8TZ8V1EscA0f+5dKHbUb9dGJ7T7UcxbNv1ozJRg6RVxdPRqwY7HEAmjYJ+VADC2
	gUefQLWkAyHKJkFWVRvUSQGWgLK8e1/oh/Kyi5Y1ZtkGCVWlwWxbxmIAvZ5+vQBIgpS/1hGzThQZG
	YieML+dw9vdLYjTtx5hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MQd-00FDv9-Jd; Thu, 23 Jun 2022 12:59:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MNS-00F9xR-Na; Thu, 23 Jun 2022 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=A965WNpWYSDhf9ldMo6HdYu7YQa1FzA7GWkgiub9ZVc=; b=VdCFoaw0DQz2aslexQYHIqZJGo
	GeW+YgyueI93UXoRzb4ANhRspjNG+sdL+dgOJW2T4np+3dyXxWvv648RKyLk6yBns1mISyAHwUxNY
	OKL5DU4o6oO/kumrdSAMuh3LukYF2oekqvRdpZe2hCNywDHReVBXiBXYgo60H5vrKscL5tMRvVwLP
	EycZTGtdY2aJ7WMn977qwngmSeHMsnqzACsFCcPamyod+tbgC90K3DN3oz4Tlx1GugU/c1dH76GPp
	7j08+pyTkF/L7ZEIONki/km16cQGT7hbJ0ECj9KEGTXnC0/caVsuw+i0BHKlVq6PCYUF50cRRNKhc
	yHFzATLw==;
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MM2-00Bizy-De; Thu, 23 Jun 2022 12:55:59 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxl3032604;
	Thu, 23 Jun 2022 07:52:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=A965WNpWYSDhf9ldMo6HdYu7YQa1FzA7GWkgiub9ZVc=;
 b=lZrg0fLeKcjSlEddZRwEHE6vt9yOt9whU1TnWxyQJ9rx5chpbQyHTNnCbR9pHMG/72Nl
 31ONDR3VFhCYSvr8bmU5x8ykuR5uX0+3qkDsZDbz3/LQDUcrFOJ1GTdZami+QObpm8RU
 AXi3Z2TJK5Q42QlsGKAOFau5Noa5dFQSW1/n8ZvD5JjsfUUN6l6tnA4XLv3m1lM+2dD9
 x+LMqiKGDOGeTw+gBbQo9AoZNfO5lXvBAeKsBp0AoRubkeH8+BeSdP2am+PfvOIfF94j
 ChKUtZXfLFQeq3Z/sOB623yfecX97+q+AVcE5WGWic3zutGOfwkkHUAflWzZbeIXGf94 2g== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:52:58 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:52 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:52 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 0AA2111D3;
	Thu, 23 Jun 2022 12:52:52 +0000 (UTC)
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
Subject: [PATCH v2 15/96] ASoC: Intel: Migrate to new style legacy DAI naming flag
Date: Thu, 23 Jun 2022 13:51:29 +0100
Message-ID: <20220623125250.2355471-16-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: ZkIw7JjuYXjXMU4pvUvvigumQtaTVjt8
X-Proofpoint-ORIG-GUID: ZkIw7JjuYXjXMU4pvUvvigumQtaTVjt8
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_135553_857390_5E1DA976 
X-CRM114-Status: GOOD (  13.93  )
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
These drivers appear to be on the CPU side of the DAI link and
currently uses the legacy naming, so add the new flag.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/intel/keembay/kmb_platform.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/sound/soc/intel/keembay/kmb_platform.c b/sound/soc/intel/keembay/kmb_platform.c
index d10881fedc8bb..b4893365d01d5 100644
--- a/sound/soc/intel/keembay/kmb_platform.c
+++ b/sound/soc/intel/keembay/kmb_platform.c
@@ -388,15 +388,17 @@ static snd_pcm_uframes_t kmb_pcm_pointer(struct snd_soc_component *component,
 }
 
 static const struct snd_soc_component_driver kmb_component = {
-	.name		= "kmb",
-	.pcm_construct	= kmb_platform_pcm_new,
-	.open		= kmb_pcm_open,
-	.trigger	= kmb_pcm_trigger,
-	.pointer	= kmb_pcm_pointer,
+	.name			= "kmb",
+	.pcm_construct		= kmb_platform_pcm_new,
+	.open			= kmb_pcm_open,
+	.trigger		= kmb_pcm_trigger,
+	.pointer		= kmb_pcm_pointer,
+	.legacy_dai_naming	= 1,
 };
 
 static const struct snd_soc_component_driver kmb_component_dma = {
-	.name		= "kmb",
+	.name			= "kmb",
+	.legacy_dai_naming	= 1,
 };
 
 static int kmb_probe(struct snd_soc_dai *cpu_dai)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
