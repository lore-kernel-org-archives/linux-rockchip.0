From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/4] Add basic dts support for RK3308
Date: Mon, 21 Oct 2019 16:44:37 +0800
Message-ID: <20191021084437.28279-1-andy.yan@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: kever.yang@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

RK3308 is a quad Cortex A35 based SOC with rich audio
interfaces(I2S/PCM/TDM/PDM/SPDIF/VAD/HDMI ARC), which
designed for intelligent voice interaction and audio
input/output processing.

As the clk and pinctrl drivers are landed, we post
the basic dts support, make it convenient for other
module development.

Changes in v2:
- Address Heiko's comments in V1
- Split with the dts file
- Split binding to a separate patch
- Power tree update.

Andy Yan (4):
  dt-bindings: Add doc about rk3308 General Register Files
  arm64: dts: rockchip: Add core dts for RK3308 SOC
  dt-bindings: Add doc for rk3308-evb
  arm64: dts: rockchip: Add basic dts for RK3308 EVB

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/soc/rockchip/grf.txt  |   11 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts   |  230 +++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 1838 +++++++++++++++++
 5 files changed, 2085 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308.dtsi

-- 
2.17.1
