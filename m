From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/5] Rockchip dts64 updates for 5.2 - round 2
Date: Wed, 24 Apr 2019 19:57:56 +0200
Message-ID: <1566191.x5jUQ05xmK@phil>
References: <3379363.gjmLGbHmEH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3379363.gjmLGbHmEH@phil>
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

The following changes since commit b4e1728232d64b8040dae9b5405cf2db7ebd4e8b:

  arm64: dts: rockchip: Decrease emmc-phy's drive impedance on rk3399-puma (2019-03-27 13:45:27 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts64-2

for you to fetch changes up to 798689e45190756c2eca6656ee4c624370a5012a:

  arm64: dts: rockchip: fix IO domain voltage setting of APIO5 on rockpro64 (2019-04-23 23:29:08 +0200)

----------------------------------------------------------------
Bulk conversion of remaining gpios to the helper constants, new peripherals
for the rk3328-roc-cc and some minor fixes for rk3399 and rockpro64.

----------------------------------------------------------------
Heiko Stuebner (1):
      arm64: dts: rockchip: bulk convert gpios to their constant counterparts

Katsuhiro Suzuki (2):
      arm64: dts: rockchip: fix cts, rts pin assign of UART3 for rk3399
      arm64: dts: rockchip: fix IO domain voltage setting of APIO5 on rockpro64

Leonidas P. Papadakos (2):
      arm64: dts: rockchip: eMMC additions for rk3328-roc-cc
      arm64: dts: rockchip: enable display nodes on rk3328-roc-cc

 arch/arm64/boot/dts/rockchip/px30-evb.dts          |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts        |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |  21 ++
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi       |  34 +--
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    |   8 +-
 .../arm64/boot/dts/rockchip/rk3368-lion-haikou.dts |  14 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi      |   8 +-
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |  46 ++--
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts    |   6 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |  36 +--
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           | 240 ++++++++--------
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts        |   6 +-
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  18 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts    |   2 +-
 .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |  14 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts  |   8 +-
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi      |  68 ++---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  56 ++--
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   2 +-
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  12 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  18 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  32 +--
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |   4 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 306 ++++++++++-----------
 26 files changed, 495 insertions(+), 474 deletions(-)
