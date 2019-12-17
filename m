From: Akash Gajjar <akash@openedev.com>
Subject: [PATCH 0/2] add usb2-phy support for RK3308 SoC
Date: Tue, 17 Dec 2019 13:27:13 +0530
Message-ID: <20191217075722.11646-1-akash@openedev.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: jagan@openedev.com, tom@radxa.com, kever.yang@rock-chips.com, Akash Gajjar <akash@openedev.com>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add usb2-phy support in RK3308 SoC dtsi
Add usb2-phy support for RK3308 SoC in Rockchip USB driver

- Tested USB2.0 with these patches on RockPiS board and Mainline Linux kernel

Akash Gajjar (2):
  arch: arm64: rockchip: add usb node for RK3308
  phy: phy-rockchip-inno-usb2: add usb2-phy support for RK3308 SoC

 .../bindings/phy/phy-rockchip-inno-usb2.txt   |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 49 +++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++
 3 files changed, 94 insertions(+)

-- 
2.17.1
