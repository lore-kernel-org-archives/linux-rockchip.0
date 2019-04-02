From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 5.2
Date: Tue, 02 Apr 2019 11:05:16 +0200
Message-ID: <13182220.1UgD4fsNbT@phil>
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

please find below and in the reply round1 of Rockchip devicetree updates
targetted at 5.2. Nothing major, some new boards and a number of
general updates - Please pull

Thanks
Heiko

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts32-1

for you to fetch changes up to 4b028ebd4e3d86c61161b3a937b746043006dcbe:

  ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808 (2019-03-31 17:28:05 +0200)

----------------------------------------------------------------
Quite a bit of love for the rk3288-veyron chromeos devices and a number
of cleanups for rk3288 from that area, hdmi support for the old rk3066
a small rv1108-eglin-r1 cleanup and wifi+hdmi-cec for the tinker board.

----------------------------------------------------------------
David Summers (1):
      ARM: dts: rockchip: Enable WiFi on rk3288-tinker

Douglas Anderson (7):
      ARM: dts: rockchip: Fix gic/efuse sort ordering for rk3288
      dt-bindings: ARM: dts: rockchip: Add rk3288-veyron-jerry rev 10-15
      ARM: dts: rockchip: Add rk3288-veyron-jerry rev 10-15
      ARM: dts: rockchip: Add dvs-gpios to rk3288-veyron-jerry
      ARM: dts: rockchip: Add vdd_logic to rk3288-veyron
      dt-bindings: ARM: dts: rockchip: Add bindings for rk3288-veyron-mighty
      ARM: dts: rockchip: Add device tree for rk3288-veyron-mighty

Johan Jonker (2):
      ARM: dts: rockchip: remove disable-wp from rv1108-elgin-r1 emmc node
      ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808

Jonas Karlman (2):
      ARM: dts: rockchip: Enable HDMI CEC on rk3288-tinker-s
      ARM: dts: rockchip: add grf reference in rk3288 tsadc node

Zheng Yang (1):
      ARM: dts: rockchip: add rk3066 hdmi nodes

 .../devicetree/bindings/arm/rockchip.yaml          | 19 ++++++-
 arch/arm/boot/dts/Makefile                         |  1 +
 arch/arm/boot/dts/rk3066a-mk808.dts                | 29 +++++++++++
 arch/arm/boot/dts/rk3066a.dtsi                     | 59 ++++++++++++++++++++++
 arch/arm/boot/dts/rk3288-tinker-s.dts              |  5 ++
 arch/arm/boot/dts/rk3288-tinker.dtsi               | 37 ++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts          |  9 +++-
 arch/arm/boot/dts/rk3288-veyron-mighty.dts         | 34 +++++++++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi               | 17 +++++++
 arch/arm/boot/dts/rk3288.dtsi                      | 27 +++++-----
 arch/arm/boot/dts/rv1108-elgin-r1.dts              |  1 -
 11 files changed, 221 insertions(+), 17 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-mighty.dts
