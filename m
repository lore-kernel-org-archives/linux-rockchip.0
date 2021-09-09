Return-Path: <SRS0=gAqv=N7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF28C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 13:03:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 333FF61186
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 13:03:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 333FF61186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SreRtw1oDKRBir9AKDWUFJ8wYXPkJ8058ZWIRhSDrB0=; b=DJBOUVqbs5Qt32
	P/0NOddl7ORFnZkScMGCNayXFHRJUg83qHf3HOz8QnAPofkdcKHGCnKtV/G3UVSUkDeMgOfCRUvZX
	E7zjaCG/Oc7AHqaydKy1/pHNE1Z39cx9q8CBVjHu4xP54quuN8gx7AwT2y18hUpNVCPr6yLJHVsDO
	+SgtYw6On7GnB0VbPkxJxbPwngasm8SXTeIZMQNKlv5+5ZomkupQwGk9llSzoNos6CqO1qHLj0430
	HqZgP0LFOeVMXRWuUbD0rmWHTyyg/J0Gqjt8HT1CmzNwc+cHeGrSN7KpB18M8L9SXnjcDpvZDIK1U
	fplbEMArcv8Kht3gNguw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOJhw-009geN-Nz; Thu, 09 Sep 2021 13:03:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOIde-009AcY-7Q; Thu, 09 Sep 2021 11:54:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9B7561BE1;
 Thu,  9 Sep 2021 11:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631188481;
 bh=U2Xdfcl5vcq/srV+eQa0soW0VkO6ChXX7XPzMXxIDQg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uOnhLeCext6TYpFU9ptx4aHzo518BxcsF39dp6Y43+PtJpE4zfC+jNrA8bVoXh4db
 hClezngyfjluScXW+eQFW1cX/sV8/NOgjbtlSOS6t3QZ2w4vWoMzv/26VD57Y3Tgz9
 GRJJAl76nBVjlUc5iphGViGt4rI2AD7UfHPb2Vb/W/lWHle1U4u2iIK50iFWB8uXXl
 k6H8fJh4t2DgkzuV+IBc/GNKlLFVwuQ/QMvPy8ME88eNeGntytbwEcdXcQ6UeaLdWA
 8ygOxGmhFtx5kjKw7kZ+CDlthMnW6swjyyUPfBY5AWfgsAjs4myzawf9ToDsuoKTU9
 mzHLI/3WTt+lA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Xiaotan Luo <lxt@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>,
 Mark Brown <broonie@kernel.org>, Sasha Levin <sashal@kernel.org>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 157/176] ASoC: rockchip: i2s: Fixup config for
 DAIFMT_DSP_A/B
Date: Thu,  9 Sep 2021 07:50:59 -0400
Message-Id: <20210909115118.146181-157-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115118.146181-1-sashal@kernel.org>
References: <20210909115118.146181-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_045442_345514_780C853D 
X-CRM114-Status: UNSURE (   9.40  )
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
index 43522d7701e9..fa84ec695b52 100644
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
