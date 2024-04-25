Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B354C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 21:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bmR3IN8Xs4JPOqpotMUjxollPRFD920It18+AwloPf8=; b=3ldzIevAYiv9Jm
	72CpI+K7Tx7jnP8Ia0JpiRCJlypHOLdzzFrVb1WPcuDzCTdmHHtWqhmFFpg5FWAjYfqpTCRfVtMor
	Mo0DsymvCxJdwaUux3XNsc5jIs34PGUqLfA8MZC3GnwxeVVe27uvrGkDleO+fd4Ck8i6sRn1mUC1Z
	/sebYaa75ISmmqMI0UtyspjWof4uesKYFBEceiWyOgIxNarYrOp+sL40/uuIpBq0BNo+QWZIgcGiw
	pYVEsDaghkXCjQSwUHaIXp9lMaJEczaJDjiARwa5bQjBM1Gfk9ZLYA1bGKjE58jtSCVv9US9T6o53
	trW2g5KabEjNte9crAKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s06uc-0000000AJ5X-1sus;
	Thu, 25 Apr 2024 21:45:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s06uY-0000000AJ3p-39aG;
	Thu, 25 Apr 2024 21:45:48 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s06uW-0007JN-FV; Thu, 25 Apr 2024 23:45:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.10 #1
Date: Thu, 25 Apr 2024 23:45:43 +0200
Message-ID: <15361932.O9o76ZdvQC@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_144546_972728_7E92B888 
X-CRM114-Status: GOOD (  17.95  )
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
Rockchip changes for for 6.10 .

Some new boards, some new peripherals.

The most interesting bit is of course that we now have the panthor
driver for Valhall Malis available, so some boards already enable it.


Please pull!

Thanks
Heiko


The following changes since commit 4cece764965020c22cff7665b18a012006359095:

  Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.10-rockchip-dts64-1

for you to fetch changes up to d7b83921d098bd76623381f75f5cd2296f1315cc:

  arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou (2024-04-23 17:37:41 +0200)

----------------------------------------------------------------
New boards: ArmSom Sige7, GameForce Chi,Forlinx FET3588-C with OK3588-C
baseboard, Protonic MECSBC, Wolfvision PF5.

The panthor driver for Mali Valhall GPUs landed, so a number of boards
enable their gpu (Cool Pi, Theobroma-Systems boards, QuartzPro64,
Rock5b, EVB1)

Also the USBDP phy driver landed, allowing the usb3 dual-role controllers
to be used on EVB1, Rock 5A and 5B, Indiedroid-Nova, Theobroma-Systems
Tiger and Jaguar.

A lot new peripherals for the Khadas Edge 2 (rtc, uart, sfc, adc, ir,
usb, pcie, tf-card, pmic); PCIe3 support on Jaguar, audio support for
the rk3308 and cache descriptions for rk356x and rk3328.

Corrected model names for boards from Radxa, Pine64, Powkiddy, Anberic
and general more dt cleanups.

----------------------------------------------------------------
Andy Yan (2):
      arm64: dts: rockchip: Enable gpu on Cool Pi CM5
      arm64: dts: rockchip: Enable gpu on Cool Pi 4B

Boris Brezillon (3):
      arm64: dts: rockchip: Add rk3588 GPU node
      arm64: dts: rockchip: Enable GPU on rk3588-rock5b
      arm64: dts: rockchip: Enable GPU on rk3588-evb1

Chris Morgan (8):
      arm64: dts: rockchip: Add additional properties for WiFi on Anbernic rgxx3
      arm64: dts: rockchip: Add optional node for chasis-type on Anbernic rgxx3
      arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
      arm64: dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
      arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
      dt-bindings: arm: rockchip: Add GameForce Chi
      arm64: dts: rockchip: Add GameForce Chi
      arm64: dts: rockchip: Add USB-C Support for rk3588s-indiedroid-nova

Chukun Pan (2):
      dt-bindings: arm: rockchip: correct the model name for Radxa ROCK 3A
      arm64: dts: rockchip: correct the model name for Radxa ROCK 3A

David Jander (1):
      arm64: dts: rockchip: add Protonic MECSBC device-tree

Diederik de Haas (1):
      arm64: dts: rockchip: Fix ordering of nodes on rk3588s

Dmitry Yashin (3):
      dt-bindings: arm: rockchip: add Forlinx FET3588-C
      arm64: dts: rockchip: add Forlinx FET3588-C
      arm64: dts: rockchip: add Forlinx OK3588-C

Dragan Simic (7):
      arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
      arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x
      arm64: dts: rockchip: Enable the GPU on quartzpro64
      dt-bindings: arm: rockchip: Correct the descriptions for Radxa boards
      arm64: dts: rockchip: Correct the model names for Radxa ROCK 5 boards
      dt-bindings: arm: rockchip: Correct the descriptions for Pine64 boards
      arm64: dts: rockchip: Correct the model names for Pine64 boards

Folker Schwesinger (2):
      arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK Pi 4
      arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK 4C+

Heiko Stuebner (8):
      arm64: dts: rockchip: enable gpu on rk3588-jaguar
      arm64: dts: rockchip: enable gpu on rk3588-tiger
      arm64: dts: rockchip: move uart2 pinmux to dtsi on rk3588-tiger
      arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar
      arm64: dts: rockchip: fix pcie-refclk frequency on rk3588 tiger
      arm64: dts: rockchip: fix comment for upper usb3 port
      arm64: dts: rockchip: add usb-id extcon on rk3588 tiger
      arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou

Jianfeng Liu (3):
      dt-bindings: vendor-prefixes: add ArmSoM
      dt-bindings: arm: rockchip: Add ArmSoM Sige7
      arm64: dts: rockchip: Add ArmSom Sige7 board

Jing Luo (1):
      arm64: dts: rockchip: correct gpio_pwrctrl1 typos on rk3588(s) boards

Luca Ceresoli (2):
      arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3 to rk3308
      arm64: dts: rockchip: add the internal audio codec on rk3308

Michael Riesch (4):
      dt-bindings: add wolfvision vendor prefix
      dt-bindings: arm: rockchip: add wolfvision pf5 mainboard
      arm64: dts: rockchip: add wolfvision pf5 mainboard
      arm64: dts: rockchip: add wolfvision pf5 io expander board

Muhammed Efe Cetin (9):
      arm64: dts: rockchip: Add cpu regulators and vcc5v0_sys to Khadas Edge 2
      arm64: dts: rockchip: Add PMIC to Khadas Edge 2
      arm64: dts: rockchip: Add TF card to Khadas Edge 2
      arm64: dts: rockchip: USB2, USB3 Host, PCIe2 to Khadas Edge 2
      arm64: dts: rockchip: Add ir receiver and leds to Khadas Edge 2
      arm64: dts: rockchip: Add saradc and adc buttons to Khadas Edge 2 and enable tsadc
      arm64: dts: rockchip: Add SFC to Khadas Edge 2
      arm64: dts: rockchip: Add UART9 (bluetooth) to Khadas Edge 2
      arm64: dts: rockchip: Add RTC to Khadas Edge 2

Sascha Hauer (1):
      dt-bindings: arm: rockchip: Add Protonic MECSBC board

Sebastian Reichel (7):
      arm64: dts: rockchip: fix usb2phy nodename for rk3588
      arm64: dts: rockchip: reorder usb2phy properties for rk3588
      arm64: dts: rockchip: add USBDP phys on rk3588
      arm64: dts: rockchip: add USB3 DRD controllers on rk3588
      arm64: dts: rockchip: add USB3 to rk3588-evb1
      arm64: dts: rockchip: add upper USB3 port to rock-5a
      arm64: dts: rockchip: add lower USB3 port to rock-5b

 .../devicetree/bindings/arm/rockchip.yaml          |  43 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   4 +
 arch/arm64/boot/dts/rockchip/Makefile              |   6 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  56 ++
 .../boot/dts/rockchip/rk3326-gameforce-chi.dts     | 809 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  37 +-
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     |   2 +-
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts      |   4 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi |   4 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts   |   2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353ps.dts  |   2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts   |   2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  |   2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rg503.dts    |   2 +-
 .../boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |   5 +
 .../boot/dts/rockchip/rk3566-powkiddy-rgb30.dts    |   2 +-
 .../boot/dts/rockchip/rk3566-powkiddy-rk2023.dts   |   2 +-
 .../boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |   2 +
 .../boot/dts/rockchip/rk3566-powkiddy-x55.dts      |   1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts |   2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts |   2 +-
 .../boot/dts/rockchip/rk3566-soquartz-blade.dts    |   2 +-
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts      |   2 +-
 .../boot/dts/rockchip/rk3566-soquartz-model-a.dts  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts     | 404 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    |   2 +-
 .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 ++++
 .../boot/dts/rockchip/rk3568-wolfvision-pf5.dts    | 528 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  41 ++
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts      | 721 ++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi |   7 +-
 .../dts/rockchip/rk3588-edgeble-neu6a-common.dtsi  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   | 161 ++++
 arch/arm64/boot/dts/rockchip/rk3588-fet3588-c.dtsi | 558 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |  66 +-
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts   | 409 +++++++++++
 .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  16 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  24 +-
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts      |  65 +-
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |  29 +-
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi           |  72 ++
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts |   7 +-
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts  |  73 +-
 .../boot/dts/rockchip/rk3588s-khadas-edge2.dts     | 680 +++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts   |  22 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 353 ++++++---
 49 files changed, 5226 insertions(+), 154 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-gameforce-chi.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-fet3588-c.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
