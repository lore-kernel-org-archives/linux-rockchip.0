From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/3] Rockchip dts32 updates for v4.7 - part2
Date: Fri, 29 Apr 2016 00:24:48 +0200
Message-ID: <76948175.MyD0mx7K4Q@diego>
References: <5544434.9tA8JHBIkp@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5544434.9tA8JHBIkp@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit fbf15046f12d6c8d5821c0dc5bf3ffc55a132243:

  ARM: dts: rockchip: move rk3036 memory definition to board files (2016-04-06 16:30:33 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.7-rockchip-dts32-2

for you to fetch changes up to f87305fa00b1d0633d2dc5fd7fb4995bed6a59e8:

  ARM: dts: rockchip: move the rk3288 thermal data into rk3288.dtsi (2016-04-25 09:52:56 +0200)

----------------------------------------------------------------
This adds the rk3288-miqi as new board, adapts the edp-phy settings
to the binding-change that made it into 4.6, adds rk3288 i2c controller
nodes and moves the rk3288 thermal data into the soc dtsi, as there
really is no need to have that separate file.

----------------------------------------------------------------
Caesar Wang (1):
      ARM: dts: rockchip: move the rk3288 thermal data into rk3288.dtsi

Heiko Stuebner (4):
      ARM: dts: rockchip: make rk3288-grf a simple-mfd
      ARM: dts: rockchip: move rk3288 edp phy under the GRF
      dt-bindings: add vendor-prefix for mqmaker
      ARM: dts: rockchip: add MiQi board from mqmaker

Yakir Yang (1):
      ARM: dts: rockchip: add i2c nodes for RK3228 SoCs

 Documentation/devicetree/bindings/arm/rockchip.txt |   4 +
 .../devicetree/bindings/vendor-prefixes.txt        |   1 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/rk3228.dtsi                      |  80 ++++
 arch/arm/boot/dts/rk3288-miqi.dts                  | 472 +++++++++++++++++++++
 arch/arm/boot/dts/rk3288-thermal.dtsi              | 118 ------
 arch/arm/boot/dts/rk3288.dtsi                      |  92 +++-
 7 files changed, 639 insertions(+), 129 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-miqi.dts
 delete mode 100644 arch/arm/boot/dts/rk3288-thermal.dtsi
