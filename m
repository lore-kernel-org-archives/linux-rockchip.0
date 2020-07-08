From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 0/7] rockchip: Add RockPI N8/N10 support
Date: Wed,  8 Jul 2020 15:35:21 +0530
Message-ID: <20200708100528.419035-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>, Tom Cubie <tom@radxa.com>
List-Id: linux-rockchip.vger.kernel.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Dalang carrier board from Radxa.

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

All the required dts(i) files are synced from linux-next
v5.7-rc1 since the current sync available for rk3399 is 
the same.

All the N8 dts patches are in Linux mainling list.

Changes for v2:
- rebase on master
- collect Kever review tags

Any inputs?
Jagan.

Jagan Teki (7):
  arm64: dts: rockchip: Sync v5.7-rc1 rk3399pro.dtsi
  arm64: dts: rockchip: Sync v5.7-rc1 VMARC RK3399Pro SOM
  ARM: dts: rockchip: Sync v5.7-rc1 Radxa Dalang Carrier
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support
  arm64: dts: rockchip: Trivial cleanups for RockPI N10
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 arch/arm/dts/Makefile                         |   4 +-
 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi    |  39 ++
 arch/arm/dts/rk3288-rock-pi-n8.dts            |  17 +
 arch/arm/dts/rk3288-vmarc-som.dtsi            | 261 ++++++++++++++
 .../arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi |   7 +
 arch/arm/dts/rk3399pro-rock-pi-n10.dts        |  18 +
 arch/arm/dts/rk3399pro-u-boot.dtsi            |   6 +
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 339 ++++++++++++++++++
 arch/arm/dts/rk3399pro.dtsi                   |  22 ++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  78 ++++
 board/rockchip/evb_rk3288/MAINTAINERS         |   6 +
 board/rockchip/evb_rk3399/MAINTAINERS         |   6 +
 configs/rock-pi-n10-rk3399pro_defconfig       |  46 +++
 configs/rock-pi-n8-rk3288_defconfig           |  66 ++++
 14 files changed, 914 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/dts/rk3288-vmarc-som.dtsi
 create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm/dts/rk3399pro-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399pro-vmarc-som.dtsi
 create mode 100644 arch/arm/dts/rk3399pro.dtsi
 create mode 100644 arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
 create mode 100644 configs/rock-pi-n10-rk3399pro_defconfig
 create mode 100644 configs/rock-pi-n8-rk3288_defconfig

-- 
2.25.1
