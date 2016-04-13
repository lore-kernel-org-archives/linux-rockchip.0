From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 4/4] Rockchip dts64 updates for v4.7 - part1
Date: Wed, 13 Apr 2016 11:23:27 +0200
Message-ID: <1589677.M9RIAByWYp@diego>
References: <2557248.QNyQ7BnmgO@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2557248.QNyQ7BnmgO@diego>
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

The following changes since commit f55532a0c0b8bb6148f4e07853b876ef73bc69ca:

  Linux 4.6-rc1 (2016-03-26 16:03:24 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v4.7-rockchip-dts64-1

for you to fetch changes up to 40ac568d0ef07b60ba8cc0f2e88ccdd4dd0e176a:

  Documentation: devicetree: rockchip: Document rk3368-GeekBox (2016-03-31 =
19:00:09 +0200)

----------------------------------------------------------------
This contains the rk3368-geekbox as new board, mailbox device
nodes for the core rk3368 and some cleanups for gpio-keys,
mmc and tsadc.

----------------------------------------------------------------
Andreas F=E4rber (4):
      dt-bindings: Add vendor prefix for GeekBuying.com
      arm64: dts: rockchip: Clean up gpio-keys nodes
      arm64: dts: rockchip: Add rk3368 GeekBox dts
      Documentation: devicetree: rockchip: Document rk3368-GeekBox

Caesar Wang (2):
      arm64: dts: rockchip: fix the incorrect otp-out pin on rk3368
      arm64: dts: rockchip: Add rk3368 mailbox device nodes

Shawn Lin (1):
      arm64: dts: rockchip: remove broken-cd from emmc and sdio

 Documentation/devicetree/bindings/arm/rockchip.txt |   4 +
 .../devicetree/bindings/vendor-prefixes.txt        |   1 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi       |   8 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    | 319 +++++++++++++++++=
++++
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |   8 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  16 +-
 7 files changed, 345 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
