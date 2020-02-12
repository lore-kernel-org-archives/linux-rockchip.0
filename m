From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 1/3] clk: rockchip: convert rk3399 pll type to use readl_poll_timeout
Date: Wed, 12 Feb 2020 13:04:09 +0100
Message-ID: <3214502.EbdgFk5LkT@phil>
References: <20200129163821.1547295-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200129163821.1547295-1-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org, christoph.muellner@theobroma-systems.com, zhangqing@rock-chips.com, robin.murphy@arm.com
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 29. Januar 2020, 17:38:19 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Instead of open coding the polling of the lock status, use the
> handy readl_poll_timeout for this. As the pll locking is normally
> blazingly fast and we don't want to incur additional delays, we're
> not doing any sleeps similar to for example the imx clk-pllv4
> and define a very safe but still short timeout of 1ms.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied all 3 for 5.7 with Stephen's Review
