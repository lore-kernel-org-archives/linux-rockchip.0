Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5103BC38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H2QmgVIVUEaAER2KMwFGWctbctJi3Za9rdjEME0HES4=; b=T94cDHqEXgdfvk
	55hww9t1S6mR0VuUETW8y+204fpI/Q6q2tvCzbTdLz7mtj7EYtU2tCfBZIYcu+a2cmP+NPMKaIvbG
	wK2boAS4JWnQ/dtixw5IunM8TnTDJp9MYJvKUAWe6UysH5MgIWpQQOjwhM07Mg5/RnF4RAMveqgYM
	Sw8BI5XC8fZ7qh2MohtJvTDnJ2WvpoTFCnm0z/yHswwoqJfma0VOWhiMmXsQW4IkHFu7WHb2pYMv2
	qggAwDEUCinlEiKQH2e7A5cHGMG0bAquwPqXK8hJepzRZAweCla0wUxBeBLfE4CPowLrfNoqxgDOM
	2+B7IJicwfbGXk0NOs6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvw9-006oP9-4R; Wed, 07 Sep 2022 14:21:53 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvvv-006oHy-Rt; Wed, 07 Sep 2022 14:21:41 +0000
Received: from booty.fritz.box (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 20F56200002;
	Wed,  7 Sep 2022 14:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662560494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7RATQ1JbATm9X+Wc/5gqBHh5cXHWLcY7/Zz0xbFDNbo=;
	b=e71aa7ZeQb+9niVLutMjhbHbiGoOVQXyA8/LYnJf6HK/XgDE2v/9cdl/QMBMw0CBJA83wA
	xQMwsyTWB1jngIHRUMyqlxrTakDtZsGdB2iEE3oFTOlOcONVb5V6RwXiV+Sz9uENIZBgb0
	tkcriO403wd1xDp0mW+Ju7ShSvsJiJhVdIMkf5hCNe6c58QDR/sukT7fefkIofgjXft5UA
	ZxnZ3K7/6l8ACrICnNUQOh0ZKVvt4vBja9CLE5I2G1tTPSWs9rs0Gr1xvyYsIzqc6m3ZHi
	xiQdInb+cbNKXyPL0Vj/5Per31+MIKNsHcGRhKBOg8Z79DH3E2rFmDxYPYnclA==
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
Subject: [PATCH 0/8] Add support for the internal RK3308 audio codec
Date: Wed,  7 Sep 2022 16:21:16 +0200
Message-Id: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_072140_206490_5CF387AC 
X-CRM114-Status: GOOD (  16.74  )
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

This series of patches adds support to use the internal audio codec of the
Rockchip RK3308 SoC. This codec is internally connected to the I2S
peripherals on the same chip, and it has some peculiarities arising from
that interconnection.

For proper bidirectional operation with the internal codec, the I2S
peripheral needs two clock sources (tx and rx), while connection with an
external codec commonly needs only one. Since v5.16 there is a driver for
the I2S in sound/soc/rockchip/rockchip_i2s_tdm.c, but it does not correctly
handle receiving those two clocks via the .set_sysclk op. Patch 5 fixes
that.

However the simple-audio-card and audio-graph-card sound card drivers do
not support calling .set_sysclk twice, thus patch 6 makes the .init op of
struct asoc_simple_priv overridable by a driver in order to be able to call
.set_sysclk twice and thus configure both clocks.

Patch 7 adds the codec driver and patch 8 builds on top of all the above by
implementing a simple RK3308-specific audio card, based on
audio-graph-card. This card sets all the I2S input clocks.

Patches 1-2 add DT bindings for the codec and the card. Patches 3-4 add to
the SoC DT file two I2S controllers (those which are internally connected
to the internal codec) and the codec itself.

Luca

Luca Ceresoli (8):
  ASoC: rockchip: rk3308: add internal audio codec bindings
  ASoC: rockchip: rk3308: add audio card bindings
  arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
  arm64: dts: rockchip: add the internal audio codec
  ASoC: rockchip: i2s-tdm: Fix clk_id usage in .set_sysclk()
  ASoC: audio-graph: let dai_link->init be overridable
  ASoC: codecs: Add RK3308 internal audio codec driver
  ASoC: rockchip: add new RK3308 sound card

 .../rockchip,rk3308-audio-graph-card.yaml     |   50 +
 .../bindings/sound/rockchip,rk3308-codec.yaml |  102 +
 MAINTAINERS                                   |   14 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      |   68 +
 .../dt-bindings/sound/rockchip,rk3308-codec.h |   15 +
 include/sound/simple_card_utils.h             |    1 +
 sound/soc/codecs/Kconfig                      |   11 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/rk3308_codec.c               | 2122 +++++++++++++++++
 sound/soc/codecs/rk3308_codec.h               |  648 +++++
 sound/soc/generic/audio-graph-card.c          |    2 +
 sound/soc/rockchip/Kconfig                    |   14 +
 sound/soc/rockchip/Makefile                   |    1 +
 sound/soc/rockchip/rockchip_i2s_tdm.c         |   18 +-
 sound/soc/rockchip/rockchip_rk3308_card.c     |   97 +
 15 files changed, 3159 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
 create mode 100644 include/dt-bindings/sound/rockchip,rk3308-codec.h
 create mode 100644 sound/soc/codecs/rk3308_codec.c
 create mode 100644 sound/soc/codecs/rk3308_codec.h
 create mode 100644 sound/soc/rockchip/rockchip_rk3308_card.c

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
