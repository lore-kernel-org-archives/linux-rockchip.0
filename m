From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: [GIT PULL 2/2] ARM: rockchip: dts changes for 4.1
Date: Wed, 18 Mar 2015 17:43:43 +0100
Message-ID: <2772656.J2ocM9VFb6@diego>
References: <2684132.lK2CyBin0M@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2684132.lK2CyBin0M@diego>
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

Hi Arnd, Olof,

some new peripherals, a new board and adding pmic supplies, please pull


Thanks
Heiko


The following changes since commit c517d838eb7d07bbe9507871fab3931deccff539:

  Linux 4.0-rc1 (2015-02-22 18:21:14 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.1-rockchip-dts1

for you to fetch changes up to 91d5cb737287642b75e47790a28a43cd0efd80cb:

  ARM: dts: rockchip: complete rk3288-evb pmic supplies (2015-03-13 00:07:39 +0100)

----------------------------------------------------------------
This adds and enables the usbphy nodes on the rk3288 boards and enables
the gmac on the firefly board. A new board the Popmetal-rk3288 is also
added. And finally the pmic supplies for act8846 based boards are added,
as the act8865/act8846 driver gained supply handling in the regulator tree.

----------------------------------------------------------------
Andy Yan (2):
      dt-bindings: add root compatible property for PopMetal board
      ARM: dts: add rk3288 PopMetal board

Heiko Stuebner (4):
      ARM: dts: rockchip: enable usbphy on rk3288-firefly
      ARM: dts: rockchip: enable gmac on rk3288-firefly
      ARM: dts: rockchip: add input supplies for the act8846 on Radxa Rock
      ARM: dts: rockchip: complete rk3288-evb pmic supplies

Yunzhi Li (2):
      ARM: dts: rockchip: add rk3288 usb PHY
      ARM: dts: rockchip: Enable usb PHY on rk3288-evb board

 Documentation/devicetree/bindings/arm/rockchip.txt |   4 +
 arch/arm/boot/dts/rk3188-radxarock.dts             |  16 +
 arch/arm/boot/dts/rk3288-evb-act8846.dts           |  10 +
 arch/arm/boot/dts/rk3288-evb-rk808.dts             |   7 +
 arch/arm/boot/dts/rk3288-evb.dtsi                  |  13 +
 arch/arm/boot/dts/rk3288-firefly.dtsi              |  20 +
 arch/arm/boot/dts/rk3288-popmetal.dts              | 447 +++++++++++++++++++++
 arch/arm/boot/dts/rk3288.dtsi                      |  35 ++
 8 files changed, 552 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3288-popmetal.dts
