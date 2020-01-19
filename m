From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip dt64 for 5.6 round2
Date: Mon, 20 Jan 2020 00:26:34 +0100
Message-ID: <7641353.lIegmeFAIi@phil>
References: <3473489.DgqFdXXe5V@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <3473489.DgqFdXXe5V@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit 1fc61ed04d309b0b8b3562acf701ab988eee12de:

  arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc (2020-01-09 00:28:40 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.6-rockchip-dts64-2

for you to fetch changes up to 62b5efc919b12c0effc6fd5720b6d5ddc1d1ee5f:

  arm64: dts: rockchip: Kill off "simple-panel" compatibles (2020-01-18 23:58:56 +0100)

----------------------------------------------------------------
DSI display for px30 evaluation board and a number of cleanups
accross multiple socs.

----------------------------------------------------------------
Heiko Stuebner (1):
      arm64: dts: rockchip: hook up the px30-evb dsi display

Johan Jonker (4):
      arm64: dts: rockchip: fix dwmmc clock name for px30
      arm64: dts: rockchip: fix dwmmc clock name for rk3308
      arm64: dts: rockchip: add reg property to brcmf sub-nodes
      arm64: dts: rockchip: rename dwmmc node names to mmc

Markus Reichl (1):
      arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine

Rob Herring (1):
      arm64: dts: rockchip: Kill off "simple-panel" compatibles

 arch/arm64/boot/dts/rockchip/px30-evb.dts          | 32 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/px30.dtsi             | 12 ++++----
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 12 ++++----
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  6 ++--
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  6 ++--
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  3 ++
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts  |  2 +-
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |  3 ++
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |  3 ++
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  | 21 ++++++++++++++
 .../dts/rockchip/rk3399-sapphire-excavator.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  4 +--
 13 files changed, 85 insertions(+), 23 deletions(-)
