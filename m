Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1385CC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 21:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B1AF2+5NRAj94nL3pJns1gfEc8hjOS6dadxHXj5fSrM=; b=rIncnVDh/+Xykf
	wEwQvaaMlb3v/O3xBM7/VDjeoqEP4X7WS37AOpL9+tberPO378etlmkzdbuf8aFWPddV+bf28nPeo
	1UEFS3/2eLc4TO3iLDSreMN124c4L80w7rTkB/Mnb2wpetj/e6CfhYy2n2B2LLZIwLEuneHxGX2MM
	xk9+07epZtFRGdSKo3XK+AHezMXF9k2AWkN84HqHnK0xm1TulIb0ihx5qo3AqK+fJ2tAK6MC++DAd
	Mi6muNBsf7d15e0Yua40XVC9SVaAreszPHfPE6J62Us/z/UAHbOcSZ8MuKnI0fISHk4a3k6gKtXgj
	Nrx1FhQzlm5iEu1rNyrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDANz-00CpCv-0X;
	Tue, 12 Dec 2023 21:33:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDANw-00CpCJ-2x;
	Tue, 12 Dec 2023 21:33:50 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDANv-0007Bn-Ml; Tue, 12 Dec 2023 22:33:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.8 #1
Date: Tue, 12 Dec 2023 22:33:47 +0100
Message-ID: <3197878.5fSG56mABF@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_133349_013798_D41108AF 
X-CRM114-Status: GOOD (  13.44  )
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

The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:

  Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.8-rockchip-dts32-1

for you to fetch changes up to 569b26af7919c15a8ce231b4fae29cfbd811f144:

  ARM: dts: rockchip: add hdmi-connector node to rk3036-kylin (2023-12-12 20:38:36 +0100)

----------------------------------------------------------------
New boards are the Geniatech XPI-3128 (RK3128), Sonoff iHost (rv1109)

One "new" soc is the rv1109 which is a two-core variant of the rv1126
and everything else is identical.

Lots of love for the old rk3128 (power-domains, gpu, gmac, usb) and
rv1126 (uart pins, i2c2 special case) and rework of aliases to have
core busses that are hard-numbered in boards and documentation centrally
in the dtsi, but the per board aliases in the boards (ethernet).

Plus the rk3036 got a yaml hdmi binding which required some small fixes.

----------------------------------------------------------------
Alex Bee (14):
      dt-bindings: arm: rockchip: Add Geniatech XPI-3128
      ARM: dts: rockchip: Add sdmmc_det pinctrl for RK3128
      ARM: dts: rockchip: Add Geniatech XPI-3128 RK3128 board
      ARM: dts: rockchip: Add USB host clocks for RK3128
      ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
      ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128
      ARM: dts: rockchip: Add gmac node for RK3128
      ARM: dts: rockchip: Enable gmac for XPI-3128
      ARM: dts: rockchip: Add power-controller for RK3128
      ARM: dts: rockchip: Add GPU node for RK3128
      ARM: dts: rockchip: Enable GPU for XPI-3128
      ARM: dts: rockchip: Move gpio aliases to SoC dtsi for RK3128
      ARM: dts: rockchip: Move i2c aliases to SoC dtsi for RK3128
      ARM: dts: rockchip: Move uart aliases to SoC dtsi for RK3128

Johan Jonker (3):
      ARM: dts: rockchip: add gpio alias for gpio dt nodes
      ARM: dts: rockchip: fix rk3036 hdmi ports node
      ARM: dts: rockchip: add hdmi-connector node to rk3036-kylin

Tim Lunn (7):
      ARM: dts: rockchip: Add alternate UART pins to rv1126
      ARM: dts: rockchip: Serial aliases for rv1126
      ARM: dts: rockchip: Add i2c2 node to rv1126
      ARM: dts: rockchip: Split up rgmii1 pinctrl on rv1126
      ARM: dts: rockchip: Add rv1109 SoC
      dt-bindings: arm: rockchip: Add Sonoff iHost
      ARM: dts: rockchip: Add Sonoff iHost Smart Home Hub

 .../devicetree/bindings/arm/rockchip.yaml          |  12 +
 arch/arm/boot/dts/rockchip/Makefile                |   3 +
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts        |  17 +
 arch/arm/boot/dts/rockchip/rk3036.dtsi             |  17 +-
 arch/arm/boot/dts/rockchip/rk3066a.dtsi            |   5 +
 arch/arm/boot/dts/rockchip/rk3128-evb.dts          |   5 -
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts     | 425 +++++++++++++++++++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi             | 185 +++++++++
 arch/arm/boot/dts/rockchip/rk322x.dtsi             |   4 +
 arch/arm/boot/dts/rockchip/rk3288.dtsi             |   9 +
 arch/arm/boot/dts/rockchip/rk3xxx.dtsi             |   4 +
 arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts |  21 +
 arch/arm/boot/dts/rockchip/rv1109.dtsi             |  23 ++
 .../boot/dts/rockchip/rv1126-edgeble-neu2-io.dts   |   2 +-
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     |  72 +++-
 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts |  29 ++
 .../arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 404 ++++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi             |  21 +
 18 files changed, 1236 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
