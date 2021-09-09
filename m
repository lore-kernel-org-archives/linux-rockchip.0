Return-Path: <SRS0=gAqv=N7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F36C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 12:42:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CA8A60FDA
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 12:42:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2CA8A60FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7M+XJ6a1WYy8fD48Gv5AAR+WcopXJLxz7sXggMi2Kws=; b=JeWpD71X6kbGRA
	tGc7KbEAPtvflcPEBuzr1JuKwaodfb/tze7DuuoT+BH74ZOKbT36nNya9T6CyEsXfovpfMWU4llSz
	kRnwQsbzVZHR5iVu0O8nEMyQMoviXpQZ4q4AeqVRyMdOrnmIfM2EBDFPv2B2FAPJpWfq22ySDGviS
	of9Xlork4I49iCUUYQ1yYrOk2xIToHQBtXvxcJ/zSAXMEiLnKxdEfblokRDnIHGWNp7fWBK4DWkol
	OiHlALI5XwSLjdgERD6f2ufFBhL24jy8GEO9nKxZE0mpjYlt7NQ9DLrtitJzjVWgdhuwrQNELVdOM
	OE4d9Cw3uJIeWRqhOPOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOJNN-009WZw-1Q; Thu, 09 Sep 2021 12:41:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOIZs-0098c3-KI; Thu, 09 Sep 2021 11:50:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3CCD161AD2;
 Thu,  9 Sep 2021 11:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631188248;
 bh=wqRdXXdYW5J3ccVYSV5ysXtiIt5KP0f/0WlRa/QUiAU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QxCjmEBytLcnJjRiR97VlqpBuZYQJdKndErydNX39qTLGNEj2MjFkhS5VKEJrrFA+
 Ybp96OvE9PcMR4neLloDlZ6QxNnAMAhxZ4xiPd5LKQIAWP8pppGEOyaGytgQPV2Dz1
 aYOcWEuA8Lqr/XfgTYWy91av87PxpWKg9I6kTC6SbtNJ8b1HNDMSU0wxCqbcDLq4a0
 Jc8tOc/Ymfl/P/RW+VHZkgF3OLtpCNLe0tJtgK/uAX88whvw2KHRA0rpt61it1sg58
 Fq3ZMZAcZ9LLvluDJTMeebOyUYurvETQxBS+ssQyfhAi00HR7hk63H+J8GCk4eVJYZ
 DGl5pTyW0JypQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Xiaotan Luo <lxt@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>,
 Mark Brown <broonie@kernel.org>, Sasha Levin <sashal@kernel.org>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.13 196/219] ASoC: rockchip: i2s: Fixup config for
 DAIFMT_DSP_A/B
Date: Thu,  9 Sep 2021 07:46:12 -0400
Message-Id: <20210909114635.143983-196-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909114635.143983-1-sashal@kernel.org>
References: <20210909114635.143983-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_045048_745000_407A9292 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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

From: Xiaotan Luo <lxt@rock-chips.com>

[ Upstream commit 1bf56843e664eef2525bdbfae6a561e98910f676 ]

- DSP_A: PCM delay 1 bit mode, L data MSB after FRM LRC
- DSP_B: PCM no delay mode, L data MSB during FRM LRC

Signed-off-by: Xiaotan Luo <lxt@rock-chips.com>
Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Link: https://lore.kernel.org/r/1629950562-14281-3-git-send-email-sugar.zhang@rock-chips.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index d020cb2bdbc4..ac9980ed266e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -233,12 +233,12 @@ static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
 	case SND_SOC_DAIFMT_I2S:
 		val = I2S_TXCR_IBM_NORMAL;
 		break;
-	case SND_SOC_DAIFMT_DSP_A: /* PCM no delay mode */
-		val = I2S_TXCR_TFS_PCM;
-		break;
-	case SND_SOC_DAIFMT_DSP_B: /* PCM delay 1 mode */
+	case SND_SOC_DAIFMT_DSP_A: /* PCM delay 1 bit mode */
 		val = I2S_TXCR_TFS_PCM | I2S_TXCR_PBM_MODE(1);
 		break;
+	case SND_SOC_DAIFMT_DSP_B: /* PCM no delay mode */
+		val = I2S_TXCR_TFS_PCM;
+		break;
 	default:
 		ret = -EINVAL;
 		goto err_pm_put;
@@ -257,12 +257,12 @@ static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
 	case SND_SOC_DAIFMT_I2S:
 		val = I2S_RXCR_IBM_NORMAL;
 		break;
-	case SND_SOC_DAIFMT_DSP_A: /* PCM no delay mode */
-		val = I2S_RXCR_TFS_PCM;
-		break;
-	case SND_SOC_DAIFMT_DSP_B: /* PCM delay 1 mode */
+	case SND_SOC_DAIFMT_DSP_A: /* PCM delay 1 bit mode */
 		val = I2S_RXCR_TFS_PCM | I2S_RXCR_PBM_MODE(1);
 		break;
+	case SND_SOC_DAIFMT_DSP_B: /* PCM no delay mode */
+		val = I2S_RXCR_TFS_PCM;
+		break;
 	default:
 		ret = -EINVAL;
 		goto err_pm_put;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
