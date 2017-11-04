From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 4.15 part2
Date: Sat, 04 Nov 2017 21:22:12 +0100
Message-ID: <3824439.LIeQpy2inU@phil>
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

if there is going to be an -rc8 you could maybe consider still picking up
the changes below and in the next mail.

Here it is mainly fixups for the Vyasa board added in round1 as well as
hdmi and hdmi-cec support for the firefly and some rv1108 additions.

If they're to late it's also no problem and I'll move stuff on for 4.16.

Thanks
Heiko


The following changes since commit 345b40f1e50759d09144c4aa044d07823d77c283:

  ARM: dts: rockchip: Enable thermal on rk3288-vyasa board (2017-10-14 21:10:31 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.15-rockchip-dts32-2

for you to fetch changes up to be84dfa70dde6bb072c9cc9bba0a741841f0baa2:

  ARM: dts: rockchip: enable the hdmi output on the rk3288-firefly-reload (2017-10-21 21:53:04 +0200)

----------------------------------------------------------------
CEC support for the two rk3288-firefly variants and general hdmi support
for the firefly-reload. A lot of additions and corrections for the
rk3288-vyasa and thermal support for the rv1108.

----------------------------------------------------------------
Hans Verkuil (3):
      ARM: dts: rockchip: add the cec clk for dw-hdmi on rk3288
      ARM: dts: rockchip: define the two possible rk3288 CEC pins
      ARM: dts: rockchip: enable the hdmi output on the rk3288-firefly-reload

Jacob Chen (1):
      ARM: dts: rockchip: add RGA device node for RK3288

Jagan Teki (7):
      ARM: dts: rockchip: Remove vdd_log from rk808, DCDC_REG1 on rk3288-vyasa
      ARM: dts: rockchip: Use vmmc-supply from PMIC on rk3288-vyasa
      ARM: dts: rockchip: Add regulators for rk3288-vyasa
      ARM: dts: rockchip: Add gmac support for rk3288-vyasa board
      ARM: dts: rockchip: Add usb host for rk3288-vyasa
      ARM: dts: rockchip: Add usb otg for rk3288-vyasa
      ARM: dts: rockchip: Add io domains for rk3288-vyasa

Rocky Hao (3):
      ARM: dts: rockchip: add tsadc node for RV1108 SoC
      ARM: dts: rockchip: add thermal nodes for RV1108 SoC
      ARM: dts: rockchip: enable tsadc module on RV1108 evaluation board

 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi |   2 +
 arch/arm/boot/dts/rk3288-firefly-reload.dts       |  11 ++
 arch/arm/boot/dts/rk3288-vyasa.dts                | 179 ++++++++++++++++++++--
 arch/arm/boot/dts/rk3288.dtsi                     |  23 ++-
 arch/arm/boot/dts/rv1108-evb.dts                  |   4 +
 arch/arm/boot/dts/rv1108.dtsi                     |  67 ++++++++
 6 files changed, 270 insertions(+), 16 deletions(-)
