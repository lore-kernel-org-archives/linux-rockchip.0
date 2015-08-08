From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/2] Rockchip devicetree changes for 4.3, part2
Date: Sat, 08 Aug 2015 23:28:54 +0200
Message-ID: <1647709.GpuDCKf86R@diego>
References: <3109032.sS4ICWceDv@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3109032.sS4ICWceDv@diego>
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

The following changes since commit 4863dcd394019b542ac968870cba734d27e992e0:

  ARM: dts: rockchip: add rk3288 arm-pmu irq affinity (2015-07-16 22:22:47 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.3-rockchip32-dts2

for you to fetch changes up to 378abcdf3297613f6712343ce3a79b7d6abdf955:

  ARM: dts: rockchip: add veyron-minnie board (2015-08-08 12:31:27 +0200)

----------------------------------------------------------------
Some more devicetree changes, including usbphy support for the
Cortex-A9 SoCs and actually enabling usb on the rk3066-marsboard,
Two more veyron-devices - namely Speedy and Minnie and a fix for
the tsadc.
One slightly more interesting fix is the blocking of the last
16MB of memory on 4GB rk3288 devices. The rk3288 cannot use this
area for dma operations, so things like the mmc or usb controllers
regularly fail when trying to read data. This solution mimicks the
solution from the ChromeOS kernel, who also do not seem to have
found a better solution yet. Here it only moves to the devicetree.
As this issue is also present on the arm64 rk3368, any future
better solution to this problem would need to describe this in
the devicetree as well and could then remove this block.

----------------------------------------------------------------
Alexandru M Stan (1):
      ARM: dts: rockchip: add veyron-minnie board

Heiko Stuebner (4):
      ARM: dts: rockchip: set correct dwc2 params for cortex-a9 socs
      ARM: dts: rockchip: add usb phys to Cortex-A9 socs
      ARM: dts: rockchip: enable usb controller on marsboard
      ARM: dts: rockchip: reserve unusable memory region on rk3288

Romain Perier (2):
      ARM: dts: rockchip: Use correct dts properties for tsadc node on veyron
      ARM: dts: rockchip: Add veyron-speedy board

 Documentation/devicetree/bindings/arm/rockchip.txt |  15 ++
 arch/arm/boot/dts/Makefile                         |   4 +-
 arch/arm/boot/dts/rk3066a-marsboard.dts            |  12 ++
 arch/arm/boot/dts/rk3066a-rayeager.dts             |   4 +
 arch/arm/boot/dts/rk3066a.dtsi                     |  22 ++
 arch/arm/boot/dts/rk3188-radxarock.dts             |   4 +
 arch/arm/boot/dts/rk3188.dtsi                      |  22 ++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts         | 226 +++++++++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts         | 155 ++++++++++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi               |   4 +-
 arch/arm/boot/dts/rk3288.dtsi                      |  20 ++
 arch/arm/boot/dts/rk3xxx.dtsi                      |  10 +
 12 files changed, 495 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-minnie.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-speedy.dts
