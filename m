Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D40C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 21:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tVAqBZtRCFmQoEVI+cTsTikpiH0wi8alO/cdQBz+7PU=; b=DzdQfaWGVFRX2P
	Qedpm30Xu6LuymFxvPjhAeXmbj7A/ZZq2im8xrS1hGwaQOYjV3IoJxPHZjBK/s1YZMuG4VkSJGlec
	nhBypE/QERFmOqF9W1d6O+cGdACYqI9Ro5nBBv0Qc9MAfMredB636qMt6HojrWy/T8aWehZPxI2Z7
	0ZuqjUnySfuhn2AG56dx7oRvBTM4x0l43Z2PQ00tnI9fVD/Lw8raZ2RkdFKFWd9p4ZkxHLsBcgnfi
	Bs5GSLc8IwaMLHcEFkoXXbE8lUiVlzMemzSfH8NbHSp0YWb4SrTqMAo7c9pZj9MGCBEmeurIr2McT
	5GkdBK+IeZIXTExGUBNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpzif-005sUV-74; Wed, 24 Nov 2021 21:22:21 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpzic-005sTp-GF; Wed, 24 Nov 2021 21:22:19 +0000
Received: by mail-wr1-x431.google.com with SMTP id i5so6855895wrb.2;
 Wed, 24 Nov 2021 13:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KkTsSIQTgl65Jkq2RbrjmIOlxesXSk6YN9h1ULIzGuo=;
 b=a/+HbgjfC0Xviq8bITaokRT5m8AxPOk5YRgGPtIjhTqCyV0mHnnXD9x5o8QdAPmhvL
 GkmtbZBDsGAeG1eDD/p8IhF7pjGBZdplptRLcaPnLNviqmYG2eWo6W4sHJAHLtoCZzT4
 Z4xc8vtYf9/u9HzTxFPVhGzmnRSkKqvaDqzIDlKsKY3LXOvhssL1RCOEkkY45Dnx/38Q
 POHoc1xVEK/L1Acs4Gn53bN+0uAXcc9iXn0PsSy8rPmh3zdE6cfER8rhl5I+GPmMnvi+
 iLDd6MDNMRkl8CUP9UbeirSLARr/CJmhWGOxeGLfptDnAIrQklRNqtn82Gbs4Ty9MEEr
 DEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KkTsSIQTgl65Jkq2RbrjmIOlxesXSk6YN9h1ULIzGuo=;
 b=goXRhtrQUwxKyd//EbFUK5HnDQwXjkFWBH2NXeWFmU9Oa1MQRfSO/Zpa8V91D3V2OZ
 Naa/HXy8dJgK3Fi4TjIdyYEEnBP1gn4mhTYm1ZE1LXKQF04nA/P4eyBcY+rWaUznJnZ2
 ACsJ9JHhRuRS0TW9oWN0h2k7/Gi2Leh5Rt7bZu7cscarGZ0Pagsjr9blVAAEB9ly1wf9
 Guc5x0CiA77HakWMcShQhngl5Mk06CDYffMpvyQ04EyP/r+siwlOs2mqfnlHvacSq4Vj
 MNEPxTwkleZzXjF6xMsNVnEKGkVl4l6CimCdVwrgvubUIhXIeYFth77u+lRj6HXD1Xem
 aTsw==
X-Gm-Message-State: AOAM533SpkRgXR26gVLvp/3yTRr3LwqTtYmgouftuy0eh7mqjtTB0mWx
 9d09MVTXJeNnIlL7J9cUxuU=
X-Google-Smtp-Source: ABdhPJzn4Yi5qwkymBP+9Ssw2nDNuFw2wS/hm5XhbyRb6XKDIQioqPM2bbYzaRaRf/fZCDudlHLcgg==
X-Received: by 2002:adf:a193:: with SMTP id u19mr50196wru.563.1637788936819;
 Wed, 24 Nov 2021 13:22:16 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o12sm1466875wrc.85.2021.11.24.13.22.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 13:22:16 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: rockchip: i2s_tdm: Dup static DAI template
Date: Wed, 24 Nov 2021 22:21:45 +0100
Message-Id: <20211124212146.289133-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_132218_582642_B9A093A4 
X-CRM114-Status: GOOD (  15.45  )
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

Previously, the DAI template was used directly, which lead to
fun bugs such as "why is my channels_max changing?" when one
instantiated more than one i2s_tdm IP block in a device tree.

This change makes it so that we instead duplicate the template
struct, and then use that.

Fixes: 081068fd6414 ("ASoC: rockchip: add support for i2s-tdm controller")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 38 ++++++++++++++++-----------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 17b9b287853a..4328c10ea830 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1312,17 +1312,12 @@ static const struct of_device_id rockchip_i2s_tdm_match[] = {
 
 static struct snd_soc_dai_driver i2s_tdm_dai = {
 	.probe = rockchip_i2s_tdm_dai_probe,
-	.playback = {
-		.stream_name  = "Playback",
-	},
-	.capture = {
-		.stream_name  = "Capture",
-	},
 	.ops = &rockchip_i2s_tdm_dai_ops,
 };
 
-static void rockchip_i2s_tdm_init_dai(struct rk_i2s_tdm_dev *i2s_tdm)
+static int rockchip_i2s_tdm_init_dai(struct rk_i2s_tdm_dev *i2s_tdm)
 {
+	struct snd_soc_dai_driver *dai;
 	struct property *dma_names;
 	const char *dma_name;
 	u64 formats = (SNDRV_PCM_FMTBIT_S8 | SNDRV_PCM_FMTBIT_S16_LE |
@@ -1337,19 +1332,28 @@ static void rockchip_i2s_tdm_init_dai(struct rk_i2s_tdm_dev *i2s_tdm)
 			i2s_tdm->has_capture = true;
 	}
 
+	dai = devm_kmemdup(i2s_tdm->dev, &i2s_tdm_dai,
+			   sizeof(*dai), GFP_KERNEL);
+	if (!dai)
+		return -ENOMEM;
+
 	if (i2s_tdm->has_playback) {
-		i2s_tdm_dai.playback.channels_min = 2;
-		i2s_tdm_dai.playback.channels_max = 8;
-		i2s_tdm_dai.playback.rates = SNDRV_PCM_RATE_8000_192000;
-		i2s_tdm_dai.playback.formats = formats;
+		dai->playback.stream_name  = "Playback";
+		dai->playback.channels_min = 2;
+		dai->playback.channels_max = 8;
+		dai->playback.rates = SNDRV_PCM_RATE_8000_192000;
+		dai->playback.formats = formats;
 	}
 
 	if (i2s_tdm->has_capture) {
-		i2s_tdm_dai.capture.channels_min = 2;
-		i2s_tdm_dai.capture.channels_max = 8;
-		i2s_tdm_dai.capture.rates = SNDRV_PCM_RATE_8000_192000;
-		i2s_tdm_dai.capture.formats = formats;
+		dai->capture.stream_name  = "Capture";
+		dai->capture.channels_min = 2;
+		dai->capture.channels_max = 8;
+		dai->capture.rates = SNDRV_PCM_RATE_8000_192000;
+		dai->capture.formats = formats;
 	}
+
+	return 0;
 }
 
 static int rockchip_i2s_tdm_path_check(struct rk_i2s_tdm_dev *i2s_tdm,
@@ -1541,7 +1545,9 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 	spin_lock_init(&i2s_tdm->lock);
 	i2s_tdm->soc_data = (struct rk_i2s_soc_data *)of_id->data;
 
-	rockchip_i2s_tdm_init_dai(i2s_tdm);
+	ret = rockchip_i2s_tdm_init_dai(i2s_tdm);
+	if (ret)
+		return ret;
 
 	i2s_tdm->frame_width = 64;
 
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
