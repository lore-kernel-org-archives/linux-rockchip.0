From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip dts64 changes for 5.5 - round 3
Date: Tue, 19 Nov 2019 14:45:56 +0100
Message-ID: <3235791.ImxGk5JOut@phil>
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi (arm-)soc people,

for whatever reason I've gotten a big avalanche of patches for various
arm64 parts since the last pull request and with -rc8 being real I thought
I'll try to get these into 5.5 still to not make the wait too long ;-)

And I don't think it's anything earth shattering in there.


If it's not overly late, please pull, otherwise I'll move these over to 5.6
which also wouldn't be problematic.

Thanks
Heiko

The following changes since commit 75aa567803b15e679432655badf95cd30b66b930:

  arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc (2019-11-09 02:15:22 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts64-3

for you to fetch changes up to c36308abe4110e4db362d5e2ae3797834a7b1192:

  arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc (2019-11-19 00:17:46 +0100)

----------------------------------------------------------------
PCIe regulator improvements for RockPi4 and Rock960, NanoPi improvements
for PCIe and cooling maps, a big number of improvements for the
rk3399-roc-pc (spi-flash, sdmmc, regulators, hdmi-sound, gpu node) and
some more things for the px30-evb (thermal handling and dropping an
operating point).

----------------------------------------------------------------
Anand Moon (1):
      arm64: dts: rockchip: Add regulators for pcie on rk3399-rock960

Heiko Stuebner (3):
      arm64: dts: rockchip: remove 408MHz operating point from px30
      arm64: dts: rockchip: add thermal infrastructure to px30
      arm64: dts: rockchip: enable tsadc on px30-evb

Kever Yang (1):
      arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log

Markus Reichl (8):
      arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc
      arm64: dts: rockchip: Add regulators for pcie on rk3399-roc-pc
      arm64: dts: rockchip: Enable HDMI Sound on rk3399-roc-pc
      arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
      arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
      arm64: dts: rockchip: Use correct pin for lcd-reset pinctrl on rk3399-roc-pc
      arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on rk3399-roc-pc
      arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc

Matwey V. Kornilov (1):
      arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board

Robin Murphy (2):
      arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
      arm64: dts: rockchip: Improve nanopi4 PCIe

 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  6 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi             | 71 ++++++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  | 28 +--------
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   | 27 +++++++-
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  2 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    | 62 ++++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  | 14 +++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   | 11 ++++
 9 files changed, 181 insertions(+), 42 deletions(-)
