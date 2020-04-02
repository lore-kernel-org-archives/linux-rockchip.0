From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH 0/4] move Rockchip ISP bindings out of staging / add ISP DT nodes for RK3399
Date: Wed,  1 Apr 2020 21:02:30 -0300
Message-ID: <20200402000234.226466-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com
List-Id: linux-rockchip.vger.kernel.org

Move the bindings out of drivers/staging and place them in
Documentation/devicetree/bindings instead.

Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check

Tested by verifying images streamed from RockPi 4 board with imx219
module.

Helen Koike (2):
  dt-bindings: phy: phy-rockchip-dphy-rx0: move rockchip dphy rx0
    bindings out of staging
  dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging

Shunqian Zheng (2):
  arm64: dts: rockchip: add rx0 mipi-phy for rk3399
  arm64: dts: rockchip: add isp0 node for rk3399

 .../bindings/media/rockchip-isp1.yaml         |  0
 .../bindings/phy/rockchip-mipi-dphy-rx0.yaml  |  0
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 38 +++++++++++++++++++
 3 files changed, 38 insertions(+)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
 rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)

-- 
2.26.0
