Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00F7FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Mar 2022 10:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q1FpFendwX5EkAE8GjyS/5p6fzHqVXjE9/EkfYzIviU=; b=anT1Xh6eOiVirh
	McY7rh8LqKl8YAAVdL+dxqW9rxJFpKLufCbKafOjdY+azd+UB7DNhgFG2lFqlu5tS9mTCg9gvvUuk
	DYEbwKElqpxey7e7BJQTpFgpcKb/LJ9A93rRIldOXMCNsG5f6RTEKUaFQFKSsEMuZ9Tshrg6dDNOm
	A4cIHi+o85Wq1olJSZ14GGWs9GNqvtPMxd3eCLzt2K1qps+T9OOQQp82WOT/QxDB/aJTr24mxcCIy
	W6wOuehSFxd+mv1QKTE0i2YfTQhQbhC4g3YMySerOx1LfX3WxXbDYgFGfH0IZL1PGvYwADjy7Z4d2
	QCKtopZN3fOmCkdw0GUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV9RC-0014Vj-SC; Fri, 18 Mar 2022 10:02:26 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV9RA-0014Sh-B0
 for linux-rockchip@lists.infradead.org; Fri, 18 Mar 2022 10:02:26 +0000
X-QQ-mid: bizesmtp87t1647597713tmh93ghn
Received: from localhost.localdomain ( [58.240.82.166])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 18 Mar 2022 18:01:47 +0800 (CST)
X-QQ-SSF: 01400000002000D0I000000A0000000
X-QQ-FEAT: tV/YCL8KvSigEojevuX8Z4ksKFjFwYMDDUbPH/+nVcU7UGmXSmpaGh5Fw2TTJ
 ijQgE8ge+s9vAMzDJ2oQSggoIqRj1D8rYiQVWISYIsQzywwW2GZY4boK0F509frGzxeSetM
 /YeeeSwqAc/FIlE/SWOjLFvAM1TXdkVQSWHNw9oGipU0RYnkbheHybma516x3Es1MGb2HGf
 nZy9DSHMivEJDGBc0sMUVL0+OPHNff0hPUvo4UIyGJj0LcN14XHH2iamuk0Jgf3KQLlDOUF
 NS4P4pwdT2GhiWXrVT8IjFfyrjWWgd1kT6jFUbR2t56wNPiQVjaSXZO/jLMTWZ5xhExWs1O
 XTUcae4Sxw1eeuY1t+yFgoFtai4KT4X8Lq+pOiBcM7kQ5XQD2s=
X-QQ-GoodBg: 1
From: Meng Tang <tangmeng@uniontech.com>
To: frattaroli.nicolas@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
 perex@perex.cz, tiwai@suse.com, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Meng Tang <tangmeng@uniontech.com>
Subject: [PATCH] ASoC: rockchip: i2s_tdm: Fixup config for
 SND_SOC_DAIFMT_DSP_A/B
Date: Fri, 18 Mar 2022 18:01:46 +0800
Message-Id: <20220318100146.23991-1-tangmeng@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybgforeign:qybgforeign3
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_030224_528902_AD4B6CD2 
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

SND_SOC_DAIFMT_DSP_A: PCM delay 1 bit mode, L data MSB after FRM LRC
SND_SOC_DAIFMT_DSP_B: PCM no delay mode, L data MSB during FRM LRC

Fixes: 081068fd64140 (ASoC: rockchip: add support for i2s-tdm controller)

Signed-off-by: Meng Tang <tangmeng@uniontech.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 5f9cb5c4c7f0..f21296679bff 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -469,14 +469,14 @@ static int rockchip_i2s_tdm_set_fmt(struct snd_soc_dai *cpu_dai,
 		txcr_val = I2S_TXCR_IBM_NORMAL;
 		rxcr_val = I2S_RXCR_IBM_NORMAL;
 		break;
-	case SND_SOC_DAIFMT_DSP_A: /* PCM no delay mode */
-		txcr_val = I2S_TXCR_TFS_PCM;
-		rxcr_val = I2S_RXCR_TFS_PCM;
-		break;
-	case SND_SOC_DAIFMT_DSP_B: /* PCM delay 1 mode */
+	case SND_SOC_DAIFMT_DSP_A: /* PCM delay 1 mode */
 		txcr_val = I2S_TXCR_TFS_PCM | I2S_TXCR_PBM_MODE(1);
 		rxcr_val = I2S_RXCR_TFS_PCM | I2S_RXCR_PBM_MODE(1);
 		break;
+	case SND_SOC_DAIFMT_DSP_B: /* PCM no delay mode */
+		txcr_val = I2S_TXCR_TFS_PCM;
+		rxcr_val = I2S_RXCR_TFS_PCM;
+		break;
 	default:
 		ret = -EINVAL;
 		goto err_pm_put;
-- 
2.20.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
