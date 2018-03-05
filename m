From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] soc: rockchip: power-domain: use clk_bulk APIs
Date: Mon, 5 Mar 2018 17:05:33 +0800
Message-ID: <709dc2eb-e34b-9603-3a49-3e61afb073e4@rock-chips.com>
References: <20180228124143.8364-1-jeffy.chen@rock-chips.com>
 <2683576.o9hXnVZqaR@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2683576.o9hXnVZqaR@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, "Rafael J. Wysocki" <rafael.j.wysocki-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2018/3/2 23:43, Heiko Stuebner wrote:
> Hi Jeffy,
> 
> Am Mittwoch, 28. Februar 2018, 13:41:43 CET schrieb Jeffy Chen:
>> Use clk_bulk APIs, and also add error handling for clk enable.
>>
>> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> [...]
> 
>> -	for (i = 0; i < clk_cnt; i++) {
>> -		clk = of_clk_get(node, i);
>> -		if (IS_ERR(clk)) {
>> -			error = PTR_ERR(clk);
>> +	pd->num_clks = of_count_phandle_with_args(node, "clocks",
>> +						  "#clock-cells");
>> +
>> +	pd->clks = devm_kzalloc(pmu->dev, pd->num_clks * sizeof(pd->clks[0]),

This doesn't work for rk3399, as the pd_vio doesn't have any clocks
attached.

[    0.713241] rockchip-pm-domain 
ff310000.power-management:power-controller: failed to handle node 
pd_vio: -12
[    0.714615] rockchip-pm-domain: probe of 
ff310000.power-management:power-controller failed with error -12


I think Jeffy's v2 is coming, so I assume you will drop this version?


> 
> applied for 4.17, after changing to devm_kcalloc like below:
> 
> pd->clks = devm_kcalloc(pmu->dev, pd->num_clks, sizeof(*pd->clks),
> 
> 
> Thanks
> Heiko
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
> 
