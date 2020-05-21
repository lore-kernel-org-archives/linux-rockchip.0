From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/3] Rockchip dt64 changes for 5.8
Date: Thu, 21 May 2020 03:17:18 +0200
Message-ID: <1970481.V9vR1fIhX2@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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

Hi Arnd, Kevin, Olof,

please find below some Rockchip devicetree changes for 5.8
Please pull!

Thanks
Heiko

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-dts64-1

for you to fetch changes up to b2cb68e864222eb3cc1d7c3c06edc40469699983:

  arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2 (2020-05-21 02:16:51 +0200)

----------------------------------------------------------------
New soc variant the rk3326 which is essentially a px30 with only one
display controller and a new board using it, the Odroid Advance Go.
sdcard regulator for the rockpro64 and a lot of devicetree fixes
making the dt-binding check a lot happier.

----------------------------------------------------------------
Boris Brezillon (1):
      arm64: dts: rockchip: Define the rockchip Video Decoder node on rk3399

Heiko Stuebner (3):
      arm64: dts: rockchip: add core devicetree for rk3326
      dt-bindings: Add binding for Hardkernel Odroid Go Advance
      arm64: dts: rockchip: add Odroid Advance Go

Johan Jonker (17):
      arm64: dts: rockchip: remove bus-width from mmc nodes in rk3308-roc-cc
      arm64: dts: rockchip: remove #sound-dai-cells from &i2s1 node of rk3399-pinebook-pro.dts
      arm64: dts: rockchip: remove #sound-dai-cells from &spdif node of rk3399-hugsun-x99.dts
      arm64: dts: rockchip: replace RK_FUNC defines in rk3326-odroid-go2
      include: dt-bindings: rockchip: remove unused defines
      arm64: dts: rockchip: fix phy nodename for rk3328
      arm64: dts: rockchip: fix rtl8211f nodename for rk3328 Beelink A1
      arm64: dts: rockchip: fix rtl8211e nodename for rk3399-nanopi4
      arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-nanopi4
      arm64: dts: rockchip: fix rtl8211e nodename for rk3399-orangepi
      arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-orangepi
      arm64: dts: rockchip: fix defines in pd_vio node for rk3399
      arm64: dts: rockchip: rename and label gpio-led subnodes
      arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc emmc node
      arm64: dts: rockchip: add bus-width properties to mmc nodes for px30
      arm64: dts: rockchip: fix pd_tcpc0 and pd_tcpc1 node position on rk3399
      arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2

Tobias Schramm (1):
      arm64: dts: rockchip: add micro SD card regulator to rockpro64

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   3 +
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |   7 +-
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 557 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3326.dtsi           |  15 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   2 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    |   4 +-
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |   4 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |   2 +-
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  29 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  10 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |   7 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |   4 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   4 +-
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  11 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  29 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  27 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  34 +-
 include/dt-bindings/pinctrl/rockchip.h             |  11 -
 23 files changed, 691 insertions(+), 85 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326.dtsi
