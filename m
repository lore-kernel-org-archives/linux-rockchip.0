From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2] clk: rockchip: reset init state before mmc card
 initialization
Date: Fri, 4 Sep 2015 07:49:08 +0800
Message-ID: <55E8DC74.3090200@rock-chips.com>
References: <1440462876-5457-1-git-send-email-shawn.lin@rock-chips.com>
 <4930263.TgyPa9P2vP@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <4930263.TgyPa9P2vP@phil>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: shawn.lin@rock-chips.com, Stephen Boyd <sboyd@codeaurora.org>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

=E5=9C=A8 2015/9/4 3:07, Heiko Stuebner =E5=86=99=E9=81=93:
> Am Dienstag, 25. August 2015, 08:34:36 schrieb Shawn Lin:
>> mmc host controller's IO input/output timing is unpredictable if
>> bootloader execute tuning for HS200 mode. It might make kernel faile=
d
>> to initialize mmc card in identification mode. The root cause is
>> tuning phase and degree setting for HS200 mode in bootloader aren't
>> applicable to that of identification mode in kernel stage. Anyway, w=
e
>> can't force all bootloaders to reset tuning phase and degree setting
>> before into kernel. Simply reset it in rockchip_clk_register_mmc.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> I'm not 100% sure why you need the new function instead of having tha=
t
> directly in rockchip_clk_register_mmc, but I guess that is a matter o=
f taste

Thanks, Heiko.
:) That's indeed my taste but might not be appropriate sometimes. Also=20
add it directly into rockchip_clk_register_mmc looks fine to me.

I'm prone to do it as your advice since it can reduce a function call.

> and I don't have a hard opinion on that, so
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>
>>
>> ---
>>
>> Changes in v2:
>> - rename to rockchip_clk_mmc_reset
>> - simplifying the code
>>
>>   drivers/clk/rockchip/clk-mmc-phase.c | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/clk/rockchip/clk-mmc-phase.c
>> b/drivers/clk/rockchip/clk-mmc-phase.c index e9f8df32..1d3e8fe6 1006=
44
>> --- a/drivers/clk/rockchip/clk-mmc-phase.c
>> +++ b/drivers/clk/rockchip/clk-mmc-phase.c
>> @@ -38,6 +38,8 @@ static unsigned long rockchip_mmc_recalc(struct cl=
k_hw
>> *hw, #define ROCKCHIP_MMC_DEGREE_MASK 0x3
>>   #define ROCKCHIP_MMC_DELAYNUM_OFFSET 2
>>   #define ROCKCHIP_MMC_DELAYNUM_MASK (0xff << ROCKCHIP_MMC_DELAYNUM_=
OFFSET)
>> +#define ROCKCHIP_MMC_INIT_STATE_RESET 0x1
>> +#define ROCKCHIP_MMC_INIT_STATE_SHIFT 1
>>
>>   #define PSECS_PER_SEC 1000000000000LL
>>
>> @@ -119,6 +121,14 @@ static const struct clk_ops rockchip_mmc_clk_op=
s =3D {
>>   	.set_phase	=3D rockchip_mmc_set_phase,
>>   };
>>
>> +static void rockchip_clk_mmc_reset(struct rockchip_mmc_clock *mmc_c=
lock)
>> +{
>> +	if (mmc_clock->shift =3D=3D ROCKCHIP_MMC_INIT_STATE_SHIFT)
>> +		writel(HIWORD_UPDATE(ROCKCHIP_MMC_INIT_STATE_RESET,
>> +				     ROCKCHIP_MMC_INIT_STATE_RESET,
>> +				     mmc_clock->shift), mmc_clock->reg);
>> +}
>> +
>>   struct clk *rockchip_clk_register_mmc(const char *name,
>>   				const char *const *parent_names, u8 num_parents,
>>   				void __iomem *reg, int shift)
>> @@ -139,6 +149,12 @@ struct clk *rockchip_clk_register_mmc(const cha=
r *name,
>> mmc_clock->reg =3D reg;
>>   	mmc_clock->shift =3D shift;
>>
>> +	/*
>> +	* Assert init_state to soft reset the CLKGEN
>> +	* for mmc tuning phase and degree
>> +	*/
>> +	rockchip_clk_mmc_reset(mmc_clock);
>> +
>>   	if (name)
>>   		init.name =3D name;
>
>
>
>


--=20
Best Regards
Shawn Lin

