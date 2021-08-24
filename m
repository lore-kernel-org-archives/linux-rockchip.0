Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33ADEC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 10:17:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E09246124B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 10:17:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E09246124B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=839iLBacbKyh+YCrUA2pNk30dL3JHL1WYCRJkNCSM9w=; b=rKowEiZpoylEWI
	iVDyN0XAZoeQHRjcYR8ZQsx6W+sXQE9hwrDdYpYDwGxKMXz7tUEINGnHdPxwOoEX6Y/Z+rYxH6kN/
	m/Qv8MbPziZiRSv4t0rNKKeYeUS43QpU8uRi/EiBeJNfp/q4kt0H+zit4j9j5mdFeCkWBR8y1bZsT
	TGWymB6dkfhe/f0OnHwB8mqVf8+/0ZDIawyJJL/ru1xnzZmuLVWNzwCYlJWKV49Qll8mYHb2xHo3s
	zarw124Agd5LDFO0hYJnX0ER5pNATvRICCC05Lhm4A1SJaG1z4Cib24pHIXGeENCW95gyIpZXMPsL
	qjJbPdsP9JRSFGQvkh3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mITV1-002TR4-Mp; Tue, 24 Aug 2021 10:17:43 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mITTl-002Snh-Fk; Tue, 24 Aug 2021 10:16:27 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3D297D64C9;
 Tue, 24 Aug 2021 18:16:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760989173504S1629800174340042_; 
 Tue, 24 Aug 2021 18:16:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <408f5e1bfbcbb377745547de1a3b4b51>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/4] ASoC: rockchip: spdif: Fix some coding style
Date: Tue, 24 Aug 2021 18:16:00 +0800
Message-Id: <1629800162-12824-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629800162-12824-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629800162-12824-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_031626_087141_7555AF3F 
X-CRM114-Status: GOOD (  13.85  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch fix some coding style.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 sound/soc/rockchip/rockchip_spdif.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 8baa473..92b27b6 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -103,8 +103,8 @@ static int __maybe_unused rk_spdif_runtime_resume(struct device *dev)
 }
 
 static int rk_spdif_hw_params(struct snd_pcm_substream *substream,
-				  struct snd_pcm_hw_params *params,
-				  struct snd_soc_dai *dai)
+			      struct snd_pcm_hw_params *params,
+			      struct snd_soc_dai *dai)
 {
 	struct rk_spdif_dev *spdif = snd_soc_dai_get_drvdata(dai);
 	unsigned int val = SPDIF_CFGR_HALFWORD_ENABLE;
@@ -137,15 +137,15 @@ static int rk_spdif_hw_params(struct snd_pcm_substream *substream,
 	}
 
 	ret = regmap_update_bits(spdif->regmap, SPDIF_CFGR,
-		SPDIF_CFGR_CLK_DIV_MASK | SPDIF_CFGR_HALFWORD_ENABLE |
-		SDPIF_CFGR_VDW_MASK,
-		val);
+				 SPDIF_CFGR_CLK_DIV_MASK |
+				 SPDIF_CFGR_HALFWORD_ENABLE |
+				 SDPIF_CFGR_VDW_MASK, val);
 
 	return ret;
 }
 
 static int rk_spdif_trigger(struct snd_pcm_substream *substream,
-				int cmd, struct snd_soc_dai *dai)
+			    int cmd, struct snd_soc_dai *dai)
 {
 	struct rk_spdif_dev *spdif = snd_soc_dai_get_drvdata(dai);
 	int ret;
@@ -155,31 +155,31 @@ static int rk_spdif_trigger(struct snd_pcm_substream *substream,
 	case SNDRV_PCM_TRIGGER_RESUME:
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
 		ret = regmap_update_bits(spdif->regmap, SPDIF_DMACR,
-				   SPDIF_DMACR_TDE_ENABLE |
-				   SPDIF_DMACR_TDL_MASK,
-				   SPDIF_DMACR_TDE_ENABLE |
-				   SPDIF_DMACR_TDL(16));
+					 SPDIF_DMACR_TDE_ENABLE |
+					 SPDIF_DMACR_TDL_MASK,
+					 SPDIF_DMACR_TDE_ENABLE |
+					 SPDIF_DMACR_TDL(16));
 
 		if (ret != 0)
 			return ret;
 
 		ret = regmap_update_bits(spdif->regmap, SPDIF_XFER,
-				   SPDIF_XFER_TXS_START,
-				   SPDIF_XFER_TXS_START);
+					 SPDIF_XFER_TXS_START,
+					 SPDIF_XFER_TXS_START);
 		break;
 	case SNDRV_PCM_TRIGGER_SUSPEND:
 	case SNDRV_PCM_TRIGGER_STOP:
 	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
 		ret = regmap_update_bits(spdif->regmap, SPDIF_DMACR,
-				   SPDIF_DMACR_TDE_ENABLE,
-				   SPDIF_DMACR_TDE_DISABLE);
+					 SPDIF_DMACR_TDE_ENABLE,
+					 SPDIF_DMACR_TDE_DISABLE);
 
 		if (ret != 0)
 			return ret;
 
 		ret = regmap_update_bits(spdif->regmap, SPDIF_XFER,
-				   SPDIF_XFER_TXS_START,
-				   SPDIF_XFER_TXS_STOP);
+					 SPDIF_XFER_TXS_START,
+					 SPDIF_XFER_TXS_STOP);
 		break;
 	default:
 		ret = -EINVAL;
@@ -293,7 +293,7 @@ static int rk_spdif_probe(struct platform_device *pdev)
 		grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 		if (IS_ERR(grf)) {
 			dev_err(&pdev->dev,
-				"rockchip_spdif missing 'rockchip,grf' \n");
+				"rockchip_spdif missing 'rockchip,grf'\n");
 			return PTR_ERR(grf);
 		}
 
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
