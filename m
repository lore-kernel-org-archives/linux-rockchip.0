From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 00/15] Support more HDMI modes on RK3228/RK3328
Date: Mon, 6 Jan 2020 20:46:00 +0000
Message-ID: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Zheng Yang <zhengyang@rock-chips.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

This series make it possible to use more HDMI modes on RK3328,
and presumably also on RK3228. It also prepares for a future YUV420 and
10-bit output series.

Part of this has been reworked from vendor BSP 4.4 kernel commits.

Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.

Patch 6 filter out any mode having larger width then 3840 pixels,
e.g 4096x2304 modes, since limitations in the scaler code trigger an error
for a large console framebuffer.

Patch 7 prepares for use of high TMDS bit rates used with HDMI2.0 and
10-bit output modes.

Patch 8-14 changes rk3228/rk3328 to use mode_valid functions suited for
the inno hdmi phy instead of the dw-hdmi phy. This

Patch 15 adds support for more pixel clock rates in order to support
common DMT modes in addition to CEA modes.

Note: I have only been able to build test RK322x related changes
as I do not have any RK322x device to test on.

All modes, including fractal modes, has been tested with modetest on
a RK3328 Rock64 device.

  modetest -M rockchip -s 39:3840x2160-29.97

Regards,
Jonas

Algea Cao (1):
  phy/rockchip: inno-hdmi: Support more pre-pll configuration

Huicong Xu (1):
  phy/rockchip: inno-hdmi: force set_rate on power_on

Jonas Karlman (12):
  phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
  phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
  phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write
  drm/rockchip: vop: limit resolution width to 3840
  drm/rockchip: dw-hdmi: allow high tmds bit rates
  drm/rockchip: dw-hdmi: require valid vpll clock rate on rk3228/rk3328
  clk: rockchip: set parent rate for DCLK_VOP clock on rk3228
  arm64: dts: rockchip: increase vop clock rate on rk3328
  arm64: dts: rockchip: add vpll clock to hdmi node on rk3328
  ARM: dts: rockchip: add vpll clock to hdmi node on rk3228
  drm/rockchip: dw-hdmi: limit tmds to 340mhz on rk3228/rk3328
  drm/rockchip: dw-hdmi: remove unused plat_data on rk3228/rk3328

Zheng Yang (1):
  phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate

 arch/arm/boot/dts/rk322x.dtsi                 |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   6 +-
 drivers/clk/rockchip/clk-rk3228.c             |   2 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  47 ++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   |  10 ++
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 110 ++++++++++++------
 6 files changed, 130 insertions(+), 49 deletions(-)

-- 
2.17.1
