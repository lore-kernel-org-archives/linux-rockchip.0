From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/3] rockchip: Add Radxa Rock Pi N8 support
Date: Thu, 18 Jun 2020 21:42:17 +0530
Message-ID: <20200618161220.219452-1-jagan@amarulasolutions.com>
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
Cc: Tom Cubie <tom@radxa.com>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier
board for making Rock PI N8 SBC.

All these respective dts patches are in Linux mainling list.

N8 board support TPL boot flow.

Any inputs?
Jagan.

Jagan Teki (3):
  ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi    |  33 ++
 arch/arm/dts/rk3288-rock-pi-n8.dts            |  17 ++
 arch/arm/dts/rk3288-vmarc-som.dtsi            | 289 ++++++++++++++++++
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         |   5 +
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |   2 -
 board/rockchip/evb_rk3288/MAINTAINERS         |   6 +
 configs/rock-pi-n8-rk3288_defconfig           |  66 ++++
 8 files changed, 417 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/dts/rk3288-vmarc-som.dtsi
 create mode 100644 configs/rock-pi-n8-rk3288_defconfig

-- 
2.25.1
