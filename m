From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/2] Rockchip dts changes for 4.3, part1
Date: Fri, 17 Jul 2015 00:36:22 +0200
Message-ID: <43550625.L2USv7p8yj@diego>
References: <2820374.NgluYWXZkW@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2820374.NgluYWXZkW@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit d770e558e21961ad6cfdf0ff7df0eb5d7d4f0754:

  Linux 4.2-rc1 (2015-07-05 11:01:52 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.3-rockchip32-dts1

for you to fetch changes up to 4863dcd394019b542ac968870cba734d27e992e0:

  ARM: dts: rockchip: add rk3288 arm-pmu irq affinity (2015-07-16 22:22:47 +0200)

----------------------------------------------------------------
This adds the board for the Netxeon R89 used in different
TV-boxes and the initial support for two Chromebooks from
the veyron family.
Additionally a non-critical fix for the watchdog irq
on rk3288, addition of the gmac reset line, a ramp delay
for the cpu regulator on the firefly board and cpu affinity
for the arm-pmu spi irqs.

----------------------------------------------------------------
Alexandru M Stan (2):
      ARM: dts: rockchip: add shared rk3288-veyron files
      ARM: dts: rockchip: add veyron-jerry board

Chris Zhong (1):
      ARM: dts: Add sbs-battery dts fragment used by chromebooks

Heiko Stuebner (7):
      ARM: dts: rockchip: fix rk3288 watchdog irq
      dt-bindings: add vendor prefix for Netxeon Technology
      ARM: dts: rockchip: add Netxeon R89 board
      ARM: dts: rockchip: add veyron-pinky board
      ARM: dts: rockchip: add missing device_type = "memory" to boards
      dt-bindings: document rk3368 R88 board from Rockchip
      ARM: dts: rockchip: add rk3288 arm-pmu irq affinity

Romain Perier (2):
      ARM: dts: rockchip: Add STMMAC reset signal in GMAC interface for rk3288
      ARM: dts: rockchip: Add ramp delay for vdd_cpu in firefly board dts

 Documentation/devicetree/bindings/arm/rockchip.txt |  20 +
 .../devicetree/bindings/vendor-prefixes.txt        |   1 +
 arch/arm/boot/dts/Makefile                         |   5 +-
 arch/arm/boot/dts/cros-ec-sbs.dtsi                 |  52 ++
 arch/arm/boot/dts/rk3066a-bqcurie2.dts             |   1 +
 arch/arm/boot/dts/rk3066a-marsboard.dts            |   1 +
 arch/arm/boot/dts/rk3066a-rayeager.dts             |   1 +
 arch/arm/boot/dts/rk3188-radxarock.dts             |   1 +
 arch/arm/boot/dts/rk3288-evb.dtsi                  |   1 +
 arch/arm/boot/dts/rk3288-firefly.dtsi              |   3 +
 arch/arm/boot/dts/rk3288-popmetal.dts              |   1 +
 arch/arm/boot/dts/rk3288-r89.dts                   | 413 +++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi    | 232 +++++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts          | 197 +++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts          | 128 +++++
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi         | 122 +++++
 arch/arm/boot/dts/rk3288-veyron.dtsi               | 563 +++++++++++++++++++++
 arch/arm/boot/dts/rk3288.dtsi                      |  11 +-
 18 files changed, 1748 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boot/dts/cros-ec-sbs.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-r89.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-jerry.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-pinky.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron.dtsi
