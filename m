From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH v1 0/2] rk3318 A95X Z2 board
Date: Sat, 20 Jun 2020 15:46:57 +0200
Message-ID: <20200620134659.4592-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

status: EXPERIMENTAL
Use on your own risk.

What works:
 uart2
 mmc
 emmc
 sd card
 usb2

What doesn't work:
 vop
 hdmi
 ethernet

Not tested:
 adc key
 av
 bt
 ir
 spdif
 wifi

No support in mainline:
 usb3
 front display

Problems:
 U-boot only starts on emmc, then loads kernel from sd card.
 Need pd_ignore_unused and clk_ignore_unused in command line
 to prevent a crash. Missing power domains?
 Hdmi hotplug detects DVI modes, but marks them all BAD.
 A fixed display mode in the command line also gives no penguins
 on the screen.
 Etc.

Johan Jonker (2):
  dt-bindings: arm: rockchip: add A95X Z2 description
  arm64: dts: rockchip: add rk3318 A95X Z2 board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts    | 417 +++++++++++++++++++++
 3 files changed, 423 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts

--
2.11.0
