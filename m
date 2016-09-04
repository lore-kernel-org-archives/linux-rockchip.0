From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [v2 PATCH 3/3] clk: rockchip: use the dclk_vop_frac clock ids
Date: Sun, 04 Sep 2016 23:51:12 +0200
Message-ID: <2504148.HshbI1VF8K@phil>
References: <1472786785-2393-1-git-send-email-zyw@rock-chips.com> <1472786785-2393-3-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1472786785-2393-3-git-send-email-zyw@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: dianders@chromium.org, linux-rockchip@lists.infradead.org, zhengxing@rock-chips.com, ykk@rock-chips.com, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 1. September 2016, 20:26:25 CEST schrieb Chris Zhong:
> From: Yakir Yang <ykk@rock-chips.com>
> 
> Export the dclk_vop_frac out, so we can set the dclk_vop as the
> child of dclk_vop_frac, and then we can start to take use of
> the fractional dividers.
> 
> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>

applied to my clk-branch for 4.9
