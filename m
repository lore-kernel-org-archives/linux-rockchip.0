From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/2] Rockchip dt64 for 5.7
Date: Tue, 17 Mar 2020 02:02:19 +0100
Message-ID: <27799037.pT45f1LVdF@phil>
References: <7846023.TtVhTo4ACP@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7846023.TtVhTo4ACP@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, soc-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-dts64-1

for you to fetch changes up to 68c33366a95664ab6afafd9b0ed591597890ede7:

  arm64: dts: rockchip: Add Hugsun X99 power led (2020-03-17 01:49:03 +0100)

----------------------------------------------------------------
Support for the rk3399-based Pinebook Pro, eDP support and power-tree for
the rk3399 evaluation board, a big number of fixes for issues found by
checking against the new yaml dt-bindings.
And on the smaller side, fixes for network transfers, the mute gpio
on rk3328 gets actually described and one lvds fix on the px30 and
the rk3399-hugsun board gets IR and power led.

----------------------------------------------------------------
Alexis Ballier (2):
      arm64: dts: rockchip: Add ethernet phy to rk3399-orangepi
      arm64: dts: rockchip: Explicitly pinmux the regulator configuration GPIOs on rk3399-orangepi

Andy Yan (4):
      arm64: dts: rockchip: remove dvs2 pinctrl for pmic on rk3399 evb
      arm64: dts: rockchip: Add pmic dt tree for rk3399 evb
      arm64: dts: rockchip: remove enable-gpio of backlight on rk3399 evb
      arm64: dts: rockchip: Enable eDP display on rk3399 evb

Carlos de Paula (1):
      arm64: dts: rockchip: Add txpbl node for RK3399/RK3328

Emmanuel Vadot (1):
      dt-bindings: Add doc for Pine64 Pinebook Pro

Enric Balletbo i Serra (1):
      arm64: dts: rk3399: Remove extcon unit address and extcon-cells from Gru

Heiko Stuebner (1):
      arm64: dts: rockchip: fix px30 lvds ports

Johan Jonker (13):
      arm64: dts: rockchip: fix cpu compatible property for rk3308
      arm64: dts: remove g-use-dma from rockchip usb nodes
      arm64: dts: rockchip: fix compatible property for Radxa ROCK Pi N10
      arm64: dts: rockchip: fix compatible property for rk3399-evb
      arm64: dts: rockchip: remove max-freq from &spi1 node for Hugsun X99
      arm64: dts: rockchip: remove rockchip,grf from vop nodes for px30
      arm64: dts: remove no-emmc from mmc node for Rockchip PX5 EVB
      arm64: dts: rockchip: fix vqmmc-supply property name for rk3399 puma
      arm64: dts: rockchip: replace clock-freq-min-max by max-frequency
      arm64: dts: add bus to rockchip amba nodenames
      arm64: dts: rockchip: remove properties from spdif node RK3399 Excavator
      arm64: dts: rockchip: remove clock-names property from 'generic-ehci' nodes
      arm64: dts: rockchip: remove clock-names property from 'generic-ohci' nodes

Robin Murphy (1):
      arm64: dts: rockchip: Describe RK3328 GPIO_MUTE users

Tobias Schramm (1):
      arm64: dts: rockchip: Add initial support for Pinebook Pro

Vivek Unune (2):
      arm64: dts: rockchip: Add Hugsun X99 IR receiver
      arm64: dts: rockchip: Add Hugsun X99 power led

 .../devicetree/bindings/arm/rockchip.yaml          |    5 +
 arch/arm64/boot/dts/rockchip/Makefile              |    1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   32 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   10 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |    1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |    1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |    7 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts    |    1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |    3 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts        |  270 ++++-
 .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |    4 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |    4 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |   39 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   43 +-
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      | 1096 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |    2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |    2 +-
 .../dts/rockchip/rk3399-sapphire-excavator.dts     |    2 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   11 +-
 .../boot/dts/rockchip/rk3399pro-rock-pi-n10.dts    |    3 +-
 20 files changed, 1470 insertions(+), 67 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
