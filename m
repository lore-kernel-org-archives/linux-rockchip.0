From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v6 0/7] ARM: dts: rockchip: Radxa Rock Pi N8 initial support
Date: Wed, 15 Jul 2020 14:04:11 +0530
Message-ID: <20200715083418.112003-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier
board for making Rock PI N8 SBC.

Changes for v6:
- spilt the trivial patch into multiple patches
- collect Rob review tag
Changes for v5:
- drop redundent hym8563_int pin in rk3399pro dtsi
Changes for v4:
- move i2c2 from carrier board to rk3399pro dtsi
Changes for v3:
- move hym8563_int pin to rk3399pro dtsi
Changes for v2:
- add more trivial cleanups
- update commit message

Jagan Teki (7):
  ARM: dts: rockchip: dalang-carrier: Move i2c nodes into SOM
  arm64: dts: rk3399pro: vmarc-som: Fix sorting nodes, properties
  arm64: dts: rk3399pro: vmarc-som: Move supply regulators into Carrier
  arm64: dts: rk3399pro: vmarc-som: Move common properties into Carrier
  dt-bindings: arm: rockchip: Add Rock Pi N8 binding
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts       |  17 ++
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 270 ++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  67 +++--
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |   6 +-
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |  92 +++---
 7 files changed, 376 insertions(+), 83 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/boot/dts/rk3288-vmarc-som.dtsi

-- 
2.25.1
