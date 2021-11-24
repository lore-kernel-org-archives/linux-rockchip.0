Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFEB2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 21:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/fmU+aW3zOXMIuBDbZOfvm742pnYWtbJTjQ5kAPCiiU=; b=axn4BFZWpKUJqp
	aEDd2MDnZ0QTjgTSFHtEf3IYIBmRNdl2uaOiooxbRFFwi3lFyM7DaLqWfdMX+df4xz/3lcz4JW/qe
	LbgtkRMHwvS5rtmUGwzFq/RYejkYNExNqi0hc0OpApIRwOqr0kwTQQ0c24ziwNUffY312V1bSDQlg
	CzRYsKtP8M6IhxMT04+2scWEsVbkTK4nCPfWtL4Kc/iTr+iMtj111TtFSN1l0OKZEJnIM49qPy5m8
	rVNX7akzpqTxAugjSluU4axtPzyqtjZ0Wdf0OfltHD8+i7kGm6asSiXWa6hS9nG8Ocm8WwTmBfDKC
	pSI0lTRcQd9ZoBFpvDvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpzUI-005qyy-OP; Wed, 24 Nov 2021 21:07:30 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpzUF-005qxk-QH; Wed, 24 Nov 2021 21:07:29 +0000
Received: by mail-wr1-x42f.google.com with SMTP id a18so6741833wrn.6;
 Wed, 24 Nov 2021 13:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d0JcHrS7rw6PdBZ7/HfgOLWu1/etSoOgbibJUUNb29U=;
 b=IvaqaftGqGnaQmJOuJxs+JXXu84+4qZwObmBV1wM5y7nSK2aIDqKGuTYxsjPaheCih
 ISODKxDugG3uazJWeJLCEMHB+RRpRUxI1T2W3uB41tKolO0Sp4NVA4PpCkjLIqUVMqw4
 QY5cOFWQQSZsv5tN4Ean7QsGu4KS7nu9xAU2OPj1oghbwEpu8Za3cEM6ItVEeulu0Z40
 NfMt2uVWM0vxu5VxwXgEmzcc8HD2fdvOZTuPv08j9t7rf1K70Y35IxUZ87ECx1OH5UhK
 QX77dcsjSnSse++WXfoycLTnUj6yl6XUifHFrC6gTSXiBPKnkYGvKH3gbs7B2KUTCjaT
 w74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d0JcHrS7rw6PdBZ7/HfgOLWu1/etSoOgbibJUUNb29U=;
 b=V35cywzv/p650+SbGPHNMyTYRx//TFIbFnsLSXzHVDMdrvv8RK4pFm1HGsz66ATv8S
 EVPK/5AssOy3rUbq/1b2RD1nIl9uiq3Nxl1waFQ7Drd7MGf52SRzbWojv2f6YH+AUx4E
 E0YXfvZ41bMPy5rvtYvubWaV0fx1vi8WdScjnIIb7PxsIeX0dgryfxSX12fVewARnJsj
 jQtfhVZBsb/3/0DNtVmTbh5VpN+IViFyDR8m6TEeeF5iD0UgQEwj2y+pHZ75LK3kC5c+
 dzTeV/0/kcDsHsK2MbbHnWMFW5CEwgtAfwwgUndH45CG7mUX4aXdvJeqxlFAXpsNTCaZ
 ZM1Q==
X-Gm-Message-State: AOAM532YM4j7p9/HxI/NdpBuGMR4ebfe/xpc2zRG95pcXqjMqVs0Ru+l
 wk8U1lZ+9f2oItNS6te6tDU=
X-Google-Smtp-Source: ABdhPJz+Ekiy9CMWyUTEC6BHBxlgNLP061y7vlYho7gG71cQT7b6wRZULUlzffYP12V3cXPPwJHlSg==
X-Received: by 2002:a5d:45c4:: with SMTP id b4mr34041wrs.222.1637788043676;
 Wed, 24 Nov 2021 13:07:23 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p8sm906195wrx.25.2021.11.24.13.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 13:07:23 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: i2s_tdm: Dup static DAI template
Date: Wed, 24 Nov 2021 22:06:55 +0100
Message-Id: <20211124210655.288108-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_130727_881619_9EE67523 
X-CRM114-Status: GOOD (  15.58  )
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
 sound/soc/rockchip/rockchip_i2s_tdm.c | 42 +++++++++++++++------------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 17b9b287853a..e9ddbbf4563e 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1312,22 +1312,17 @@ static const struct of_device_id rockchip_i2s_tdm_match[] = {
 
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
-		       SNDRV_PCM_FMTBIT_S20_3LE | SNDRV_PCM_FMTBIT_S24_LE |
-		       SNDRV_PCM_FMTBIT_S32_LE);
+	SNDRV_PCM_FMTBIT_S20_3LE | SNDRV_PCM_FMTBIT_S24_LE |
+	SNDRV_PCM_FMTBIT_S32_LE);
 	struct device_node *node = i2s_tdm->dev->of_node;
 
 	of_property_for_each_string(node, "dma-names", dma_names, dma_name) {
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
