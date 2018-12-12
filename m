From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/3] Rockchip dts32 updates for 4.21 round2
Date: Wed, 12 Dec 2018 09:43:36 +0100
Message-ID: <7153021.iXIDTOc0j0@phil>
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

please find below and in the replies a second round of pull requests
for 4.21. This includes another pull for 64bit dts changes and a single
patch from Rob that should go on top of next/dt after merging the dts
changes, as it converts the board-binding txt to the newer yaml format.

This pull is also somewhat special for me, as it includes support for the
BQ Edison2 tablet (including graphics) that was the actual reason for me
to start looking into trying to get Rockchip support into mainline.

Funnily enough that was over 5 years ago - so didn't even take "long" :-D .

So please pull.
Heiko

The following changes since commit 99935bd4b5b4558beb069222e6d6143fe5830d64:

  ARM: dts: rockchip: Add all CPUs in cooling maps (2018-11-19 14:45:07 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.21-rockchip-dts32-2

for you to fetch changes up to 7841b88a8fdddc0e7f3377fc42efe4cb3be1ed8b:

  ARM: dts: rockchip: Add internal timer support for rv1108 (2018-12-11 20:38:07 +0100)

----------------------------------------------------------------
RV1108 improvements (uart-dma, clocks, interrupt numbers, gmac support
timer and emmc pins) from its first real-world user.
RK3188 improvements (OPPv2, cpu node updates) to prepare for a new
devicetree, the BQ Edison 2 Quad-Core.
VPU device node for rk3288, right now only the jpeg encoder part
will be in the kernel but hopefully other codecs will follow.

----------------------------------------------------------------
Ezequiel Garcia (1):
      ARM: dts: rockchip: add VPU device node for RK3288

Heiko Stuebner (6):
      ARM: dts: rockchip: add #sound-dai-cells to Cortex-A9 i2s
      ARM: dts: rockchip: convert rk3188 to opp-v2
      ARM: dts: rockchip: add cpu-core resets for rk3188
      ARM: dts: rockchip: add phandles to secondary cpu cores
      ARM: dts: rockchip: update cpu supplies on rk3188
      ARM: dts: rockchip: add BQ Edison 2 QC devicetree

Otavio Salvador (8):
      ARM: dts: rockchip: add rv1108 eMMC pin settings
      ARM: dts: rockchip: Add rv1108 GMAC support
      ARM: dts: rockchip: Pass the 'clock-latency' property on rv1108
      ARM: dts: rockchip: Pass the 'arm,cpu-registers-not-fw-configured' property on rv1108
      ARM: dts: rockchip: Fix the PMU interrupt number for rv1108
      ARM: dts: rockchip: Assign the proper GPIO clocks for rv1108
      ARM: dts: rockchip: Add UART DMA support for rv1108
      ARM: dts: rockchip: Add internal timer support for rv1108

 Documentation/devicetree/bindings/arm/rockchip.txt |   4 +
 .../bindings/timer/rockchip,rk-timer.txt           |   1 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/rk3066a.dtsi                     |   3 +
 arch/arm/boot/dts/rk3188-bqedison2qc.dts           | 711 +++++++++++++++++++++
 arch/arm/boot/dts/rk3188-px3-evb.dts               |  14 +-
 arch/arm/boot/dts/rk3188-radxarock.dts             |  14 +-
 arch/arm/boot/dts/rk3188.dtsi                      |  66 +-
 arch/arm/boot/dts/rk3288.dtsi                      |  14 +-
 arch/arm/boot/dts/rv1108.dtsi                      |  84 ++-
 10 files changed, 890 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3188-bqedison2qc.dts
