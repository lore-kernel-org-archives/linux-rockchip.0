From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v4 0/5] clk: rockchip: Support for some new features
Date: Wed,  4 Dec 2019 16:18:54 +0800
Message-ID: <20191204081859.19454-1-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

1. Support for some new features
2. fix up some error

Chang in V4:
[PATCH v3 1/5] : Update the commit message.

Chang in V3:
[PATCH v2 3/6] : It's been merged
So rebased and resubmit.

Chang in V2:
[PATCH v2 5/6] : fix up the Register error, and add delay.

Elaine Zhang (4):
  clk: rockchip: fix up the frac clk get rate error
  clk: rockchip: add a clock-type for muxes based in the pmugrf
  clk: rockchip: add pll up and down when change pll freq
  clk: rockchip: support pll setting by auto

Finley Xiao (1):
  clk: rockchip: Add supprot to limit input rate for fractional divider

 drivers/clk/rockchip/clk-pll.c    | 236 ++++++++++++++++++++++++++++--
 drivers/clk/rockchip/clk-px30.c   |  29 ++--
 drivers/clk/rockchip/clk-rk3036.c |  13 +-
 drivers/clk/rockchip/clk-rk3128.c |  15 +-
 drivers/clk/rockchip/clk-rk3188.c |  24 +--
 drivers/clk/rockchip/clk-rk3228.c |  18 ++-
 drivers/clk/rockchip/clk-rk3288.c |  19 ++-
 drivers/clk/rockchip/clk-rk3308.c |  46 +++---
 drivers/clk/rockchip/clk-rk3328.c |  17 ++-
 drivers/clk/rockchip/clk-rk3368.c |  17 ++-
 drivers/clk/rockchip/clk-rk3399.c |  32 ++--
 drivers/clk/rockchip/clk-rv1108.c |  14 +-
 drivers/clk/rockchip/clk.c        |  39 ++++-
 drivers/clk/rockchip/clk.h        |  27 +++-
 include/linux/clk-provider.h      |   2 +
 15 files changed, 422 insertions(+), 126 deletions(-)

-- 
2.17.1
