Return-Path: <SRS0=X3cf=PG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA4AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 11:51:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D13D61038
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 11:51:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D13D61038
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N84m1+XmIHPa+QS5MVOjDTlLbSFfeLVl8BD9a9ufQOs=; b=BOi/HLXGW5P3vt
	sAlIN3ywjBZyCzkxYBAqlYH0lHx3sp+FXNVp1vwP5FFDSGpsOSynSSDG8ElpFt0s2ALgQvQ0Tjzrq
	nMDJ3n2h0T9YlBusoqpTzt/knC4G+EdpWZrb1Ge+/pzCYZMW4Wc8HT6M3vxFK+MXMXJ+WJ9HoTxxh
	qMDylqyfsmpragbyUBbItbSElG32ny1pVgBn/QtLmlIhVMFAMgPSPfwxz157ekvapW1PJnefVtt7r
	Kd5G/lQSHe5GWWurpZHsJqtrCtgetI/BW1vJkoemmg/eINy4T9K2pMa40Jzvz8G9P1lamLl8TOUF3
	j4xKjrsR8vL+HAK+/pOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcRB2-00FTN7-KF; Mon, 18 Oct 2021 11:51:36 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcR8l-00FRsp-Ef; Mon, 18 Oct 2021 11:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=qTMOt1xxazooyWbCT+RA8dOGYeZGTywpcqg5cvW8F3A=; b=Me
 51qKc5LvClqVGh5xw13a/9DF6KF2C8XilXthp2oag5DGBkvU7uGJgAtyEAHbKTbWP7VOCql2Gx6AG
 Wq/dLlD3D5sNLnbzeOxPBcs2DBLPvhUi3tjf8zf2DKk77823QEytPGPZw2MBwsQQ0wOV7bOgwnlfJ
 qA093lIdovyNcy69qdyMZF6m1LdIBWCs29P7RSwVhelPRPVfiy3znLAhO/fe4IjCFQPt+E3CelWHw
 rF3hlrzIADicmKqRik93SEw/jxWGuAiPZXNVYDcVsYIM6nedaYOQB2Mpb66PSzJsMskq4azoF9oyr
 cTMpJlWLYVblcLkWAci8c62iPq3oUi2A==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mcR8T-00081L-BK; Mon, 18 Oct 2021 12:48:57 +0100
From: John Keeping <john@metanate.com>
To: alsa-devel@alsa-project.org
Cc: John Keeping <john@metanate.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] ASoC: rockchip: use generic DMA engine configuration
Date: Mon, 18 Oct 2021 12:48:44 +0100
Message-Id: <20211018114844.1746351-1-john@metanate.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_044915_546066_9375C770 
X-CRM114-Status: GOOD (  15.25  )
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

This effectively reverts commit 75b31192fe6a ("ASoC: rockchip: add
config for rockchip dmaengine pcm register").

There doesn't seem to be any rationale given for why these specific
values are helpful.  The generic DMA engine provides sensible defaults
here and works well with Rockchip I2S.

In fact the period size here is really quite restrictive when dealing
with 8 channels of 32-bit data as the effective period size is just 256
frames.

Signed-off-by: John Keeping <john@metanate.com>
---
 sound/soc/rockchip/Makefile       |  3 +--
 sound/soc/rockchip/rockchip_i2s.c |  3 +--
 sound/soc/rockchip/rockchip_pcm.c | 44 -------------------------------
 sound/soc/rockchip/rockchip_pcm.h | 11 --------
 4 files changed, 2 insertions(+), 59 deletions(-)
 delete mode 100644 sound/soc/rockchip/rockchip_pcm.c
 delete mode 100644 sound/soc/rockchip/rockchip_pcm.h

diff --git a/sound/soc/rockchip/Makefile b/sound/soc/rockchip/Makefile
index b10f5e7b136d..6a3e61178152 100644
--- a/sound/soc/rockchip/Makefile
+++ b/sound/soc/rockchip/Makefile
@@ -2,11 +2,10 @@
 # ROCKCHIP Platform Support
 snd-soc-rockchip-i2s-objs := rockchip_i2s.o
 snd-soc-rockchip-i2s-tdm-objs := rockchip_i2s_tdm.o
-snd-soc-rockchip-pcm-objs := rockchip_pcm.o
 snd-soc-rockchip-pdm-objs := rockchip_pdm.o
 snd-soc-rockchip-spdif-objs := rockchip_spdif.o
 
-obj-$(CONFIG_SND_SOC_ROCKCHIP_I2S) += snd-soc-rockchip-i2s.o snd-soc-rockchip-pcm.o
+obj-$(CONFIG_SND_SOC_ROCKCHIP_I2S) += snd-soc-rockchip-i2s.o
 obj-$(CONFIG_SND_SOC_ROCKCHIP_I2S_TDM) += snd-soc-rockchip-i2s-tdm.o
 obj-$(CONFIG_SND_SOC_ROCKCHIP_PDM) += snd-soc-rockchip-pdm.o
 obj-$(CONFIG_SND_SOC_ROCKCHIP_SPDIF) += snd-soc-rockchip-spdif.o
diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 7e89f5b0c237..a6d7656c206e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -20,7 +20,6 @@
 #include <sound/dmaengine_pcm.h>
 
 #include "rockchip_i2s.h"
-#include "rockchip_pcm.h"
 
 #define DRV_NAME "rockchip-i2s"
 
@@ -756,7 +755,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 		goto err_suspend;
 	}
 
-	ret = rockchip_pcm_platform_register(&pdev->dev);
+	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register PCM\n");
 		goto err_suspend;
diff --git a/sound/soc/rockchip/rockchip_pcm.c b/sound/soc/rockchip/rockchip_pcm.c
deleted file mode 100644
index 02254e42135e..000000000000
--- a/sound/soc/rockchip/rockchip_pcm.c
+++ /dev/null
@@ -1,44 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
- */
-
-#include <linux/device.h>
-#include <linux/init.h>
-#include <linux/module.h>
-
-#include <sound/core.h>
-#include <sound/pcm.h>
-#include <sound/soc.h>
-#include <sound/dmaengine_pcm.h>
-
-#include "rockchip_pcm.h"
-
-static const struct snd_pcm_hardware snd_rockchip_hardware = {
-	.info			= SNDRV_PCM_INFO_MMAP |
-				  SNDRV_PCM_INFO_MMAP_VALID |
-				  SNDRV_PCM_INFO_PAUSE |
-				  SNDRV_PCM_INFO_RESUME |
-				  SNDRV_PCM_INFO_INTERLEAVED,
-	.period_bytes_min	= 32,
-	.period_bytes_max	= 8192,
-	.periods_min		= 1,
-	.periods_max		= 52,
-	.buffer_bytes_max	= 64 * 1024,
-	.fifo_size		= 32,
-};
-
-static const struct snd_dmaengine_pcm_config rk_dmaengine_pcm_config = {
-	.pcm_hardware = &snd_rockchip_hardware,
-	.prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config,
-	.prealloc_buffer_size = 32 * 1024,
-};
-
-int rockchip_pcm_platform_register(struct device *dev)
-{
-	return devm_snd_dmaengine_pcm_register(dev, &rk_dmaengine_pcm_config,
-		SND_DMAENGINE_PCM_FLAG_COMPAT);
-}
-EXPORT_SYMBOL_GPL(rockchip_pcm_platform_register);
-
-MODULE_LICENSE("GPL v2");
diff --git a/sound/soc/rockchip/rockchip_pcm.h b/sound/soc/rockchip/rockchip_pcm.h
deleted file mode 100644
index 7f00e2ce3603..000000000000
--- a/sound/soc/rockchip/rockchip_pcm.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
- */
-
-#ifndef _ROCKCHIP_PCM_H
-#define _ROCKCHIP_PCM_H
-
-int rockchip_pcm_platform_register(struct device *dev);
-
-#endif
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
