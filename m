From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/5] Rockchip dts32 updates for 5.2 - round 2
Date: Wed, 24 Apr 2019 19:57:03 +0200
Message-ID: <3379363.gjmLGbHmEH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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

Hi Arnd, Kevin Olof,

please find below and in the replies round2 of Rockchip devicetree updates
targetted at 5.2. Again nothing major but a lot of attention for the rk3288
and a lot of general updates - Please pull.

The devicetree updates (32+64 bit) go on top of the previous tags from
round 1, while the other just go on top of 5.1-rc1 (or later of course).

Thanks
Heiko

The following changes since commit 4b028ebd4e3d86c61161b3a937b746043006dcbe:

  ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808 (2019-03-31 17:28:05 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts32-2

for you to fetch changes up to 356150e86d75653d1f679c6ef583144b26d0a686:

  ARM: dts: rockchip: vdd_gpu off in suspend for rk3288-veyron (2019-04-12 22:28:38 +0200)

----------------------------------------------------------------
Much love for rk3288 in general (power coefficients for the scheduler)
and veyron chromeos devices in particular (regulators, suspend, cleanups)
and bulk conversion of the remaining gpios to the helper constants denoting
the iomux.

----------------------------------------------------------------
Douglas Anderson (3):
      ARM: dts: rockchip: Add DDR retention/poweroff to rk3288-veyron hogs
      ARM: dts: rockchip: vcc33_ccd off in suspend for rk3288-veyron-chromebook
      ARM: dts: rockchip: vdd_gpu off in suspend for rk3288-veyron

Heiko Stuebner (1):
      ARM: dts: rockchip: bulk convert gpios to their constant counterparts

Matthias Kaehlcke (3):
      ARM: dts: rockchip: Remove unnecessary setting of UART0 SCLK rate on veyron
      ARM: dts: rockchip: Add BT_EN to the power sequence for veyron
      ARM: dts: rockchip: Add dynamic-power-coefficient for rk3288

 arch/arm/boot/dts/rk3036-kylin.dts                |  10 +-
 arch/arm/boot/dts/rk3036.dtsi                     | 136 +++++-----
 arch/arm/boot/dts/rk3066a-marsboard.dts           |   2 +-
 arch/arm/boot/dts/rk3066a-mk808.dts               |   8 +-
 arch/arm/boot/dts/rk3066a-rayeager.dts            |  26 +-
 arch/arm/boot/dts/rk3066a.dtsi                    | 180 +++++++-------
 arch/arm/boot/dts/rk3188-px3-evb.dts              |   4 +-
 arch/arm/boot/dts/rk3188-radxarock.dts            |  14 +-
 arch/arm/boot/dts/rk3188.dtsi                     | 210 ++++++++--------
 arch/arm/boot/dts/rk322x.dtsi                     | 170 ++++++-------
 arch/arm/boot/dts/rk3288-evb-act8846.dts          |   4 +-
 arch/arm/boot/dts/rk3288-evb.dtsi                 |  26 +-
 arch/arm/boot/dts/rk3288-fennec.dts               |  10 +-
 arch/arm/boot/dts/rk3288-firefly-beta.dts         |   4 +-
 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi |  10 +-
 arch/arm/boot/dts/rk3288-firefly-reload.dts       |  36 +--
 arch/arm/boot/dts/rk3288-firefly.dts              |   4 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi             |  38 +--
 arch/arm/boot/dts/rk3288-miqi.dts                 |  28 +--
 arch/arm/boot/dts/rk3288-phycore-rdk.dts          |  28 +--
 arch/arm/boot/dts/rk3288-phycore-som.dtsi         |  30 +--
 arch/arm/boot/dts/rk3288-r89.dts                  |  14 +-
 arch/arm/boot/dts/rk3288-rock2-som.dtsi           |   4 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts         |  18 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi              |  30 +--
 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi |   8 +-
 arch/arm/boot/dts/rk3288-veyron-brain.dts         |   8 +-
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi   |  25 +-
 arch/arm/boot/dts/rk3288-veyron-jaq.dts           |  14 +-
 arch/arm/boot/dts/rk3288-veyron-jerry.dts         |  14 +-
 arch/arm/boot/dts/rk3288-veyron-mickey.dts        |   6 +-
 arch/arm/boot/dts/rk3288-veyron-mighty.dts        |   2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts        |  24 +-
 arch/arm/boot/dts/rk3288-veyron-pinky.dts         |   6 +-
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi        |  16 +-
 arch/arm/boot/dts/rk3288-veyron-speedy.dts        |  14 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi              |  74 +++---
 arch/arm/boot/dts/rk3288-vyasa.dts                |   6 +-
 arch/arm/boot/dts/rk3288.dtsi                     | 290 +++++++++++-----------
 arch/arm/boot/dts/rv1108.dtsi                     | 138 +++++-----
 40 files changed, 851 insertions(+), 838 deletions(-)
