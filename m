From: Zhang Qing <zhangqing@rock-chips.com>
Subject: [PATCH v1 0/3] clk: rockchip: rk3368: fix some error for rk3368 clk
Date: Mon, 25 Jan 2016 08:55:59 -0800
Message-ID: <1453740962-8556-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: heiko@sntech.de, zhengxing@rock-chips.com, xf@rock-chips.com
Cc: mturquette@baylibre.com, sboyd@codeaurora.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, zhangqing <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: zhangqing <zhangqing@rock-chips.com>

modify edp_24m parent select bit.
enable CLK_SET_RATE_PARENT flag for spdif_8ch and i2s_2ch.

zhangqing (3):
  clk: rockchip: rk3368: fix edp_24m parent
  clk: rockchip: rk3368: enable the CLK_SET_RATE_PARENT flag for
    spdif_8ch
  clk: rockchip: rk3368: enable the CLK_SET_RATE_PARENT flag for i2s_2ch

 drivers/clk/rockchip/clk-rk3368.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

-- 
1.9.1


