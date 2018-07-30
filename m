From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts64 updates for 4.19 round 2
Date: Tue, 31 Jul 2018 00:35:31 +0200
Message-ID: <1809430.FkQi5Ue9ae@phil>
References: <2000491.bLgWuj0xar@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2000491.bLgWuj0xar@phil>
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

please find below some more Rockchip devicetree updates
targeted at 4.19. With mainly a new board to go on top of the
first round of patches.

And in a second pull-request just some defconfig64 additions
enabling yet more stuff for kevin.

If we're not to late for 4.19, please pull!
Otherwise I'll migrate these over to 4.19+1


Thanks
Heiko

The following changes since commit d0414fdd58eb51ffd6528280fd66705123663964:

  arm64: dts: rockchip: corrected uart1 clock-names for rk3328 (2018-07-07 13:02:27 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.19-rockchip-dts64-2

for you to fetch changes up to 0fbfe10fa96b8df44cfb140a6672f9418e16a2a6:

  arm64: dts: rockchip: add led support for Firefly-RK3399 (2018-07-25 12:19:41 +0200)

----------------------------------------------------------------
A new board, the Vamrs Ficus using the rk3399 and followin the 96boards
standard. LEDs and power button for the rk3399 firefly and removal of
some deprecated type-c properties from the rk3399 devicetree.

----------------------------------------------------------------
Enric Balletbo i Serra (3):
      arm64: dts: rockchip: add USB 2.0 and 3.0 support on Ficus board
      arm64: dts: rockchip: add voltage properties for vcc3v3_pcie on rk3399 ficus
      arm64: dts: rockchip: remove deprecated Type-C PHY properties on rk3399

Ezequiel Garcia (2):
      dt-bindings: Add vendor prefix for Vamrs Ltd.
      arm64: dts: rockchip: add 96boards RK3399 Ficus board

Heiko Stuebner (1):
      arm64: dts: rockchip: drop out-of-tree properties from rk3399-ficus regulator

Shohei Maruyama (2):
      arm64: dts: rockchip: add power button support for Firefly-RK3399
      arm64: dts: rockchip: add led support for Firefly-RK3399

 Documentation/devicetree/bindings/arm/rockchip.txt |   5 +
 .../devicetree/bindings/vendor-prefixes.txt        |   1 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      | 599 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  44 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   8 -
 6 files changed, 650 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
