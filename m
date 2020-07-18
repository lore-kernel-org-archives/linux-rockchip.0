From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2 0/3] rk3318 A95X Z2 board
Date: Sat, 18 Jul 2020 12:53:40 +0200
Message-ID: <20200718105343.5152-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
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

Changed V2:
  add vendor prefix
  changed compatible string
  restyle
  removed usb3 regulator node
  changed led active high to active low

Johan Jonker (3):
  dt-bindings: Add vendor prefix for Shenzhen Zkmagic Technology Co.,
    Ltd.
  dt-bindings: arm: rockchip: add Zkmagic A95X Z2 description
  arm64: dts: rockchip: add rk3318 A95X Z2 board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts    | 393 +++++++++++++++++++++
 4 files changed, 401 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts

--
2.11.0
