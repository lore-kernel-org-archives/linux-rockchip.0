From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] soc: rockchip: power-domain: use clk_bulk APIs
Date: Fri, 02 Mar 2018 16:43:09 +0100
Message-ID: <2683576.o9hXnVZqaR@phil>
References: <20180228124143.8364-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180228124143.8364-1-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dmitry.torokhov@gmail.com, wxt@rock-chips.com, linux-rockchip@lists.infradead.org, Geert Uytterhoeven <geert+renesas@glider.be>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jeffy,

Am Mittwoch, 28. Februar 2018, 13:41:43 CET schrieb Jeffy Chen:
> Use clk_bulk APIs, and also add error handling for clk enable.
> 
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>

[...]

> -	for (i = 0; i < clk_cnt; i++) {
> -		clk = of_clk_get(node, i);
> -		if (IS_ERR(clk)) {
> -			error = PTR_ERR(clk);
> +	pd->num_clks = of_count_phandle_with_args(node, "clocks",
> +						  "#clock-cells");
> +
> +	pd->clks = devm_kzalloc(pmu->dev, pd->num_clks * sizeof(pd->clks[0]),

applied for 4.17, after changing to devm_kcalloc like below:

pd->clks = devm_kcalloc(pmu->dev, pd->num_clks, sizeof(*pd->clks),


Thanks
Heiko
