Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF463C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 15:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWCdJ7qt3MbFAqdeDOse/DXUVkXu9rgsFf0p9o/dRBE=; b=wsnD+5O7e7Q4D5
	+pUyWNOYvtz/WyYLDklwvBpAIcd64wai5gaNWDhEAD3ZWWXr+8wTN9OAbXKs8smMRrCwdlOpH/pZW
	rMzofP+jqav8s6EQlm62+3WyKRuJpAPCX/S9e4CHvsE9pFzXlTvi15u4f5QKcP+B+EhizWAJsRWQg
	7S5Iv9XrQP6mWMwpk/KbTu+WlSet28+jS1nATLQdWOfyF2Bc5i1fWbgmaYit50sm0v6gi7cTQZsKZ
	3rwNCCPcrg1VeAklv2Uz1ye5GRTmuyckd/w9moWwisiPFdLSaJNv3+eN7qzLJa/XCL78d8uedghTs
	5lFz51/mgtSyxXKomzeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nriPw-0089Tr-Al; Thu, 19 May 2022 15:50:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nriJu-0083Ug-Hb; Thu, 19 May 2022 15:44:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=sgL2xg6TaNd+/5JoAmY0AUQ0vHobsMKqJuz5Q8HdSS4=; b=cDH6B4TSiCv2niNzdneZEXINJy
 jVlzB39u27D0WyShDPCST3SPpDjbqnHrEOD/oMiaOrjRyFTFJhMByx+MKAkoLCSrLjxRGl3DYDjNG
 40mMCSWmLVT8v72Rs3OuEaTO30TuTdxXOsEUNfIoanybIE9DDEY7M3Ua9RpwryI01XZ+6qAP9ZQ98
 xPoyfgW1OliebiVcIYUVgKVdvkqqv/M43BiCpBYWfc8mD879VyzJT0Edh6LRtFd6mmtSzAPl0GGg+
 u6z9SMByCjeAKqWsUl3MPsmhaewmLJZhmY5CM6l/paGc5w3UMkAhaD+GpXZEce6+E9FNDdujJNyRd
 jo89sKxA==;
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nriJm-00CqQn-LH; Thu, 19 May 2022 15:44:08 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24J6k120002261;
 Thu, 19 May 2022 10:43:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PODMain02222019;
 bh=sgL2xg6TaNd+/5JoAmY0AUQ0vHobsMKqJuz5Q8HdSS4=;
 b=V3utnJSYxYmNxNv5GMCpEyW2ln80WG/6cXjrHq5HTBgC64jwhbMmyoF3ABQUXo1Z8B/a
 0y9DN42LlWF5MsQIO509ev0ASM0BVImMOWTZNktAjHhdlg8/6JjTVIRybLYwFQoxwGxb
 eaLKEb7zWKHWDu5cRT+VsXIa+oMaflQoPyIFIusf12mC97rf4SwATQnOgIBm0hdCbcvG
 4XUqXhuSIDe9t8d/KQg+EBT/+92koGuhbYNRmJ6ygRHAz8xNmnewdqAIAgf+HKKrMtga
 hE2y922a+4NQ0q/JHW4E8F4I3PI/lvkbkadj+HBKpqriiQxjLlq+esN/ou07kGIooAh7 vg== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
 by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3g29u37mcf-7
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 19 May 2022 10:43:36 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Thu, 19 May
 2022 16:43:20 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.24 via
 Frontend Transport; Thu, 19 May 2022 16:43:20 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 93C0211D1;
 Thu, 19 May 2022 15:43:20 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <kuninori.morimoto.gx@renesas.com>,
 <nicolas.ferre@microchip.com>, <nsaenz@kernel.org>,
 <shawnguo@kernel.org>, <linux-imx@nxp.com>,
 <cezary.rojewski@intel.com>, <pierre-louis.bossart@linux.intel.com>,
 <linux-mips@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
 <linux-amlogic@lists.infradead.org>, <daniel@zonque.org>,
 <srinivas.kandagatla@linaro.org>, <linux-rockchip@lists.infradead.org>,
 <krzk@kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-sunxi@lists.linux.dev>, <linux-tegra@vger.kernel.org>,
 <linux-omap@vger.kernel.org>, <linux-xtensa@linux-xtensa.org>,
 <peter.ujfalusi@gmail.com>, <jarkko.nikula@bitmer.com>,
 <heiko@sntech.de>, <jbrunet@baylibre.com>, <kernel@pengutronix.de>,
 <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>
Subject: [PATCH 31/56] ASoC: au1x: Rename set_fmt_new back to set_fmt
Date: Thu, 19 May 2022 16:42:53 +0100
Message-ID: <20220519154318.2153729-32-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220519154318.2153729-1-ckeepax@opensource.cirrus.com>
References: <20220519154318.2153729-1-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Te0uaEUVbmXS6hEITlOZ7Syi5bshPtB3
X-Proofpoint-ORIG-GUID: Te0uaEUVbmXS6hEITlOZ7Syi5bshPtB3
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_164403_492619_23873A82 
X-CRM114-Status: GOOD (  14.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Now the core has been migrated across to the new direct clock
specification we can move the drivers back to the normal set_fmt
callback.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/au1x/i2sc.c    | 2 +-
 sound/soc/au1x/psc-i2s.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/au1x/i2sc.c b/sound/soc/au1x/i2sc.c
index 72f16b7fda3e9..45bb7851e75d7 100644
--- a/sound/soc/au1x/i2sc.c
+++ b/sound/soc/au1x/i2sc.c
@@ -206,7 +206,7 @@ static const struct snd_soc_dai_ops au1xi2s_dai_ops = {
 	.startup	= au1xi2s_startup,
 	.trigger	= au1xi2s_trigger,
 	.hw_params	= au1xi2s_hw_params,
-	.set_fmt_new	= au1xi2s_set_fmt,
+	.set_fmt	= au1xi2s_set_fmt,
 };
 
 static struct snd_soc_dai_driver au1xi2s_dai_driver = {
diff --git a/sound/soc/au1x/psc-i2s.c b/sound/soc/au1x/psc-i2s.c
index d82c1353f2f09..530a072d74274 100644
--- a/sound/soc/au1x/psc-i2s.c
+++ b/sound/soc/au1x/psc-i2s.c
@@ -266,7 +266,7 @@ static const struct snd_soc_dai_ops au1xpsc_i2s_dai_ops = {
 	.startup	= au1xpsc_i2s_startup,
 	.trigger	= au1xpsc_i2s_trigger,
 	.hw_params	= au1xpsc_i2s_hw_params,
-	.set_fmt_new	= au1xpsc_i2s_set_fmt,
+	.set_fmt	= au1xpsc_i2s_set_fmt,
 };
 
 static const struct snd_soc_dai_driver au1xpsc_i2s_dai_template = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
