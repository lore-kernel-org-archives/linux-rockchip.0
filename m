From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 0/3] rk3318 A95X Z2 board
Date: Sat,  8 Aug 2020 18:06:15 +0200
Message-ID: <20200808160618.15445-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add rk3318 A95X Z2 board.

What works:
 adc key
 emmc
 ethernet
 hdmi
 gpu
 ir
 mmc
 sd card
 vop
 usb2
 uart2

Not tested:
 av
 uart0 / bt
 spdif
 wifi

No support in mainline:
 usb3 (works with manufacturer driver)
 front display (works with custom gpio driver AD1628/HT1628)

Problems:
 U-boot only starts on emmc, then loads kernel from sd card or emmc.

 Hdmi hotplug detects DVI modes, but marks them all BAD.
 The dw-hdmi driver needs more pre_pll_cfg_table entries.
 Slow boot behavior. Screen available way after boot. (no penguins)

 GPU support for Debian is not up to date. (old version)
 Use Github version instead.
 Test with glmark2-es2-drm gives glmark2 Score: 29
 Kernel log:
  lima ff300000.gpu: pp pp0 reset time out
  lima ff300000.gpu: pp pp1 reset time out
 No mainline support for GPU thermal and voltage to frequency.
 PWM1 supply connected to DMC, GPU and vcodec.

 The box only has a model name. Vendor prefix not verified.

 Etc.

Changed V3:
  add acked by
  change adc-keys
  change regulator
  change SPDIF
  rebase
  remove disable-wp
  remove pinctrl-names
  remove vcc_phy
  use label u2phy

Changed V2:
  add vendor prefix
  changed compatible string
  changed led active high to active low
  removed usb3 regulator node
  restyle

Johan Jonker (3):
  dt-bindings: Add vendor prefix for Shenzhen Zkmagic Technology Co.,
    Ltd.
  dt-bindings: arm: rockchip: add Zkmagic A95X Z2 description
  arm64: dts: rockchip: add rk3318 A95X Z2 board

Johan Jonker (3):
  dt-bindings: Add vendor prefix for Shenzhen Zkmagic Technology Co.,
    Ltd.
  dt-bindings: arm: rockchip: add Zkmagic A95X Z2 description
  arm64: dts: rockchip: add rk3318 A95X Z2 board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts    | 374 +++++++++++++++++++++
 4 files changed, 382 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts

--
2.11.0
