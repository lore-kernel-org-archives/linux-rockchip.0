From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 0/6] clk: rockchip: Support for some new features
Date: Wed,  3 Apr 2019 17:42:23 +0800
Message-ID: <1554284549-24916-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

1. Support for some new features
2. fix up some error

Elaine Zhang (4):
  clk: rockchip: fix up the frac clk get rate error
  clk: rockchip: add a clock-type for muxes based in the pmugrf
  clk: rockchip: add pll up and down when change pll freq
  clk: rockchip: support pll setting by auto

Finley Xiao (2):
  clk: rockchip: Add supprot to limit input rate for fractional divider
  clk: rockchip: add a COMPOSITE_DIV_OFFSET clock-type

 drivers/clk/rockchip/clk-pll.c    | 234 +++++++++++++++++++++++++++++++++++---
 drivers/clk/rockchip/clk-px30.c   |  29 ++---
 drivers/clk/rockchip/clk-rk3036.c |  13 ++-
 drivers/clk/rockchip/clk-rk3128.c |  15 ++-
 drivers/clk/rockchip/clk-rk3188.c |  24 ++--
 drivers/clk/rockchip/clk-rk3228.c |  18 +--
 drivers/clk/rockchip/clk-rk3288.c |  19 ++--
 drivers/clk/rockchip/clk-rk3328.c |  17 +--
 drivers/clk/rockchip/clk-rk3368.c |  17 +--
 drivers/clk/rockchip/clk-rk3399.c |  32 +++---
 drivers/clk/rockchip/clk-rv1108.c |  14 ++-
 drivers/clk/rockchip/clk.c        |  48 ++++++--
 drivers/clk/rockchip/clk.h        |  50 +++++++-
 include/linux/clk-provider.h      |   2 +
 14 files changed, 423 insertions(+), 109 deletions(-)

-- 
1.9.1
