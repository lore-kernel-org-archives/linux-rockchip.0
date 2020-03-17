From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/2] Rockchip dt32 for 5.7
Date: Tue, 17 Mar 2020 02:01:45 +0100
Message-ID: <7846023.TtVhTo4ACP@phil>
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
As always nothing earth shattering, but a lot fixes for dt-bindings
converted to yaml.

Please pull

Thanks
Heiko

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-dts32-1

for you to fetch changes up to 9b505cf5499071ad4eb2b992d6b42a330b00a3ff:

  ARM: dts: rockchip: remove #address-cells and #size-cells from i2s nodes (2020-03-17 01:24:06 +0100)

----------------------------------------------------------------
Improvements for the rk3288-vyasa board and a lot of cleanups from
verifying devicetrees against new yaml bindings.

----------------------------------------------------------------
Jagan Teki (3):
      ARM: dts: rockchip: Fix vcc10_lcd name and voltage for rk3288-vyasa
      ARM: dts: rockchip: Fix ddc-i2c-bus for rk3288-vyasa
      ARM: dts: rockchip: Add vcc50_hdmi for rk3288-vyasa

Johan Jonker (20):
      ARM: dts: remove g-use-dma from rockchip usb nodes
      ARM: dts: rockchip: add sram to bus_intmem nodename for rv1108
      ARM: dts: rockchip: add sram to bus_intmem nodename for rk3036
      ARM: dts: rockchip: add sram to bus_intmem nodename for rk3288
      ARM: dts: rockchip: add missing model properties
      dt-bindings: arm: fix Rockchip Kylin board bindings
      dt-bindings: arm: add Rockchip rk3036-evb board
      ARM: dts: rockchip: fix vqmmc-supply property name for rk3188-bqedison2qc
      ARM: dts: rockchip: fix rockchip,default-sample-phase property names
      ARM: dts: rockchip: remove #dma-cells from dma client nodes for rv1108
      ARM: dts: add bus to rockchip amba nodenames
      ARM: dts: rockchip: fix lvds-encoder ports subnode for rk3188-bqedison2qc
      ARM: dts: rockchip: rk3xxx: fix L2 cache-controller nodename
      ARM: dts: rockchip: fix vref-supply for &saradc node rk3288 firefly reload
      ARM: dts: rockchip: remove clock-frequency from saradc node rv1108
      ARM: dts: rockchip: swap clocks and clock-names values for spdif nodes
      ARM: dts: rockchip: remove clock-names property from 'generic-ehci' nodes
      ARM: dts: rockchip: remove clock-names property from 'generic-ohci' nodes
      ARM: dts: rockchip: swap clocks and clock-names values for i2s nodes
      ARM: dts: rockchip: remove #address-cells and #size-cells from i2s nodes

Joshua Watt (1):
      ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered during reboot

Katsuhiro Suzuki (1):
      ARM: dts: rockchip: use DMA channels for UARTs for RK3288

 .../devicetree/bindings/arm/rockchip.yaml          |  7 +++++-
 arch/arm/boot/dts/rk3036-kylin.dts                 |  2 +-
 arch/arm/boot/dts/rk3036.dtsi                      |  8 +++---
 arch/arm/boot/dts/rk3066a.dtsi                     | 18 +++++---------
 arch/arm/boot/dts/rk3188-bqedison2qc.dts           | 29 +++++++++++++---------
 arch/arm/boot/dts/rk3188.dtsi                      | 10 +++-----
 arch/arm/boot/dts/rk322x.dtsi                      | 17 ++-----------
 arch/arm/boot/dts/rk3288-evb-act8846.dts           |  1 +
 arch/arm/boot/dts/rk3288-evb-rk808.dts             |  1 +
 arch/arm/boot/dts/rk3288-firefly-reload.dts        |  1 +
 arch/arm/boot/dts/rk3288-r89.dts                   |  1 +
 arch/arm/boot/dts/rk3288-tinker.dtsi               |  1 +
 arch/arm/boot/dts/rk3288-vyasa.dts                 | 28 +++++++++++++++++----
 arch/arm/boot/dts/rk3288.dtsi                      | 26 +++++++++++--------
 arch/arm/boot/dts/rk3xxx.dtsi                      |  4 +--
 arch/arm/boot/dts/rv1108.dtsi                      | 12 ++-------
 16 files changed, 86 insertions(+), 80 deletions(-)
