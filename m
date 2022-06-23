Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 109A0CCA47C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 13:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu0Oq0OHqvHd1xA0BskvHi6g+M6vV11F0/KV/qBZAww=; b=K204u+nL4V/T5F
	lOY8cAvdCWOqC3MVNYePT8EocRB9PmhBo1A2UZ1CJUioWZaut8B4fAG1H8RHL3WyhMOzixeglTPyE
	Mt8WFkQoYNXgXfVgETGn4vwYrVWUzI/6gxeztnkg+1YSvTtLpJHxWHOBM+yqe+V2n7ST1D3DP2oYR
	Ovj33e/ZdWa2p1Z+D9gQsvVW7Z6AmSiMnrivghDg7/inBCoEFGMc42I2Ov/9vpmm7NpVU53DlVl39
	vTI1tc13bkQ5aa6qn0zHc1ETfD7VvSUXepORatql3cVbvUWOiS1CRz+CuAi4naTmpP6+IXt9edo9c
	gYo+D947rhXqPoLF5EXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MnP-00FJaE-N4; Thu, 23 Jun 2022 13:22:55 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MnM-00FJZ0-Oo; Thu, 23 Jun 2022 13:22:54 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N5mxlK032604;
	Thu, 23 Jun 2022 07:53:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=QP+ZBUYAIdt6LRCHim/xoQUoHPNHrMxphXy99QAQmFo=;
 b=qJUErP65voIUtcTO4xtmk3U40tPY6FwTHyGWSpNHToHXGk8rB+2DMdbeYYxTkpiUul54
 d8o1ucKTy5ix9OaOWPrxxQ9Qn4D3/bM1K8SkxiKE9Dk0e42Ltd53E76rlkQS1QDKzDNF
 IA++2cj/7ItyYQmss/PbCTZxLgYNrmOFFK0J68/2xw/BeEVXdN+JdjJYyD3O/vDSlyNa
 uKvp9luiwoXV6iA4mz/Fc6yxHpy0uR9wYnbM286Sek5ZE6ToJLSCJJPK2ecT0Yxj7XML
 +ZzWKFc4tZ6FAkNXvxW5xP0tuFuo6mBEnd/0tY6xJvJV/hqonSeZrKOd68wbUg0eUp5B RQ== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6wvu-19
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 07:53:12 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 13:52:58 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 13:52:58 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id F111B11D1;
	Thu, 23 Jun 2022 12:52:57 +0000 (UTC)
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
Subject: [PATCH v2 81/96] ASoC: Intel: avs: Remove now redundant non_legacy_dai_naming flag
Date: Thu, 23 Jun 2022 13:52:35 +0100
Message-ID: <20220623125250.2355471-82-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: wP7WrUXuLRCuSLsi-QeDc0DOxbcs5dpd
X-Proofpoint-ORIG-GUID: wP7WrUXuLRCuSLsi-QeDc0DOxbcs5dpd
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_062252_970732_751CC1B1 
X-CRM114-Status: GOOD (  12.80  )
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
 sound/soc/intel/avs/pcm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/intel/avs/pcm.c b/sound/soc/intel/avs/pcm.c
index 668f533578a69..f21b0cdd32063 100644
--- a/sound/soc/intel/avs/pcm.c
+++ b/sound/soc/intel/avs/pcm.c
@@ -846,7 +846,6 @@ static const struct snd_soc_component_driver avs_component_driver = {
 	.pcm_construct		= avs_component_construct,
 	.module_get_upon_open	= 1, /* increment refcount when a pcm is opened */
 	.topology_name_prefix	= "intel/avs",
-	.non_legacy_dai_naming	= true,
 };
 
 static int avs_soc_component_register(struct device *dev, const char *name,
@@ -1172,7 +1171,6 @@ static const struct snd_soc_component_driver avs_hda_component_driver = {
 	.remove_order		= SND_SOC_COMP_ORDER_EARLY,
 	.module_get_upon_open	= 1,
 	.topology_name_prefix	= "intel/avs",
-	.non_legacy_dai_naming	= true,
 };
 
 int avs_hda_platform_register(struct avs_dev *adev, const char *name)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
