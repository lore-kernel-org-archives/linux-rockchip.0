From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH v5 0/1] Add rga to rk322x device tree
Date: Sun, 19 Apr 2020 12:51:32 +0000
Message-ID: <20200419125134.29923-1-justin.swartz@risingedge.co.za>
References: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This patchset aims to enable use of Rockchip's RGA, a 2D raster
graphic acceleration unit, on rk322x based devices.

Changes in v5:
  - Remove the patch to rockchip-rga device tree binding documentation
    as Johan Jonker has already included mention of "rockchip,rk3228-rga"
    since the conversion to YAML.

  - Remove the assignment of "disabled" to the rga "status" attribute
    in rk322x.dtsi, as Heiko Stuebner has said:
      "no status for soc internal components without any board-specifics"

  - Remove the now unnecessary patch to enable rga for the rk3229-xms6
    board.

Changes in v4:
  - Add a compatible value entry for the rk3228 to the rockchip-rga
    device tree binding documentation.

Changes in v3:
  - Relocate rga node to the correct position in rk322x.dtsi, as
    indicated by Johan Jonker.

Changes in v2:
  - Remove unnecessary "rockchip,rk3228-rga" device tree compatibility
    string patch, as advised by Ezequiel Garcia.

  - Use both "rockchip,rk3228-rga" and "rockchip,rk3288-rga" in the
    rga node's compatibility property, as suggested by Heiko Stuebner.

Justin Swartz (1):
  ARM: dts: rockchip: add rga node for rk322x

 arch/arm/boot/dts/rk322x.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)
