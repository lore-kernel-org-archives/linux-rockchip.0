Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF722C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SMWj5UttDmLz8BrVbB0GBCg+WpVSGl1BHg/2ysUbBWI=; b=upeOWTSdJI8zKD
	m5MRgq7UEQwINcqAOGtPbA/GUHHNkIXyjyiSuRQ5vYGYeoUeqz3sxFt63xLgzghWg9TI15rQYQY3Q
	9rlPbqTjC3IfDCAvpCrSH1AClgerpK4YjQ570B1/UCIs0aIg7Y0Q4IeXSs+umA3g5wB7f11qOmh5K
	M3Eh7aNVofiOdYjEQARRvKL9+dx2EnfgDD4Qk0MgmQHPfLv3IqZsTqCvjgb1Ldwe/EpHJ3cQXdvhj
	N6YjSgIPkH7jCGTHolqpLqg8QPAKaufsvQxhmXOvi9QJtjsse5SKzJP5SEa/kR0v7inAAYJ+Hss5J
	saV8U1r/YJ2pevjC4YkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCBo-0000000Ducw-2t8j;
	Fri, 28 Jun 2024 14:03:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCBj-0000000Duas-3P1v;
	Fri, 28 Jun 2024 14:02:57 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sNCBh-0007da-Qe; Fri, 28 Jun 2024 16:02:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.11 #1
Date: Fri, 28 Jun 2024 16:02:53 +0200
Message-ID: <4901395.GXAFRqVoOG@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_070256_043737_FE66E980 
X-CRM114-Status: GOOD (  18.62  )
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

Hi Arnd, Kevin, Olof,

please find below and in a subsequent pull-request
Rockchip changes for for 6.11 .

Some new boards, some new peripherals.

As discussed on IRC today, I've excluded the overlay that dtc doesn't
like yet.

Please pull.
Thanks
Heiko


The following changes since commit 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:

  Linux 6.10-rc1 (2024-05-26 15:20:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-dts64-1

for you to fetch changes up to 9417909e253ffa57f014822a79cca9b1f2b25492:

  arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro (2024-06-28 14:02:39 +0200)

----------------------------------------------------------------
New boards, the Radxa ROCK S0, Radxa ZERO 3W/3E, CM3588 NAS solution
and Neardi LBA3368.

Interesting core changes: dropping of the rk3399pro dtsi - Dragan dug
through available information, boards and found out that the pcie-stuff
described in the existing rk3399pro dtsi is actually not true and the
file can go away.

And also a bit of reorganizing of rk3588 dtsi files. There are number
of rk3588 variants in existence that select between two sets of
peripherals and also multiple sets of operating points. So the change
sorts it differently so that we stop including one soc-variant into
others and also make room for the operating points.

The rk3308 got io domains, a number of additions to the rk3308-rock-pi-s
board (wifi, io-domains, otp, ethernet, uart, sdmmc).

And then there are of course the usual set of new additions like
rk3588 pcie endpoint support and individual peripherals for boards.

----------------------------------------------------------------
Alex Bee (3):
      dt-bindings: vendor-prefixes: Add Neardi Technology
      dt-bindings: arm: rockchip: Add Neardi LBA3368
      arm64: dts: rockchip: Add Neardi LBA3368 board

Alexey Charkov (9):
      arm64: dts: rockchip: add rfkill node for M.2 Key E Bluetooth on Rock 5B
      arm64: dts: rockchip: add thermal zones information on RK3588
      arm64: dts: rockchip: enable thermal management on all RK3588 boards
      arm64: dts: rockchip: add passive GPU cooling on RK3588
      arm64: dts: rockchip: enable automatic fan control on Rock 5B
      arm64: dts: rockchip: Add CPU/memory regulator coupling for 2 RK3588 boards
      arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
      arm64: dts: rockchip: Add OPP data for CPU cores on RK3588j
      arm64: dts: rockchip: Split GPU OPPs of RK3588 and RK3588j

Cristian Ciocaltea (3):
      arm64: dts: rockchip: Drop invalid mic-in-differential on rk3568-rock-3a
      arm64: dts: rockchip: Fix mic-in-differential usage on rk3566-roc-pc
      arm64: dts: rockchip: Fix mic-in-differential usage on rk3568-evb1-v10

Dragan Simic (2):
      arm64: dts: rockchip: Prepare RK3588 SoC dtsi files for per-variant OPPs
      arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro

FUKAUMI Naoki (4):
      arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
      arm64: dts: rockchip: add (but disabled) SFC node for Radxa ROCK 5A
      arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
      arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W

Jonas Karlman (12):
      dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
      arm64: dts: rockchip: Add Radxa ZERO 3W/3E
      arm64: dts: rockchip: Add sdmmc related properties on rk3308-rock-pi-s
      arm64: dts: rockchip: Add pinctrl for UART0 to rk3308-rock-pi-s
      arm64: dts: rockchip: Add mdio and ethernet-phy nodes to rk3308-rock-pi-s
      arm64: dts: rockchip: Add OTP device node for RK3308
      arm64: dts: rockchip: Add rk3308 IO voltage domains
      arm64: dts: rockchip: Add io-domains to rk3308-rock-pi-s
      arm64: dts: rockchip: Update WIFi/BT related nodes on rk3308-rock-pi-s
      dt-bindings: arm: rockchip: Add Radxa ROCK S0
      arm64: dts: rockchip: Add Radxa ROCK S0
      arm64: dts: rockchip: Increase VOP clk rate on RK3328

Niklas Cassel (2):
      arm64: dts: rockchip: Add PCIe endpoint mode support
      arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode

Peter Robinson (4):
      arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
      arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
      arm64: dts: rockchip: Enable PinePhone Pro IMU sensor
      arm64: dts: rockchip: Enable PinePhone Pro vibrator

Sebastian Kropatsch (2):
      dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
      arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board

Trevor Woerner (1):
      arm64: dts: rockchip: add gpio-line-names to radxa-zero-3

 .../devicetree/bindings/arm/rockchip.yaml          |   24 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 arch/arm64/boot/dts/rockchip/Makefile              |    7 +
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts  |   81 +-
 arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts    |  293 ++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   29 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |    4 +-
 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts    |  659 +++++
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     |   74 +
 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi        |   22 -
 .../boot/dts/rockchip/rk3566-radxa-zero-3.dtsi     |  531 ++++
 .../boot/dts/rockchip/rk3566-radxa-zero-3e.dts     |   52 +
 .../boot/dts/rockchip/rk3566-radxa-zero-3w.dts     |   92 +
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts     |    2 +-
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts    |    2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   |    2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    |    4 -
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts      |    4 +
 ...3588s-pinctrl.dtsi => rk3588-base-pinctrl.dtsi} |    0
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      | 2799 ++++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6a-common.dtsi  |    4 +
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |   16 +
 ...3588-pinctrl.dtsi => rk3588-extra-pinctrl.dtsi} |    0
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi     |  448 ++++
 .../rockchip/rk3588-friendlyelec-cm3588-nas.dts    |  778 ++++++
 .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   |  653 +++++
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts   |    4 +
 arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi       |  190 ++
 .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |   12 +
 .../boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso  |   25 +
 .../dts/rockchip/rk3588-rock-5b-pcie-srns.dtso     |   16 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |   57 +-
 .../arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts |    4 +
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |    4 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi           |  413 +--
 arch/arm64/boot/dts/rockchip/rk3588j.dtsi          |  143 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts   |   17 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 2670 +------------------
 38 files changed, 7022 insertions(+), 3115 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
 delete mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
 rename arch/arm64/boot/dts/rockchip/{rk3588s-pinctrl.dtsi => rk3588-base-pinctrl.dtsi} (100%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
 rename arch/arm64/boot/dts/rockchip/{rk3588-pinctrl.dtsi => rk3588-extra-pinctrl.dtsi} (100%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-opp.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
