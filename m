From: "elaine.zhang" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v1] clk: Export __clk_lookup()
Date: Thu, 23 Jul 2020 11:36:17 +0800
Message-ID: <ecff8b61-f16e-c1ca-3b92-9c90867e73a7@rock-chips.com>
References: <20200722023230.10826-1-zhangqing@rock-chips.com>
 <14639646.VOZsFJ8Tpa@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <14639646.VOZsFJ8Tpa@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


ÔÚ 2020/7/23 ÉÏÎç2:26, Heiko Stuebner Ð´µÀ:
> Hi Elaine,
>
> Am Mittwoch, 22. Juli 2020, 04:32:30 CEST schrieb Elaine Zhang:
>> Export __clk_lookup() to support user built as module.
>>
>> ERROR:
>> drivers/clk/rockchip/clk.ko: In function
>> `rockchip_clk_protect_critical':
>> drivers/clk/rockchip/clk.c:741:
>> undefined reference to `__clk_lookup'
> can you elaborate a bit more on why this would be needed?
>
> Because right now the Rockchip clocks are of course built into
> the main kernel image (especially due to them being needed during early
> boot) and __clk_lookup actually is a pretty deep part of the clock-
> framework itself, as probably also denoted by the "__" in the function
> name.

Rockchip clocks are of course support to built as module(to support GKI),These changes will be pushed soon.
In drivers/clk/rockchip/clk.c and drivers/clk/rockchip/clk-cpu.c use the __clk_lookup.

>
>
> Heiko
>
>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>> ---
>>   drivers/clk/clk.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>> index 3f588ed06ce3..600284fbb257 100644
>> --- a/drivers/clk/clk.c
>> +++ b/drivers/clk/clk.c
>> @@ -618,6 +618,7 @@ struct clk *__clk_lookup(const char *name)
>>   
>>   	return !core ? NULL : core->hw->clk;
>>   }
>> +EXPORT_SYMBOL_GPL(__clk_lookup);
>>   
>>   static void clk_core_get_boundaries(struct clk_core *core,
>>   				    unsigned long *min_rate,
>>
>
>
>
>
>
