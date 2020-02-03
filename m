From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH v4 0/3] Add rga to rk322x device tree
Date: Mon,  3 Feb 2020 22:30:28 +0000
Message-ID: <cover.1580768038.git.justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Justin Swartz <justin.swartz@risingedge.co.za>
List-Id: linux-rockchip.vger.kernel.org

This patchset aims to enable use of Rockchip's RGA, a 2D raster
graphic acceleration unit, on rk322x based devices.

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

Justin Swartz (3):
  [media] dt-bindings: Add binding for rk3228 rga
  ARM: dts: rockchip: add rga node for rk322x
  ARM: dts: rockchip: enable rga for rk3229-xms6

 Documentation/devicetree/bindings/media/rockchip-rga.txt |  5 +++--
 arch/arm/boot/dts/rk3229-xms6.dts                        |  4 ++++
 arch/arm/boot/dts/rk322x.dtsi                            | 11 +++++++++++
 3 files changed, 18 insertions(+), 2 deletions(-)

-- 
2.11.0
