From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/2] Rockchip dt32 for 5.6
Date: Thu, 09 Jan 2020 22:39:42 +0100
Message-ID: <8215452.dU6eVM2tAM@phil>
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

please find below and in the reply Rockchip devicetree changes for 5.6.
As always nothing earth shattering, but quite a bit of progress in some
areas.

Please pull

Thanks
Heiko

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.6-rockchip-dts32-1

for you to fetch changes up to a950c4c63cde7e5c9d849f6ced95f60ed163548d:

  ARM: dts: rockchip: Use ABI name for recovery mode pin on veyron fievel/tiger (2020-01-09 00:22:26 +0100)

----------------------------------------------------------------
Pin-name corrections for Veyron-Fievel, bluetooth for a number of veyron boards and
additional operating points for rk3288-tinker.

----------------------------------------------------------------
Abhishek Pandit-Subedi (1):
      ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron

Jack Chen (1):
      ARM: dts: rockchip: Add missing cpu operating points for rk3288-tinker

Matthias Kaehlcke (2):
      ARM: dts: rockchip: Use ABI name for write protect pin on veyron fievel/tiger
      ARM: dts: rockchip: Use ABI name for recovery mode pin on veyron fievel/tiger

 arch/arm/boot/dts/rk3288-tinker.dtsi               | 13 ++++-
 arch/arm/boot/dts/rk3288-veyron-brain.dts          |  9 ++++
 .../boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi    | 21 --------
 arch/arm/boot/dts/rk3288-veyron-fievel.dts         | 14 +++--
 arch/arm/boot/dts/rk3288-veyron-jaq.dts            | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts          | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts         |  9 ++++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts         | 21 ++++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts          | 22 ++++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts         | 21 ++++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi               | 59 +++-------------------
 12 files changed, 177 insertions(+), 78 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi
