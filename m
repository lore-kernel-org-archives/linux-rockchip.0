From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 0/4] ARM: dts: rockchip: add initial support for rk3288
 Chrome-devices
Date: Sat, 11 Jul 2015 02:29:18 +0200
Message-ID: <1436574562-16308-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: khilman-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This adds the basic support for two RK3288 Chrome-devices.
Of course the internal display does not yet work, because we're
missing the edp driver in mainline currently.
But we're nevertheless able to boot to a rootfs on the devices.


Alexandru M Stan (2):
  ARM: dts: rockchip: add shared rk3288-veyron files
  ARM: dts: rockchip: add veyron-jerry board

Chris Zhong (1):
  ARM: dts: Add sbs-battery dts fragment used by chromebooks

Heiko Stuebner (1):
  ARM: dts: rockchip: add Pinky board

 Documentation/devicetree/bindings/arm/rockchip.txt |  12 +
 arch/arm/boot/dts/Makefile                         |   4 +-
 arch/arm/boot/dts/cros-ec-sbs.dtsi                 |  18 +
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi    | 234 +++++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts          | 199 +++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts          | 128 +++++
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi         | 122 +++++
 arch/arm/boot/dts/rk3288-veyron.dtsi               | 583 +++++++++++++++++++++
 8 files changed, 1299 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/cros-ec-sbs.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-jerry.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-pinky.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron.dtsi

-- 
2.1.4
