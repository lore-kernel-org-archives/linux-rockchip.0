From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip devicetree fixes for 5.1
Date: Mon, 01 Apr 2019 01:17:00 +0200
Message-ID: <3810761.i4nrmJbiT5@phil>
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

Hi Arnd, Kevin, Olof,

please find below some fixes for Rockchip SoCs on 5.1-rc. Nothing
overly major thankfully but still somehow more than normal.

So please pull

Thanks
Heiko

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.1-rockchip-dtfixes-1

for you to fetch changes up to 1a96665143c355b1019ed13b927266185d2a1e4f:

  ARM: dts: rockchip: Remove #address/#size-cells from rk3288-veyron gpio-keys (2019-03-25 13:33:10 +0100)

----------------------------------------------------------------
Fixes for dtc warnings, fixes for ethernet transfers on rk3328,
sd-card related fixes on both rk3328 ans rk3288-tinker and a
regulator fix on rock64 and making ddc actually work on the
Rock PI 4 due to missing the ddc bus.

----------------------------------------------------------------
David Summers (1):
      ARM: dts: rockchip: Fix SD card detection on rk3288-tinker

Douglas Anderson (3):
      ARM: dts: rockchip: Fix gpu opp node names for rk3288
      ARM: dts: rockchip: Remove #address/#size-cells from rk3288 mipi_dsi
      ARM: dts: rockchip: Remove #address/#size-cells from rk3288-veyron gpio-keys

Ezequiel Garcia (1):
      arm64: dts: rockchip: add DDC bus on Rock Pi 4

Jonas Karlman (1):
      ARM: dts: rockchip: fix rk3288 cpu opp node reference

Leonidas P. Papadakos (1):
      arm64: dts: rockchip: fix rk3328-roc-cc gmac2io tx/rx_delay

Peter Geis (2):
      arm64: dts: rockchip: fix rk3328 rgmii high tx error rate
      arm64: dts: rockchip: fix rk3328 sdmmc0 write errors

Tomohiro Mayama (1):
      arm64: dts: rockchip: Fix vcc_host1_5v GPIO polarity on rk3328-rock64

 arch/arm/boot/dts/rk3288-tinker.dtsi              |  3 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi              |  2 -
 arch/arm/boot/dts/rk3288.dtsi                     | 20 ++++----
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts    |  4 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts    |  3 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi          | 58 +++++++++++------------
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts |  1 +
 7 files changed, 44 insertions(+), 47 deletions(-)
