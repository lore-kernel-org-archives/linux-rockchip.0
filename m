From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH v2 0/2] Add rga to rk322x device tree
Date: Tue, 21 Jan 2020 20:11:44 +0000
Message-ID: <20200121201146.18038-1-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This patchset aims to enable use of Rockchip's RGA, a 2D raster
graphic acceleration unit, on rk322x based devices.

Changes in v2:
  - Remove unnecessary "rockchip,rk3228-rga" device tree compatibility
    string patch, as advised by Ezequiel Garcia.

  - Use both "rockchip,rk3228-rga" and "rockchip,rk3288-rga" in the
    rga node's compatibility property, as suggested by Heiko Stuebner.

Justin Swartz (2):
  ARM: dts: rockchip: add rga node for rk322x
  ARM: dts: rockchip: enable rga for rk3229-xms6

 arch/arm/boot/dts/rk3229-xms6.dts |  4 ++++
 arch/arm/boot/dts/rk322x.dtsi     | 11 +++++++++++
 2 files changed, 15 insertions(+)

-- 
2.11.0
