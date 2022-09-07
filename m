Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F51DC6FA86
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkDzc5CLD8SYJ2ZyG1aeXOlS62povmAun+5QvfhKzxY=; b=ZIefanrwDRmsZm
	gz8mSjM54ytiHXJxIN5W5wJghO8pW7PwXhl/mGC0CVdNJkzBXcTZ6RB76RAKQ22RYQG21y/Ah+tdc
	f7d5hfc46B2SbCFMR24Xt5uOoxywbEUZMbd6kd7RZZ4qskrw9imMY5gHeO+0xxnpmqlxGNR6yOnEv
	k0p5oTLe0o7eU1pXhHWQrIXy+RXPiSFVTC48dtnmfNMGZcjcqih53Fy2tTWWtAEKcM+xgnWa986WJ
	S5jEpkEq/+J3QJMX+C9SiCsth+nAyCXp3xajNj5vizBwcYfwdZvxDY/2AMh8P1CN+ZDIMrJAoSfW2
	vnB8sPMX93OYOekaIYgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvz0-006qRS-GA; Wed, 07 Sep 2022 14:24:50 +0000
Received: from relay12.mail.gandi.net ([2001:4b98:dc4:8::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvwV-006od6-EF; Wed, 07 Sep 2022 14:22:17 +0000
Received: from booty.fritz.box (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 0E4D3200019;
	Wed,  7 Sep 2022 14:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662560533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0x0N8xdASNNGJim+/6TTRqaoE75eCBfHEEUyRn2uUTs=;
	b=CCM0A87KExaQlKFFsYRXly065FI86fsGob/0RhItQzNDnScAjh7sOUNNcoL5Adu/N/ZzgI
	N/5BYEhHZkPJy/sMG6DhmtT/qWCVKqd4CUMg/HihWZbDmguNpAQssSgPfMQdld0kC3ObrO
	B16fCiUAayyyd9DMA3D1obcNhpb59k0sKKzsoBQDnPZgfDXwzfDaFu2a/djAo6l0i948er
	Mv5ZTZNVYQXYg4DMpGb/itY7Zcf81HWGALFdVvZANTuw20isR5VsyPoEgfVwtwOr8j43J2
	iIKLpa/jg/hGDAB0G1iw/ijnXPVfHdQTnYQd27Lu+p5QwMApGb9PvZKrqgP5Iw==
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
Subject: [PATCH 6/8] ASoC: audio-graph: let dai_link->init be overridable
Date: Wed,  7 Sep 2022 16:21:22 +0200
Message-Id: <20220907142124.2532620-7-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_072215_699876_80D56A11 
X-CRM114-Status: GOOD (  13.30  )
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

We can already override dai_link->ops via a custom pointer in
asoc_simple_priv. Do the same for dai_link->init.

This is needed for a card that need to call .set_sysclk multiple times to
initialize more than one clock. The current code does not allow to do it
cleanly.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 include/sound/simple_card_utils.h    | 1 +
 sound/soc/generic/audio-graph-card.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/include/sound/simple_card_utils.h b/include/sound/simple_card_utils.h
index a0b827f0c2f6..60dab5f68f5e 100644
--- a/include/sound/simple_card_utils.h
+++ b/include/sound/simple_card_utils.h
@@ -75,6 +75,7 @@ struct asoc_simple_priv {
 	struct snd_soc_dai_link_component dummy;
 	struct snd_soc_codec_conf *codec_conf;
 	struct gpio_desc *pa_gpio;
+	int (*init)(struct snd_soc_pcm_runtime *rtd);
 	const struct snd_soc_ops *ops;
 	unsigned int dpcm_selectable:1;
 	unsigned int force_dpcm:1;
diff --git a/sound/soc/generic/audio-graph-card.c b/sound/soc/generic/audio-graph-card.c
index b327372f2e4a..38c05eb1c650 100644
--- a/sound/soc/generic/audio-graph-card.c
+++ b/sound/soc/generic/audio-graph-card.c
@@ -263,6 +263,8 @@ static int graph_link_init(struct asoc_simple_priv *priv,
 
 	dai_link->init		= asoc_simple_dai_init;
 	dai_link->ops		= &graph_ops;
+	if (priv->init)
+		dai_link->init	= priv->init;
 	if (priv->ops)
 		dai_link->ops	= priv->ops;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
