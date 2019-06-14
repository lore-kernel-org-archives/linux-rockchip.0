From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/4] hdmi on rk3229
Date: Fri, 14 Jun 2019 18:54:50 +0200
Message-ID: <20190614165454.13743-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, justin.swartz@risingedge.co.za, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The hdmiphy needs its clock reparented to the actual hdmiphy-pll
that gets generated in the hdmiphy itself.

This incorporates adapted versions of Justin's original patches
and also the needed clock adaptions to make it possible to
reparent the hdmiphy clock.

Heiko Stuebner (2):
  clk: rockchip: add clock id for hdmi_phy special clock
  clk: rockchip: export HDMIPHY clock

Justin Swartz (2):
  ARM: dts: rockchip: add display nodes for rk322x
  ARM: dts: rockchip: fix vop iommu-cells on rk322x

 arch/arm/boot/dts/rk322x.dtsi          | 85 +++++++++++++++++++++++++-
 drivers/clk/rockchip/clk-rk3228.c      |  2 +-
 include/dt-bindings/clock/rk3228-cru.h |  1 +
 3 files changed, 86 insertions(+), 2 deletions(-)

-- 
2.20.1
