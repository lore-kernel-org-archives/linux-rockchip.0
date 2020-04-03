From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2 0/9] move Rockchip ISP bindings out of staging / add ISP DT nodes for RK3399
Date: Fri,  3 Apr 2020 13:15:29 -0300
Message-ID: <20200403161538.1375908-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, kishon@ti.com
List-Id: linux-rockchip.vger.kernel.org

Move the bindings out of drivers/staging and place them in
Documentation/devicetree/bindings instead.

Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
and make ARCH=arm64 dt_binding_check.

Tested by verifying images streamed from RockPi 4 board with imx219
module.

Changes in v2:
Add patches modifying bindings, as sugested by Johan Jonker in v1,
before moving them out of staging.

Johan, I added a Suggested-by tag in the commits, please let me know if
you prefer not having the tag there.

Helen Koike (7):
  media: staging: dt-bindings: rkisp1: add missing required nodes
  media: staging: dt-bindings: rkisp1: add required items in i2c example
  media: staging: dt-bindings: rkisp1: re-order properties
  media: staging: dt-bindings: phy-rockchip-dphy-rx0: remove non-used
    reg property
  dt-bindings: phy: phy-rockchip-dphy-rx0: move rockchip dphy rx0
    bindings out of staging
  dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging
  media: MAINTAINERS: rkisp1: add path to dt-bindings

Shunqian Zheng (2):
  arm64: dts: rockchip: add rx0 mipi-phy for rk3399
  arm64: dts: rockchip: add isp0 node for rk3399

 .../bindings/media/rockchip-isp1.yaml         | 45 ++++++++++++-------
 .../bindings/phy/rockchip-mipi-dphy-rx0.yaml  |  3 --
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 38 ++++++++++++++++
 4 files changed, 68 insertions(+), 19 deletions(-)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (91%)
 rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (98%)

-- 
2.26.0
