Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80669C46CD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 14:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C0YBqw+gcSY8Xvuh9VUBb0mN4mve4e+HLz5MWAy63jk=; b=z6vE4xsPI+F+wz
	VHsOXvLA/KHnsjksn2I5vWhJbOmOkMwEHJbvTqjDzf8yHrnfjUrNcS7Us6MlSAoZAQRH1D1skFcPY
	yq/gUXg5jqeKyBCk4yp3LN6laS4fIcY0+uo+Ff5MBqhwBqwpNEQHQofyYS7jcS+F4rGACdcWCuvl5
	3bhVfGLOwQoX483LweGsUypS3sf6TAGkDhpBcbrvoZuj0FQ74WLcowj4c3JrOR5eMfKlwN67kqBYv
	zEbU9bXulb44GjV/jfG2SD7E2IK6sQw/L1akEup7I52O9BmL+aWFpc12E+229b1srn2nxnKFkwN6n
	EEDuEj0ALYkN23Xn2gaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUk-00ERmE-2X;
	Tue, 19 Dec 2023 14:54:54 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbUg-00ERiO-0I;
	Tue, 19 Dec 2023 14:54:51 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6F93940008;
	Tue, 19 Dec 2023 14:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702997685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=s/kiy+EyoHiEM1ZV0AcyGmIqSBGfNRYrAo9pwLUdKJo=;
	b=eR0TgaFv74SLX0l5Cita7+vpYSlCMvCJaQ9tObGKdHHAJA5hsBg6vthhimj+cRldwreQym
	rZaisRyMrMktg+0PHFV0Vsb0JQgbqaAnqQnz/7fnGO/a4i8wKOgDkC7T/uhbf43bj9b5rB
	5d8kRsnvwxhDmhBy4xwfdxtX5vDUrxpTvzYrOkF/6XlYwG64ISTIZKokRm7BIlUa9j+RV/
	IyFT2h5WRWJArYi4nlbG+EvVCjSuIFwivplFC4Flgt3zx3GDLCL0cj3sSWDD40RmOUV1BS
	zNuN2JEYcPbgN7ip5QD24wiQY7Do5g9pOeQMafrWiCQcGP6AKSOyCVObSp6f3w==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH v2 0/6] Add support for the internal RK3308 audio codec
Date: Tue, 19 Dec 2023 15:54:15 +0100
Message-Id: <20231219-rk3308-audio-codec-v2-0-c70d06021946@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJeugWUC/x3MQQqAIBBA0avIrBtITdCuEi1MpxqCDKUIorsnL
 d/i/wcKZaYCvXgg08WF016hGgFh9ftCyLEaVKu0VNJh3rRuLfozcsKQIgX0xhg7ees6F6GGR6a
 Z7386jO/7ASkiTjpkAAAA
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.4
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_065450_424864_860B0A28 
X-CRM114-Status: GOOD (  15.85  )
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

This series of patches adds support to use the internal audio codec of the
Rockchip RK3308 SoC. This codec is internally connected to the I2S
peripherals on the same chip, and it has some peculiarities arising from
that interconnection.

For proper bidirectional operation with the internal codec, the I2S
peripheral needs two clock sources (tx and rx), while connection with an
external codec commonly needs only one. Since v5.16 there is a driver for
the I2S in sound/soc/rockchip/rockchip_i2s_tdm.c, but it does not correctly
handle receiving those two clocks via the .set_sysclk op. Patch 1 fixes
that.

Patches 2-4 adds the codec driver along with the bindings and a new helper
macro.

Patches 5-6 add to the SoC DT file two I2S controllers (those which are
internally connected to the internal codec) and the codec itself.

Luca

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---

Changed in v2:
 - largely rewrote the codec driver to use DAPM and lots of improvements
   and cleanups   
 - removed the RK3308 audio card and related patches, will be sent later
 - various other changes, listed per-patch

---
Luca Ceresoli (6):
      ASoC: rockchip: i2s-tdm: Fix clk_id usage in .set_sysclk()
      ASoC: dt-bindings: Add Rockchip RK3308 internal audio codec
      ASoC: core: add SOC_DOUBLE_RANGE_TLV() helper macro
      ASoC: codecs: Add RK3308 internal audio codec driver
      arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
      arm64: dts: rockchip: add the internal audio codec

 .../bindings/sound/rockchip,rk3308-codec.yaml      |   98 ++
 MAINTAINERS                                        |    7 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   68 ++
 include/sound/soc.h                                |   12 +
 sound/soc/codecs/Kconfig                           |   11 +
 sound/soc/codecs/Makefile                          |    2 +
 sound/soc/codecs/rk3308_codec.c                    | 1012 ++++++++++++++++++++
 sound/soc/codecs/rk3308_codec.h                    |  593 ++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.c              |   22 +-
 9 files changed, 1819 insertions(+), 6 deletions(-)
---
base-commit: f89a0253ea1f519e6866689f0e83857ca276a2e9
change-id: 20231219-rk3308-audio-codec-a5558ba8949d

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
