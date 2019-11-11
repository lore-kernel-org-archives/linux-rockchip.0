From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/2] Rockchip dts64 changes for 5.5 - round 2
Date: Mon, 11 Nov 2019 01:43:22 +0100
Message-ID: <12204771.K8DX0fml49@phil>
References: <1926436.N9mSsAMzn9@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1926436.N9mSsAMzn9@phil>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, soc-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit d083ce427947bbf10358e4c12bf20f288ee6b3df:

  include: dt-bindings: rockchip: mark RK_FUNC defines as deprecated (2019-10-16 21:40:54 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts64-2

for you to fetch changes up to 75aa567803b15e679432655badf95cd30b66b930:

  arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc (2019-11-09 02:15:22 +0100)

----------------------------------------------------------------
One new soc the rk3308 with quad-Cortex-A35 cores.
New boards are Beelink A1, roc-rk3308-cc, rk3308-evb
A big number of improvements for the rk3399-roc-pc board
(support for M.2 variant, reworked power-tree, buttons, leds)
and further improvements of the px30-evb (usb2phy, otp controller,
removal of default optee node - optee does add its own when loaded)
And finally rk3328 audio support, sdmmc detection fix and enabled
of the gpu on rk3399-puma.

----------------------------------------------------------------
Andy Yan (6):
      dt-bindings: Add doc about rk3308 General Register Files
      arm64: dts: rockchip: Add core dts for RK3308 SOC
      dt-bindings: Add doc for rk3308-evb
      arm64: dts: rockchip: Add basic dts for RK3308 EVB
      dt-bindings: Add doc for Firefly ROC-RK3308-CC board
      arm64: dts: rockchip: Add devicetree for board roc-rk3308-cc

Heiko Stuebner (5):
      arm64: dts: rockchip: add px30 otp controller
      arm64: dts: rockchip: enable gpu on rk3399-puma
      arm64: dts: rockchip: remove px30 default optee node
      arm64: dts: rockchip: add usb2phy for px30
      arm64: dts: rockchip: enable usb2phy on px30-evb

Markus Reichl (5):
      arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc
      arm64: dts: rockchip: Add nodes for buttons on rk3399-roc-pc
      arm64: dts: rockchip: Add vcc_sys enable pin on rk3399-roc-pc
      arm64: dts: rockchip: Rework voltage supplies for regulators on rk3399-roc-pc
      arm64: dts: rockchip: Split rk3399-roc-pc for with and without mezzanine board.

Peter Geis (2):
      dt-bindings: clean up rockchip grf binding document
      arm64: dts: rockchip: fix sdmmc detection on boot on rk3328-roc-cc

Robin Murphy (3):
      arm64: dts: rockchip: Add RK3328 audio pipelines
      dt-bindings: ARM: rockchip: Add Beelink A1
      arm64: dts: rockchip: Add Beelink A1

 .../devicetree/bindings/arm/rockchip.yaml          |   19 +-
 .../devicetree/bindings/soc/rockchip/grf.txt       |   17 +-
 arch/arm64/boot/dts/rockchip/Makefile              |    4 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts          |   12 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   74 +-
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts        |  230 +++
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |  188 +++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 1739 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |  359 ++++
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |    1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   32 +
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |    5 +
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |   72 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts     |  670 +-------
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  767 +++++++++
 15 files changed, 3509 insertions(+), 680 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
