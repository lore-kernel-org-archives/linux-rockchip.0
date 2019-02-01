From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 5.1
Date: Fri, 01 Feb 2019 12:23:57 +0100
Message-ID: <2570520.8EeqtpO5V7@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin Olof,

please find below and in the reply a round of Rockchip devicetree updates
targetted at 5.1. Nothing major, some new boards including the first
actual product based on the rv1108 single-core soc and a number of
general updates - Please pull

Thanks
Heiko


The following changes since commit bfeffd155283772bbe78c6a05dec7c0128ee500c:

  Linux 5.0-rc1 (2019-01-06 17:08:20 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.1-rockchip-dts32-1

for you to fetch changes up to e6b97a47b5b9512828859778acafd3fe107b395e:

  ARM: dts: rockchip: clean up the abuse of disable-wp (2019-01-28 10:51:55 +0100)

----------------------------------------------------------------
New board the Elgin-R1 based on the rv1108 soc and a number of small
improvements for rv1108 as well. RK3066 got support for the core
display components and the Edison tablet got its touchscreen added.
Apart from that a wider fix to drop display-wp usage from places where
it shouldn't be used, a pin fix for Edison and a cleanup to prevent
rk3036 board from defining sound-dai-cells for core components in
each board separately.

----------------------------------------------------------------
Heiko Stuebner (3):
      ARM: dts: rockchip: move rk3036 i2s sound-dail-cells into soc dtsi
      ARM: dts: rockchip: fix cif1_pdn pin on rk3188-bqedison2qc
      ARM: dts: rockchip: add focaltech touchscreen to rk3188-bqedison2qc

Johan Jonker (1):
      ARM: dts: rockchip: add HCLK_HDMI to rk3066 vio power-domain

Mark Yao (1):
      ARM: dts: rockchip: add rk3066 vop display nodes

Otavio Salvador (4):
      ARM: dts: rockchip: Add missing dma-names SPI support for rv1108
      ARM: dts: rockchip: rv1108: Add spim0 and spim1 pinctrl groups
      dt-bindings: Add vendor prefix for elgin
      ARM: dts: rv1108: Add support for rv1108-elgin-r1 board

Shawn Lin (1):
      ARM: dts: rockchip: clean up the abuse of disable-wp

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.txt        |   1 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/rk3036-kylin.dts                 |   1 -
 arch/arm/boot/dts/rk3036.dtsi                      |   1 +
 arch/arm/boot/dts/rk3066a-bqcurie2.dts             |   1 -
 arch/arm/boot/dts/rk3066a-mk808.dts                |   1 -
 arch/arm/boot/dts/rk3066a-rayeager.dts             |   2 -
 arch/arm/boot/dts/rk3066a.dtsi                     |  48 +++++
 arch/arm/boot/dts/rk3188-bqedison2qc.dts           |  18 +-
 arch/arm/boot/dts/rk3188-px3-evb.dts               |   1 -
 arch/arm/boot/dts/rk3229-evb.dts                   |   1 -
 arch/arm/boot/dts/rk3288-fennec.dts                |   1 -
 arch/arm/boot/dts/rk3288-firefly-reload.dts        |   1 -
 arch/arm/boot/dts/rk3288-miqi.dts                  |   1 -
 arch/arm/boot/dts/rk3288-popmetal.dts              |   1 -
 arch/arm/boot/dts/rk3288-rock2-square.dts          |   1 -
 arch/arm/boot/dts/rk3288-tinker-s.dts              |   1 -
 arch/arm/boot/dts/rk3288-vyasa.dts                 |   1 -
 arch/arm/boot/dts/rv1108-elgin-r1.dts              | 206 +++++++++++++++++++++
 arch/arm/boot/dts/rv1108.dtsi                      |  37 ++++
 21 files changed, 315 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/boot/dts/rv1108-elgin-r1.dts
