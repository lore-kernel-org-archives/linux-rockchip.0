From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 5.3 round 2
Date: Mon, 01 Jul 2019 11:33:34 +0200
Message-ID: <1883297.MJ2kjSRBWT@phil>
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

please find below and in the reply round2 of Rockchip updates for armsoc.

Please pull!

Thanks
Heiko

The following changes since commit b8925b7c2f867df6ce3e20deb4b3e2b9b32b20ff:

  ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices (2019-06-06 12:41:04 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts32-2

for you to fetch changes up to 519574e3259c8d7e5d78366ef513cfaaf650784f:

  ARM: dts: rockchip: add display nodes for rk322x (2019-06-27 11:57:20 +0200)

----------------------------------------------------------------
Display support for rk3228/rk3229 (up to hdmi output) and more love
for rk3288-veyron boards.

----------------------------------------------------------------
Douglas Anderson (2):
      ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on veyron
      ARM: dts: rockchip: Configure BT_DEV_WAKE in on rk3288-veyron

Heiko Stuebner (3):
      clk: rockchip: add clock id for watchdog pclk on rk3328
      clk: rockchip: add clock id for hdmi_phy special clock on rk3228
      Merge branch 'v5.3-shared/clk-ids' into v5.3-armsoc/dts32

Justin Swartz (2):
      ARM: dts: rockchip: fix vop iommu-cells on rk322x
      ARM: dts: rockchip: add display nodes for rk322x

Matthias Kaehlcke (1):
      Revert "ARM: dts: rockchip: set PWM delay backlight settings for Minnie"

 arch/arm/boot/dts/rk322x.dtsi                   | 85 ++++++++++++++++++++++++-
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi |  2 +
 arch/arm/boot/dts/rk3288-veyron-minnie.dts      |  2 -
 arch/arm/boot/dts/rk3288-veyron.dtsi            | 49 ++++++++++++++
 include/dt-bindings/clock/rk3228-cru.h          |  1 +
 include/dt-bindings/clock/rk3328-cru.h          |  1 +
 6 files changed, 137 insertions(+), 3 deletions(-)
