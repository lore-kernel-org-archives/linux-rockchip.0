From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] Rockchip dt fixes for 5.7
Date: Wed, 06 May 2020 02:30:28 +0200
Message-ID: <1738941.6LdaBJIBqS@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, soc-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

please find below some fixes for the newly added Pinebook pro
as well as some fixes to make the dtc and the binding check happy.

Please pull!

Thanks
Heiko

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-dtsfixes1

for you to fetch changes up to 855bdca1781c79eb661f89c8944c4a719ce720e8:

  ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi (2020-04-27 21:36:31 +0200)

----------------------------------------------------------------
Some fixes for the newly added Pinebook Pro and other fixes to
make dtc and the new dtscheck against yaml bindings happy.

----------------------------------------------------------------
Chen-Yu Tsai (5):
      arm64: dts: rockchip: Replace RK805 PMIC node name with "pmic" on rk3328 boards
      arm64: dts: rockchip: drop non-existent gmac2phy pinmux options from rk3328
      arm64: dts: rockchip: drop #address-cells, #size-cells from rk3328 grf node
      arm64: dts: rockchip: drop #address-cells, #size-cells from rk3399 pmugrf node
      arm64: dts: rockchip: Rename dwc3 device nodes on rk3399 to make dtc happy

Johan Jonker (7):
      ARM: dts: rockchip: fix phy nodename for rk3228-evb
      ARM: dts: rockchip: fix phy nodename for rk3229-xms6
      arm64: dts: rockchip: remove extra assigned-clocks property from &gmac2phy node in rk3328-evb.dts
      arm64: dts: rockchip: fix status for &gmac2phy in rk3328-evb.dts
      arm64: dts: rockchip: swap interrupts interrupt-names rk3399 gpu node
      ARM: dts: rockchip: swap clock-names of gpu nodes
      ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi

Robin Murphy (2):
      arm64: dts: rockchip: Correct PMU compatibles for PX30 and RK3308
      arm64: dts: rockchip: Fix Pinebook Pro FUSB302 interrupt

Tobias Schramm (2):
      arm64: dts: rockchip: fix inverted headphone detection on Pinebook Pro
      arm64: dts: rockchip: enable DC charger detection pullup on Pinebook Pro

 arch/arm/boot/dts/rk3036.dtsi                        |  2 +-
 arch/arm/boot/dts/rk3228-evb.dts                     |  2 +-
 arch/arm/boot/dts/rk3229-xms6.dts                    |  2 +-
 arch/arm/boot/dts/rk322x.dtsi                        |  6 +++---
 arch/arm/boot/dts/rk3xxx.dtsi                        |  2 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi               |  2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi             |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts          |  5 ++---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts       |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi             | 18 ------------------
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts |  9 +++++----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi             | 14 ++++++--------
 12 files changed, 23 insertions(+), 43 deletions(-)
