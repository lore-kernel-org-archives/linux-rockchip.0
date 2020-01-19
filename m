From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dt32 for 5.6 round2
Date: Mon, 20 Jan 2020 00:25:50 +0100
Message-ID: <3473489.DgqFdXXe5V@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
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

Hi Arnd, Kevin, Olof,

some additional cleanups came up since the previous round and with
Linus probably doing an -rc8 there may be still time for it.

So please find here and in the reply some cleanup patches and the actual
dsi display for the px30 eval board and if there is still time, please pull!

Thanks
Heiko

The following changes since commit a950c4c63cde7e5c9d849f6ced95f60ed163548d:

  ARM: dts: rockchip: Use ABI name for recovery mode pin on veyron fievel/tiger (2020-01-09 00:22:26 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git v5.6-rockchip-dts32-2

for you to fetch changes up to 8039c828a6cba966c9bdfacebff21ff823a94617:

  ARM: dts: rockchip: Kill off "simple-panel" compatibles (2020-01-18 23:57:39 +0100)

----------------------------------------------------------------
Removal of the simple-panel compatible and some minor
additional cleanups.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: add reg property to brcmf sub node for rk3188-bqedison2qc
      ARM: dts: rockchip: rename dwmmc node names to mmc

Rob Herring (1):
      ARM: dts: rockchip: Kill off "simple-panel" compatibles

 arch/arm/boot/dts/rk3036.dtsi              | 6 +++---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts   | 3 +++
 arch/arm/boot/dts/rk322x.dtsi              | 6 +++---
 arch/arm/boot/dts/rk3288-evb.dtsi          | 2 +-
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
 arch/arm/boot/dts/rk3288.dtsi              | 8 ++++----
 arch/arm/boot/dts/rk3xxx.dtsi              | 6 +++---
 arch/arm/boot/dts/rv1108.dtsi              | 6 +++---
 10 files changed, 23 insertions(+), 20 deletions(-)
