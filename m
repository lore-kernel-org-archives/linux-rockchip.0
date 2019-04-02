From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip dts64 updates for 5.2
Date: Tue, 02 Apr 2019 11:05:53 +0200
Message-ID: <21013717.BSZSu47YRi@phil>
References: <13182220.1UgD4fsNbT@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <13182220.1UgD4fsNbT@phil>
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

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts64-1

for you to fetch changes up to b4e1728232d64b8040dae9b5405cf2db7ebd4e8b:

  arm64: dts: rockchip: Decrease emmc-phy's drive impedance on rk3399-puma (2019-03-27 13:45:27 +0100)

----------------------------------------------------------------
Core new soc features are hdmi-cec for rk3328, scheduler capacity-values
and emmc cleanups for rk3399. New boards are the OrangePi (rk3399) and
NanoPi NEO4. Both the OrangePi as well as the NanoPC/Pie family also
directly got some additional features added after the boards itself.

The Rock960 family (rock960+ficus) got their power-tree cleaned to match
the schematics and also got hdmi-audio and their gpu enabled.

Mali support also got enabled on the RockPi4 and finally both
rk3328-rock64 and rk3328-roc-cc got some additional features.

----------------------------------------------------------------
Alexis Ballier (4):
      arm64: dts: rockchip: Add support for the Orange Pi RK3399 board.
      arm64: dts: rockchip: Fix clock names and add missing supplies for bluetooth on rk3399-orangepi
      arm64: dts: rockchip: Specify vid supply for the rk3399-orangepi compass (AK09911)
      arm64: dts: rockchip: Add the fusb typec manager to rk3399-orangepi

Christoph Muellner (3):
      arm64: dts: rockchip: Disable DCMDs on RK3399's eMMC controller.
      arm64: dts: rockchip: Define drive-impedance-ohm for RK3399's emmc-phy.
      arm64: dts: rockchip: Decrease emmc-phy's drive impedance on rk3399-puma

Ezequiel Garcia (2):
      arm64: dts: rockchip: enable mali on Rock Pi 4
      arm64: dts: rockchip: enable mali on rock960 boards

Jagan Teki (3):
      arm64: dts: rockchip: Add Nanopi NEO4 initial support
      arm64: dts: rockchip: Rename vcc_sys into vcc5v0_sys on rk3399-rock960
      arm64: dts: rockchip: Add 12V DCIN regulator to rk3399-ficus

Jonas Karlman (4):
      arm64: dts: rockchip: enable HDMI CEC on rk3328
      arm64: dts: rockchip: fix regulator name on rk3328-rock64
      arm64: dts: rockchip: add leds node on rk3328-rock64
      arm64: dts: rockchip: add ir-receiver node on rk3328-rock64

Katsuhiro Suzuki (2):
      arm64: dts: rockchip: add #sound-dai-cells to HDMI of rk3328
      arm64: dts: rockchip: enable hdmi audio out for rk3399-rockpro64

Leonidas P. Papadakos (2):
      arm64: dts: rockchip: give some life to the rk3328-roc-cc leds
      arm64: dts: rockchip: add rk3328-roc-cc cpu-supply entries for all cpu nodes

Marc Zyngier (1):
      arm64: dts: rockchip: Add capacity-dmips-mhz attributes to rk3399

Robin Murphy (2):
      arm64: dts: rockchip: Add PWM fan for NanoPC-T4
      arm64: dts: rockchip: Add nanopi4 ethernet phy

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |  32 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |  33 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   7 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  |  67 ++
 .../arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dts |  50 ++
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  27 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   | 790 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |   1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  |   5 +
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  45 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts  |   4 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   8 +
 14 files changed, 1056 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
