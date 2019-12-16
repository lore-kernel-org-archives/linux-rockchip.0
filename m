From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/4] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Mon, 16 Dec 2019 23:17:07 +0530
Message-ID: <20191216174711.17856-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Akash Gajjar <akash@openedev.com>, Tom Cubie <tom@radxa.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
on SOM + Carrier board combination.

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Dalang carrier board from Radxa.

patch 0001: dt-bindings for Rock Pi N10

patch 0002: VMARC RK3399Pro SOM dtsi support

patch 0003: Radxa Dalang carrier board dtsi support

patch 0004: Rock Pi N10 dts support

Tested basic peripherals and will all more in future patches.

Any inputs?
Jagan.

Jagan Teki (4):
  dt-bindings: arm: rockchip: Add Rock Pi N10 binding
  arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
  ARM: dts: rockchip: Add Radxa Dalang Carrier board
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  81 +++++
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 333 ++++++++++++++++++
 5 files changed, 438 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi

-- 
2.18.0.321.gffc6fa0e3
