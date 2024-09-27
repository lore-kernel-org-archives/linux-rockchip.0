Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 024DBCDD1AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oftXw9uUSPwWyfMOj+8c9Vlf9j05P1MKzYQxEgr/uTI=; b=jpYcQUaagdMI+v
	JryxKCYmhhoavWTageQj+W3WxK9NF/pe2mzv46PjUCnoFrLTVX8Oicrbuqfj+Ua+IyN8QRP78+bbJ
	ujfT+RqeLRRAfdZ92AT1YT07YTkW091YIhOwZKnnEz2TDefkfJeSBHtQjGFFp8mwonvzOyDwVz1e6
	r47BqbZNvPMy/6oqEcUqCN4aGa+Z6MzXp0Fb9KWUCKNNWk3w3n+ZB2lRt+1j9QTvo4+T87+5V1T3m
	J3OpvXhF26twSAvz4hlmZyaJ8H+dLtsjP6IxFU/PNU3ah1ZBA5QkkUgqSK0uiyXksLr6LnFAhFqwu
	7Y9K3jFyKk7fVKeKyH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suBWl-0000000BOMq-0liT;
	Fri, 27 Sep 2024 14:00:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJV-0000000B7Mk-2TUC
	for linux-rockchip@bombadil.infradead.org;
	Fri, 27 Sep 2024 12:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=LLBRD7cnLh/NxFA7N42FvSO0FMHn6yVpzd44nzNNW14=; b=RdJsAaW0BSjwSLG/Xytyg8e+TN
	3awotFQaIiKr0ZmHQiTLOyRfhhFo8YxH/0cPbHZuupgL0p/AzMpk18MwvgDe1Xaxe5Q3K6MNqRRFk
	tihejyrmVTY0HJxoAidkkvvE9uOzNQnzErbaI/pyfyXV2yzsrdTum6ePnkJgNz/j2f2TJBULmVJqa
	CUQDBDv2ny3guKAsWnJcOuojMDu4VC9VtYtZRRmR8vBh8NfxjWHeNtIXuVE4TRgVGttZGGVaacZpN
	FwxVwHtS2kKwfPIZS7v3o3LGjaxu+UPN34r25rwJtzzb2Y1loms2aTilvtD9tQdv5mY+6Ha5qpEbC
	shuM8shA==;
Received: from weierstrass.telenet-ops.be ([195.130.137.81])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJQ-00000002LPP-3HsU
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:12 +0000
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
	by weierstrass.telenet-ops.be (Postfix) with ESMTPS id 4XFVVw0MD3z4xMT5
	for <linux-rockchip@lists.infradead.org>; Fri, 27 Sep 2024 14:43:04 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by baptiste.telenet-ops.be with cmsmtp
	id HQic2D00C3BfLyr01Qicjs; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fPq-HD;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIo-008IDa-TV;
	Fri, 27 Sep 2024 14:42:30 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Adrien Grassein <adrien.grassein@gmail.com>,
	Adam Ford <aford173@gmail.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mips@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH treewide 00/11] ASoC: Clean up {hp,mic}-det-gpio handling
Date: Fri, 27 Sep 2024 14:42:15 +0200
Message-Id: <cover.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_134309_358497_33800DC5 
X-CRM114-Status: GOOD (  23.35  )
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

	Hi all,

The "gpio" suffix for GPIO consumers was deprecated a while ago, in
favor of the "gpios" suffix.  However, there are still several users of
the "hp-det-gpio" and "mic-det-gpio" properties, in DT bindings,
drivers, and DT source files.

Drivers that use gpiolib handle both the deprecated and new properties
transparently, but that is not the case when using of_property_*() calls
directly.

  - The first patch fixes a bug, as the Freescale Generic ASoC Sound
    driver handles only the deprecated properties, while there is
    already a user of the new variants,
  - The second patch updates the Audio Graph and Simple Audio Card DT
    bindings,
  - Patches 3-9 converts various DTS files to use the new properties,
  - The last 2 patches convert Freescale sound device nodes to use the
    new properties.

All patches can be applied independently, except for the last two, which
depend on the first patch to avoid regressions.
This series was compile-tested only.

Thanks for your comments!

Geert Uytterhoeven (11):
  ASoC: fsl-asoc-card: Add missing handling of {hp,mic}-dt-gpios
  ASoC: dt-bindings: Deprecate {hp,mic}-det-gpio
  ARM: dts: marvell: mmp2-olpc-xo-1-75: Switch to {hp,mic}-det-gpios
  arm64: dts: freescale: imx: Switch to simple-audio-card,hp-det-gpios
  arm64: dts: renesas: beacon-renesom: Switch to mic-det-gpios
  arm64: dts: rockchip: Switch to simple-audio-card,hp-det-gpios
  arm64: dts: rockchip: Switch to hp-det-gpios
  arm64: dts: uniphier: Switch to hp-det-gpios
  mips: dts: ingenic: Switch to simple-audio-card,hp-det-gpios
  ARM: dts: nxp: imx: Switch to {hp,mic}-det-gpios
  arm64: dts: freescale: imx: Switch to hp-det-gpios

 .../devicetree/bindings/sound/audio-graph.yaml       |  6 ++++++
 .../devicetree/bindings/sound/simple-card.yaml       | 12 ++++++++++++
 arch/arm/boot/dts/marvell/mmp2-olpc-xo-1-75.dts      |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi       |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts             |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6sll-evk.dts            |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi            |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi      |  2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts              |  2 +-
 .../boot/dts/freescale/imx8mq-librem5-devkit.dts     |  2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi    |  2 +-
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts         |  2 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts        |  2 +-
 arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts    |  2 +-
 .../boot/dts/renesas/beacon-renesom-baseboard.dtsi   |  2 +-
 .../boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi    |  2 +-
 .../arm64/boot/dts/rockchip/rk3326-gameforce-chi.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts  |  2 +-
 .../boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts     |  2 +-
 .../boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts   |  2 +-
 .../boot/dts/rockchip/rk3399-sapphire-excavator.dts  |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi    |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts     |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353ps.dts    |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts     |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353vs.dts    |  2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg503.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts     |  2 +-
 .../dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts     |  2 +-
 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts      |  2 +-
 .../boot/dts/rockchip/rk3588s-gameforce-ace.dts      |  2 +-
 .../boot/dts/socionext/uniphier-ld11-global.dts      |  2 +-
 .../boot/dts/socionext/uniphier-ld20-global.dts      |  2 +-
 arch/mips/boot/dts/ingenic/gcw0.dts                  |  2 +-
 arch/mips/boot/dts/ingenic/rs90.dts                  |  2 +-
 sound/soc/fsl/fsl-asoc-card.c                        |  8 +++++---
 50 files changed, 72 insertions(+), 52 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
