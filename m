Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23A3CC4321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vkiujsZ2hXZFyxXc/0Q1g+uaZJmHUgxEnUiNV5qOvQ=; b=anzXCqMvkwpqkl
	wDT9U0b0zVIS5ooTW6ymS1d7q9rKVZBjE3cSHVFUj+rb1RsAXn1XJ4iiCr5/axmCROAl4QQyY9jmv
	ftUrCirtKCmdFpjE6x7l5noNk6aLevam9fRXsRdN1VG6871dSFi/0XY7b/B5zve/oKtitdC5Ls1LG
	Tv/U9oGWkiINhcVsWYPwXKSQa6dI878pqbrY8DjaeJ6DuCdxt+G9hfdznZhzmFYM2x4Qe0aKu484y
	2FxHPraXEHK+IfvAC6vIgXdTP4ffV4haE8ferS1t1+FkAbWbYpn6tzT3BxRRd3j9WTGt52PO9DWrC
	2jaKUbF2sepN3B706g4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3v-00GZBP-Cs; Mon, 21 Nov 2022 17:58:31 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3r-00GZ7A-Oo
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:58:29 +0000
Received: from jupiter.universe (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E7F466029B0;
	Mon, 21 Nov 2022 17:58:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669053505;
	bh=/1aNBsrAg1ZmHtEI6sPt/HBfhYWdbp35pT6ZJ1FP9bM=;
	h=From:To:Cc:Subject:Date:From;
	b=hZTCeTiOWQg+a8VqhxofVSM7tUg1jWLRzaJ2/2MmbpmRmnsNpMB9RNvCVwgm968X/
	 aQAbB6zUXEnFcvd2YDyyk4dssOTwodsyK9qR5b8A/LSnGMzN/P9a+U88ouf2BkSuQC
	 8jJxHkPYzAEL9DhQUCU4ajTr1t9d5MhkdCUgUlh8bIYDkTydv7AxT7uzZykJfTMzC2
	 YMhILLVjwL7kPQMwoC6QXg4CYv7TeHrvgcDsPtaow0gsf/icBf8ovaywIUE61bnnAK
	 ZavJMmsc+oAwzWZIJy5nPkXEJgasrI0SJ2aFert2MiqLdbwyvErEwgWuWKye2W74HU
	 fuIw6tZ29I3Nw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0B4E2480113; Mon, 21 Nov 2022 18:58:23 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv3 0/9] Initial rk3588 DT
Date: Mon, 21 Nov 2022 18:58:05 +0100
Message-Id: <20221121175814.68927-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_095827_962873_4BC29CE6 
X-CRM114-Status: GOOD (  13.02  )
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
the respective maintainer trees. There is one warning from the
DT check:

$ make CHECK_DTBS=y rockchip/rk3588-evb1-v10.dtb rockchip/rk3588s-rock-5a.dtb
  DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb
/home/sre/src/collabora/rode/linux-rockchip-upstream/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb:
    ethernet@fe1c0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'mdio',
    'power-domains', 'reg', 'reset-names', 'resets', 'rx-queues-config', 'snps,axi-config', 'snps,mixed-burst',
    'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'stmmac-axi-config', 'tx-queues-config' were unexpected)
	From schema: /home/sre/src/collabora/rode/linux-rockchip-upstream/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml

This is for gmac1. gmac0 has the same properties and there is no warning. Also
rk3588s (and thus the Rock 5A) has only gmac1 and there is no warning for the
Rock 5A. It looks like for some reason the referenced "snps,dwmac.yaml#"
is only checked for the first node. I think it's a bug in dt-validate.
Also the same issue can be seen with rk356x.

Changes since PATCHv2:
 * https://lore.kernel.org/all/20221115161702.163057-1-sebastian.reichel@collabora.com/
 * add minimal Radxa Rock 5B DT
 * Add aliases for i2c, spi and gpio in rk3588s.dtsi
 * Fix ethernet-phy node name and remove #phy-cells
 * Sort nodes / includes in both boards
 * Sort nodes in rk3588s.dtsi according to register address
 * add missing spi4 node in rk3588s.dtsi
 * split board specific dt-bindings into their own patches
 * add board specific mmc alias following the downstream enumeration

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221108171500.99599-1-sebastian.reichel@collabora.com/
 * Drop Acked-by from Krzysztof
 * Add 'regulator-' prefix to VCC12V VCC5V0 regulators
 * Change 'Radxa Rock 5A' to 'Radxa ROCK 5 Model A' in DT binding
 * Update cover-letter (clock driver and some DT binding fixes got merged)

-- Sebastian

Christopher Obbard (2):
  dt-bindings: arm: rockchip: add Rock 5 Model B
  arm64: dts: rockchip: Add rock-5b board

Jianqun Xu (1):
  arm64: dts: rockchip: Add rk3588 pinctrl data

Kever Yang (2):
  arm64: dts: rockchip: Add base DT for rk3588 SoC
  arm64: dts: rockchip: Add rk3588-evb1 board

Sebastian Reichel (4):
  dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
  dt-bindings: arm: rockchip: add RK3588 EVB1
  dt-bindings: arm: rockchip: add Rock 5 Model A
  arm64: dts: rockchip: Add rock-5a board

 .../devicetree/bindings/arm/rockchip.yaml     |   15 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    3 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  159 +
 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     |  516 +++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   43 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   62 +
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 3403 +++++++++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   66 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 1722 +++++++++
 10 files changed, 5994 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
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
