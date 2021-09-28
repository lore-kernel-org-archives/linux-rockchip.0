Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFBE1C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 01:36:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4237960234
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 01:36:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4237960234
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7gqU2eoODz7LTclDbYy27TNs/LHLlmdUevEujh8Z8gA=; b=OYd9iEfpPLNYhO
	R5i9Bz/Zp/yoMzD/mEZOB1imWMX6PDFN6+AG3KSLVxMRfJMuV4PRqMR8ZC/B3o0v8ECQkZqSKWDz0
	0GVQmmJjChbK8ccFDon0U4BVs0A1IAQnK+QKPsMaRaz/Snjtpe4VDSp+uhScTvdsoHo7MxaVirt32
	vV+7fWKttoEH5kcPBLl0NS05acsQ5eGBhmZ3w5dFhqVrOVnbBnu5tp56EgIScPfUoITcV4g8O0hXh
	YxbYkjYTSX/ckydTO3kVBQdIqJCilcgYjHcLPo88XdBLy2AQA/eB5ai3jC9tmxMH3TW9Rw1mOGUkd
	EKf94mZoznIENW/VvRQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV22s-0055Eo-FG; Tue, 28 Sep 2021 01:36:34 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV22d-0055CH-0m; Tue, 28 Sep 2021 01:36:23 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 617E7FB618;
 Tue, 28 Sep 2021 09:36:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13671T140479825954560S1632792967296273_; 
 Tue, 28 Sep 2021 09:36:08 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 10
X-LOCAL-RCPT-COUNT: 1
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <449a6737cf21524e2fbe3c53d057ed92>
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] Revert "ASoC: rockchip: add config for rockchip dmaengine pcm
 register"
Date: Tue, 28 Sep 2021 09:35:57 +0800
Message-Id: <1632792957-80428-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_183619_590601_7EF89F21 
X-CRM114-Status: GOOD (  18.01  )
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

This reverts commit 75b31192fe6ad20b42276b20ee3bdf1493216d63.

The original purpose of customized pcm was to config prealloc buffer size
flexibly. but, we can do the same thing by soc-generic-dmaengine-pcm.

And the generic one can generated the better config by querying DMA
capabilities from dmaengine driver rather than the Hard-Coded one.

e.g.

the customized one:

  static const struct snd_pcm_hardware snd_rockchip_hardware = {
         .info                   = SNDRV_PCM_INFO_MMAP |
                                   SNDRV_PCM_INFO_MMAP_VALID |
                                   SNDRV_PCM_INFO_PAUSE |
                                   SNDRV_PCM_INFO_RESUME |
                                   SNDRV_PCM_INFO_INTERLEAVED,
  ...

the generic one:

  ret = dma_get_slave_caps(chan, &dma_caps);
  if (ret == 0) {
          if (dma_caps.cmd_pause && dma_caps.cmd_resume)
                  hw.info |= SNDRV_PCM_INFO_PAUSE | SNDRV_PCM_INFO_RESUME;
          if (dma_caps.residue_granularity <= DMA_RESIDUE_GRANULARITY_SEGMENT)
                  hw.info |= SNDRV_PCM_INFO_BATCH;
  ...

So, let's revert back to use the generic dmaengine pcm.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 sound/soc/rockchip/Makefile       |  3 +--
 sound/soc/rockchip/rockchip_i2s.c |  3 +--
 sound/soc/rockchip/rockchip_pcm.c | 44 ---------------------------------------
 sound/soc/rockchip/rockchip_pcm.h | 11 ----------
 4 files changed, 2 insertions(+), 59 deletions(-)
 delete mode 100644 sound/soc/rockchip/rockchip_pcm.c
 delete mode 100644 sound/soc/rockchip/rockchip_pcm.h

diff --git a/sound/soc/rockchip/Makefile b/sound/soc/rockchip/Makefile
index 65e814d..05b078e 100644
--- a/sound/soc/rockchip/Makefile
+++ b/sound/soc/rockchip/Makefile
@@ -1,11 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
 # ROCKCHIP Platform Support
 snd-soc-rockchip-i2s-objs := rockchip_i2s.o
-snd-soc-rockchip-pcm-objs := rockchip_pcm.o
 snd-soc-rockchip-pdm-objs := rockchip_pdm.o
 snd-soc-rockchip-spdif-objs := rockchip_spdif.o
 
-obj-$(CONFIG_SND_SOC_ROCKCHIP_I2S) += snd-soc-rockchip-i2s.o snd-soc-rockchip-pcm.o
+obj-$(CONFIG_SND_SOC_ROCKCHIP_I2S) += snd-soc-rockchip-i2s.o
 obj-$(CONFIG_SND_SOC_ROCKCHIP_PDM) += snd-soc-rockchip-pdm.o
 obj-$(CONFIG_SND_SOC_ROCKCHIP_SPDIF) += snd-soc-rockchip-spdif.o
 
diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 7e89f5b..a6d7656 100644
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
index 02254e4..0000000
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
index 7f00e2c..0000000
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
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
