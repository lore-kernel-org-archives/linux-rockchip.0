Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D914C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 16:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XeBjMu9OE1Sk50dnnGK4ObRnEv3GFV9uUhtd9aulNG8=; b=aa9IdO7qxGAY7I
	mQRObQvyG6taNQFiAFiwRWbw8hxTIzQ2Z8Hx3SOiq5z1dFc3TbMuv+jmok8ebz3SLWhpGslGjlHpv
	vTshT2J3j5dp8uPRdI5dR36uhGRa1B6uxNzuKJoABl81y+Oi9u+ax3ZT/v1CGMfhH3kzg9fHm+Yrc
	6agGFO2ZQS0D/aTUMwBxQYnAoJHQDQ16fqX9A0VvMenHOF1/tRMrLJJYAe8B1yg7M+TGBfU8kVByK
	R2SzwZE9vEOJ6Z9s/3T2xYorssRRCBOT8m7I16OVoDewWTqVnqAesoWVrqIHbHpqVJrvz+STzjXRs
	haX563FltXnH+uD11X6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouych-00Cfut-4N; Tue, 15 Nov 2022 16:17:19 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouycd-00CfoY-9a
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 16:17:17 +0000
Received: from jupiter.universe (dyndsl-095-033-156-109.ewe-ip-backbone.de [95.33.156.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8DF9066023A6;
	Tue, 15 Nov 2022 16:17:09 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668529029;
	bh=fKfUXO5zcA7cT/xlG3ZFpWxaafbdeWYxv/sohfNQGLc=;
	h=From:To:Cc:Subject:Date:From;
	b=Z/PdmmVcq7no8E0y2w3K/1Jdgc0XDqeRqnCScMGKm7YoFo2yHYiMNfe2Utv/oQzyd
	 WnSoZ73TfZ/1Tawqb2/AK41rPweq1yvIht4fZZOd0xx8+Rx/wwIIM32VDx4ZBYOb0F
	 KOOJk1YcbmI3mLdKAv5vgGvcdIbyUBx2XCrdpAcjCIIhH/LdBALSx47Nsaa+4Q3H3L
	 2yr6u2dYRexahwHMK2E/ENTpKO8zMI0TM1EHrkkl3x9Dvw19TJqFTrc/9PNot1K8IX
	 6esq031dfPRuPR8X2psyzkmgElXp7cPWxMIrxO/FNceHnHGRhYlpnz+Sb/JTe3WCzC
	 hjMMNfrkaKrgQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5BB11480119; Tue, 15 Nov 2022 17:17:07 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 0/5] Initial rk3588 DT
Date: Tue, 15 Nov 2022 17:16:57 +0100
Message-Id: <20221115161702.163057-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_081715_520255_48582C20 
X-CRM114-Status: GOOD (  14.37  )
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

Hi,

This adds initial rk3588(s) DT including two different board
devicetrees. All required driver changes have been merged into
the respective maintainer trees. There is one pending DT binding
fix:

https://lore.kernel.org/all/20221021172012.87954-1-sebastian.reichel@collabora.com/

Even with that there is still one warning from the DT check:

$ make CHECK_DTBS=y rockchip/rk3588-evb1-v10.dtb rockchip/rk3588s-rock-5a.dtb
  DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb
/home/sre/src/collabora/rode/linux-rockchip-upstream/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb:
    ethernet@fe1c0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'mdio',
    'power-domains', 'reg', 'reset-names', 'resets', 'rx-queues-config', 'snps,axi-config', 'snps,mixed-burst',
    'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'stmmac-axi-config', 'tx-queues-config' were unexpected)
	From schema: /home/sre/src/collabora/rode/linux-rockchip-upstream/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml

This is for gmac1. gmac0 has the same properties and there is no warning. Also
rk3588s (and thus the Rock 5A) has only gmac1 and there is no warning for the
Rock 5A. It looks like the for some reason the referenced "snps,dwmac.yaml#"
is only checked for the first node. I think it's a bug in dt-validate.

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221108171500.99599-1-sebastian.reichel@collabora.com/
 * Drop Acked-by from Krzysztof
 * Add 'regulator-' prefix to VCC12V VCC5V0 regulators
 * Change 'Radxa Rock 5A' to 'Radxa ROCK 5 Model A' in DT binding
 * Update cover-letter (clock driver and some DT binding fixes got merged)

-- Sebastian

Jianqun Xu (1):
  arm64: dts: rockchip: Add rk3588 pinctrl data

Kever Yang (2):
  arm64: dts: rockchip: Add base DT for rk3588 SoC
  arm64: dts: rockchip: Add rk3588-evb1 board

Sebastian Reichel (2):
  dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
  arm64: dts: rockchip: Add rock-5a board

 .../devicetree/bindings/arm/rockchip.yaml     |   10 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    2 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  156 +
 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     |  516 +++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   62 +
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 3403 +++++++++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   63 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 1678 ++++++++
 9 files changed, 5895 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
