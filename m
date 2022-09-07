Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C33DDC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvDGRB+n4GRYH6+2/Xykmag7d91npVWmbt7+eGDupVw=; b=OgXAkfIe8gFeet
	NLkqQxHQOaNb19ZO0pWTU1nD7o43yFtK2zNUlI9BM3967wX5jJi4gtXvFhFmQ83e84Yx603hvPTZY
	PqhaYXXJA5BoVQP5Xvd2+8jkdslRpn78fK7lceHdygYW3rFCOnlBRLurDCguUMGepoxJLEfucvrf/
	tsHKCOWMy+4SaXR39VTJTsyvOWAJpSmQC+RdTQK73wvRIBFkbJBx2YiEf9xme6+K+MLqA1A1359lv
	hvTmlF5G6NrgOnJHIubcL7RBBr9BdWP4sYDHOuAjWSIOcE8pvpkNdhUIKEjAD4mMza2tgRXysY4g+
	hH9BRMai1d+9nLynW4kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvyJ-006pqu-R5; Wed, 07 Sep 2022 14:24:07 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvwT-006obe-Eu; Wed, 07 Sep 2022 14:22:16 +0000
Received: from booty.fritz.box (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id E8775200007;
	Wed,  7 Sep 2022 14:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662560531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Hkh90Imkp9wad8yz7UhVbHvGQ7u2lRuqcdvVsAUHVf8=;
	b=AhbVgluwrJrNd+ZcBjQHaMqV4FSxpzqM601IbJNxKfAAmIIxy0f7OssfjbEkcOVea1pjUp
	x9+sKrwzlELO7L2QhPqkQUch8GB+iaLgzb2anM0ZWHYKcZvvlVXl0BswKpbCHHdAdRVZKj
	eeJSIh3wpoQSYe2zUOJ5pFiPxRzziImWfq/Lrmp7q250f4fjQ27YcAQXNEc9NV1YTQHgSc
	znSI++2sdpd3VvbPLBGfzGoLHHPPZaL74RMmlCHFlqzVg0cGQvYu9PoBu+eC03ViSVvMWp
	RgL1VH4yIBqgkvwHlTxzGMgOkA2GqBen4Y6L8q2ls4dMgJM98UA+78b/DHmvxw==
From: luca.ceresoli@bootlin.com
To: alsa-devel@alsa-project.org,
	linux-rockchip@lists.infradead.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/8] ASoC: rockchip: i2s-tdm: Fix clk_id usage in .set_sysclk()
Date: Wed,  7 Sep 2022 16:21:21 +0200
Message-Id: <20220907142124.2532620-6-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_072213_846432_E40C73CC 
X-CRM114-Status: GOOD (  17.66  )
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

From: Luca Ceresoli <luca.ceresoli@bootlin.com>

There are two problems with the second parameter of
rockchip_i2s_tdm_set_sysclk():

 1. The second argument to a .set_sysclk() op is a clk_id, not a stream
    index, so it is incorrect to compare it with SNDRV_PCM_STREAM_PLAYBACK.

    Technically this code works correctly anyway because
    SNDRV_PCM_STREAM_PLAYBACK is defined as 0, which is also the clk_id for
    the mclk_tx as enforced by the device tree bindings. So this is a
    formal error, not triggering incorrect behaviour.

 2. The else branch will consider any nonzero value as "rx", while only
    value 1 should be allowed for the mclk_rx clock. This does trigger
    incorrect behaviour if passing clk_id not equal to 0 or 1.

Fix problem 1 by adding a new enum for the clock indexes as enforced in
device tree and replace accordingly:

 * stream -> clk_id
 * SNDRV_PCM_STREAM_PLAYBACK -> CLK_MCLK_TX (value 0)

Fix problem 2 by adding an 'else if' and returning error if clk_id is not 0
or 1.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 2550bd2a5e78..4aa80fedb996 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -34,6 +34,9 @@
 #define TRCM_TX 1
 #define TRCM_RX 2
 
+/* Clock indexes as enforced by the DT bindings */
+enum { CLK_IDX_MCLK_TX, CLK_IDX_MCLK_RX };
+
 struct txrx_config {
 	u32 addr;
 	u32 reg;
@@ -969,7 +972,7 @@ static int rockchip_i2s_tdm_trigger(struct snd_pcm_substream *substream,
 	return 0;
 }
 
-static int rockchip_i2s_tdm_set_sysclk(struct snd_soc_dai *cpu_dai, int stream,
+static int rockchip_i2s_tdm_set_sysclk(struct snd_soc_dai *cpu_dai, int clk_id,
 				       unsigned int freq, int dir)
 {
 	struct rk_i2s_tdm_dev *i2s_tdm = to_info(cpu_dai);
@@ -978,15 +981,18 @@ static int rockchip_i2s_tdm_set_sysclk(struct snd_soc_dai *cpu_dai, int stream,
 	if (i2s_tdm->clk_trcm) {
 		i2s_tdm->mclk_tx_freq = freq;
 		i2s_tdm->mclk_rx_freq = freq;
+
+		dev_dbg(i2s_tdm->dev, "mclk freq: %u", freq);
 	} else {
-		if (stream == SNDRV_PCM_STREAM_PLAYBACK)
+		if (clk_id == CLK_IDX_MCLK_TX)
 			i2s_tdm->mclk_tx_freq = freq;
-		else
+		else if (clk_id == CLK_IDX_MCLK_RX)
 			i2s_tdm->mclk_rx_freq = freq;
-	}
+		else
+			return -ENOTSUPP;
 
-	dev_dbg(i2s_tdm->dev, "The target mclk_%s freq is: %d\n",
-		stream ? "rx" : "tx", freq);
+		dev_dbg(i2s_tdm->dev, "mclk[%d] freq: %u", clk_id, freq);
+	}
 
 	return 0;
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
