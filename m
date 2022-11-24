Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7758CC352A1
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 14:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cGJuwICw58DZMkipcstfySCw8O6QuLgjVSbC5fYlL4g=; b=KWn2ANFspuqr/V
	gJFSuKPRF5O1O0PV9WC4b65R3nJgapNURPLJru9/di9OxrY64/g2XS2Rp2N/HmwszLewan4reGtdX
	SMBJvtE8i8Phzi/o6yETiQkakSLdxV8dbiT2USzateqGtiEskhDSVMbCSlZTaBDO+TSEkZr4Qy5eJ
	fYn8m5RCSKwALQXlENlbsddZHIIZ9kySWqm86kx8sAa3OQV/HCHjoMxiNmNEpZ+O78Er2dRlkS0oQ
	E8LolXjfrGINxlvPHFyrbijhWLrcPxfWroJyiYRpC5oHT8alUb08IoeDhzHF/QGLsCSlUMJjrjLI6
	7hfi/O7BhwucIoOTn4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyDXn-009Rmz-LB; Thu, 24 Nov 2022 14:49:39 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyDXk-009Rk1-Jj
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 14:49:38 +0000
Received: from jupiter.universe (dyndsl-095-033-156-095.ewe-ip-backbone.de [95.33.156.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AB21D6602B31;
	Thu, 24 Nov 2022 14:49:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669301371;
	bh=yBh0Wx9DXuTVRgMWeBdTO0zin0IJINi2hEYO9Xdv17k=;
	h=From:To:Cc:Subject:Date:From;
	b=jL07reJAZiRz+S8Ft122TMBUINA4UMACpDLXzzOsGaz/GShghEC38od8rD3nU+Et2
	 asU/q/gB7ymheXk08wZpCCI83OgsA1tTcQqcjPw5oAykQwQ9XDEHV8nhhCuzWYAeD9
	 wECjS4J1XKt1FBmFPagK123NSJ9gkHhbGwStHT9Y6Go9YJCW/onSpwzR1/ctHMaOFa
	 iahOMTOjZot2ZXNdF7n/wHjjOLlQsQF9VvpIkh6/3Pd0eVFRTndPaWeaPpdEYluKqq
	 Gr5D4DGqW18SpcaJCo3+5g3Ye6IU5+Hgv9Oa3VxJrOK+9e+/15EsueU1o+ZUjb86qw
	 G9Mjfm0j9MSGg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 583A8480117; Thu, 24 Nov 2022 15:49:29 +0100 (CET)
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
Subject: [PATCHv4 0/7] Initial rk3588 DT
Date: Thu, 24 Nov 2022 15:49:21 +0100
Message-Id: <20221124144928.35381-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_064936_928963_79BD2CB2 
X-CRM114-Status: GOOD (  15.08  )
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

Changes since PATCHv3:
 * https://lore.kernel.org/all/20221121175814.68927-1-sebastian.reichel@collabora.com/
 * update reset gpio + timings in EVB1 and Rock 5A DT to new style
 * change regulator- prefix to -regulator suffix in EVB1 and Rock 5B DTB
 * merge dt-binding update patches for EVB1, Rock 5A and Rock 5B and add Krzysztof's Ack
 * change pinctrl name "active" to "default" for all PWM nodes
 * remove aliases from rk3588s and rk3588 DTSI
 * sort includes in rk3588s.dtsi
 * add dma names for uart
 * some more property order fixes
 * remove #power-domain-cells for the power-controller sub-nodes; only the main node should be referenced
 * add dynamic-power-coefficient and #cooling-cells for all CPU cores

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

Christopher Obbard (1):
  arm64: dts: rockchip: Add rock-5b board

Jianqun Xu (1):
  arm64: dts: rockchip: Add rk3588 pinctrl data

Kever Yang (2):
  arm64: dts: rockchip: Add base DT for rk3588 SoC
  arm64: dts: rockchip: Add rk3588-evb1 board

Sebastian Reichel (3):
  dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
  dt-bindings: arm: rockchip: add initial rk3588 boards
  arm64: dts: rockchip: Add rock-5a board

 .../devicetree/bindings/arm/rockchip.yaml     |   15 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    3 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  156 +
 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     |  516 +++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   44 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   58 +
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 3403 +++++++++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   63 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 1672 ++++++++
 10 files changed, 5935 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi

-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
