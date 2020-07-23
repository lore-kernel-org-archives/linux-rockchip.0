From: "elaine.zhang" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v1] clk: Export __clk_lookup()
Date: Thu, 23 Jul 2020 09:49:35 +0800
Message-ID: <99eebfa5-e775-37a8-6c76-90ae2444b253@rock-chips.com>
References: <20200722023230.10826-1-zhangqing@rock-chips.com>
 <14639646.VOZsFJ8Tpa@phil>
 <159546549321.3847286.4678382117195983280@swboyd.mtv.corp.google.com>
 <f3e7b8f3-e4d4-9965-703d-aa4b96f50f6d@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <f3e7b8f3-e4d4-9965-703d-aa4b96f50f6d@rock-chips.com>
Content-Language: en-US
Sender: linux-clk-owner@vger.kernel.org
To: Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


在 2020/7/23 上午9:42, elaine.zhang 写道:
>
> 在 2020/7/23 上午8:51, Stephen Boyd 写道:
>> Quoting Heiko Stuebner (2020-07-22 11:26:50)
>>> Hi Elaine,
>>>
>>> Am Mittwoch, 22. Juli 2020, 04:32:30 CEST schrieb Elaine Zhang:
>>>> Export __clk_lookup() to support user built as module.
>>>>
>>>> ERROR:
>>>> drivers/clk/rockchip/clk.ko: In function
>>>> `rockchip_clk_protect_critical':
>>>> drivers/clk/rockchip/clk.c:741:
>>>> undefined reference to `__clk_lookup'
>>> can you elaborate a bit more on why this would be needed?
>>>
>>> Because right now the Rockchip clocks are of course built into
>>> the main kernel image (especially due to them being needed during early
>>> boot) and __clk_lookup actually is a pretty deep part of the clock-
>>> framework itself, as probably also denoted by the "__" in the function
>>> name.
>>>
>> Can you stop using __clk_lookup()? The plan is to remove it.
>
> Rk use  __clk_lookup() as:
>
> drivers/clk/rockchip/clk.c
>
> void __init rockchip_clk_protect_critical(const char *const clocks[],
>                                           int nclocks)
> {
>         int i;
>
>         /* Protect the clocks that needs to stay on */
>         for (i = 0; i < nclocks; i++) {
>                 struct clk *clk = __clk_lookup(clocks[i]);
>
>                 if (clk)
>                         clk_prepare_enable(clk);
>         }
> }
> e.g:
>
> drivers/clk/rockchip/clk-rk3328.c
>
> static const char *const rk3328_critical_clocks[] __initconst = {
>         "aclk_bus",
>         "aclk_bus_niu",
>         "pclk_bus",
>         "pclk_bus_niu",
>         "hclk_bus",
>         "hclk_bus_niu",
>         "aclk_peri",
> ............
>
> };
>
> If have plan to remove the __clk_lookup, I need to replace the 
> rockchip_clk_protect_critical, and use the flag CLK_IS_CRITICAL.(but 
> use flag CLK_IS_CRITICAL, the enable count is always "0")
Use the CLK_IS_CRITICAL, there is no guarantee that the parent clk is 
enabled, So the flag CLK_IS_CRITICAL need to be added to all special 
clks according to the clk tree.
>
>>
>>
