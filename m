From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip dts64 updates for 5.3 round 2
Date: Mon, 01 Jul 2019 11:34:19 +0200
Message-ID: <1845795.d5AgpU8gu5@phil>
References: <1883297.MJ2kjSRBWT@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1883297.MJ2kjSRBWT@phil>
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

The following changes since commit 45fa7c3838715b34ccea661e4b7b261d91668b17:

  arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board (2019-06-04 15:38:54 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts64-2

for you to fetch changes up to e1d9149e8389f1690cdd4e4056766dd26488a0fe:

  arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire (2019-06-27 16:40:02 +0200)

----------------------------------------------------------------
New boards the Khadas Edge family of sbcs and the Hugsun X99 TV box,
both based on rk3399. Small improvements for RockPi, Sapphire and
rk3328-roc-cc boards. Improvements for the thermal handling on rk3399
as well as the rock960 board. rk3399 dwc3 clock updates and a small
start of the dtsi for the new rk3399pro (the one with the connected
npu).

----------------------------------------------------------------
Daniel Lezcano (2):
      arm64: dts: rockchip: Fix multiple thermal zones conflict in rk3399.dtsi
      arm64: dts: rockchip: Define values for the IPA governor for rock960

Enric Balletbo i Serra (1):
      arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs

Ezequiel Garcia (1):
      arm64: dts: rockchip: Enable HDMI audio on Rock Pi

Heiko Stuebner (3):
      clk: rockchip: add clock id for watchdog pclk on rk3328
      clk: rockchip: add clock id for hdmi_phy special clock on rk3228
      Merge branch 'v5.3-shared/clk-ids' into v5.3-armsoc/dts64

Jianqun Xu (1):
      arm64: dts: rockchip: add core dtsi file for RK3399Pro SoCs

Leonidas P. Papadakos (1):
      arm64: dts: rockchip: enable rk3328 watchdog clock

Nick Xie (1):
      arm64: dts: rockchip: Add support for Khadas Edge/Edge-V/Captain boards

Peter Geis (1):
      arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.

Vicente Bergas (1):
      arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire

Vivek Unune (1):
      arm64: dts: rockchip: Add support for Hugsun X99 TV Box

 .../devicetree/bindings/arm/rockchip.yaml          |  13 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   4 +
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 733 +++++++++++++++++++
 .../dts/rockchip/rk3399-khadas-edge-captain.dts    |  27 +
 .../boot/dts/rockchip/rk3399-khadas-edge-v.dts     |  27 +
 .../arm64/boot/dts/rockchip/rk3399-khadas-edge.dts |  13 +
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      | 804 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  |   4 +
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  39 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |   5 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  15 +-
 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi        |  22 +
 include/dt-bindings/clock/rk3228-cru.h             |   1 +
 include/dt-bindings/clock/rk3328-cru.h             |   1 +
 17 files changed, 1702 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
