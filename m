From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 3/3] Rockchip dts64 updates for v4.7 - part2
Date: Fri, 29 Apr 2016 00:25:22 +0200
Message-ID: <14339181.jSmLu3hG44@diego>
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

The following changes since commit 40ac568d0ef07b60ba8cc0f2e88ccdd4dd0e176a:

  Documentation: devicetree: rockchip: Document rk3368-GeekBox (2016-03-31 19:00:09 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.7-rockchip-dts64-2

for you to fetch changes up to 51c454d2610571404917fa027c73048599dc6c3d:

  dt-bindings: document rockchip rk3399-evb board (2016-04-28 22:25:49 +0200)

----------------------------------------------------------------
Adding the new rk3399 core devicetree support as well as a board
dts for the evaluation board of this chip and similar to the arm32
side also move the rk3368 thermal data into the core soc dtsi, as
there really is no need to keep it separate.

----------------------------------------------------------------
Caesar Wang (1):
      arm64: dts: rockchip: move the rk3368 thermal data into rk3368.dtsi

Heiko Stuebner (2):
      clk: rockchip: fix checkpatch errors in rk3399 dt-binding header
      Merge branch 'v4.7-shared/clkids' into v4.7-armsoc/dts64

Jianqun Xu (3):
      arm64: dts: rockchip: add core dtsi file for RK3399 SoCs
      arm64: dts: rockchip: add dts file for RK3399 evaluation board
      dt-bindings: document rockchip rk3399-evb board

Shawn Lin (1):
      dt-bindings: rockchip-dw-mshc: add description for rk3399

Xing Zheng (4):
      clk: rockchip: add dt-binding header for rk3399
      clk: rockchip: add general gpu soft-reset on rk3399
      clk: rockchip: rename rga clock-id on rk3399
      clk: rockchip: export some necessary rk3399 clock ids

 Documentation/devicetree/bindings/arm/rockchip.txt |    6 +-
 .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |    1 +
 arch/arm64/boot/dts/rockchip/Makefile              |    1 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |   66 +-
 .../{rk3368-thermal.dtsi => rk3399-evb.dts}        |  124 +--
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 1013 ++++++++++++++++++++
 include/dt-bindings/clock/rk3399-cru.h             |  755 +++++++++++++++
 7 files changed, 1908 insertions(+), 58 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3368-thermal.dtsi => rk3399-evb.dts} (55%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399.dtsi
 create mode 100644 include/dt-bindings/clock/rk3399-cru.h
