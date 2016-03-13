From: Shawn Lin <shawn.lin@kernel-upstream.org>
Subject: Re: [PATCH 3/7] clk: rockchip: release io resource when
 rk3036_clk_init failed
Date: Sun, 13 Mar 2016 09:49:40 +0800
Message-ID: <56E4C734.6010702@kernel-upstream.org>
References: <1457799871-3015-1-git-send-email-shawn.lin@rock-chips.com>
 <1457799925-3142-1-git-send-email-shawn.lin@rock-chips.com>
 <8447746.miDbEHA5rR@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <8447746.miDbEHA5rR@diego>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Xing Zheng <zhengxing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

=E5=9C=A8 2016/3/13 0:48, Heiko St=C3=BCbner =E5=86=99=E9=81=93:
> Hi Shawn,
>
> Am Sonntag, 13. M=C3=A4rz 2016, 00:25:25 schrieb Shawn Lin:
>> We should call iounmap to relase reg_base since it's not going
>> to be used any more.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> I see that change for rk3036, rk3188(+rk3066) and rk3368.
> But it looks like rk3228 and rk3288 should also get that, or am I jus=
t
> overlooking something?

My fault, we need to do that for 3228/3288 as well.
Sorry for my slippy finger. I assign wrong patch-numbers to my
script.

I will squash up patch[3/7],[4/7],[5/7] as well as for 3228/3288, and
resend a separate patch for it.

>
> Also, I think we can fold these changes into one patch, as it's the c=
ompletely
> same addition for all clock-drivers.
>
>
> Heiko
>
>> ---
>>
>>   drivers/clk/rockchip/clk-rk3036.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/clk/rockchip/clk-rk3036.c
>> b/drivers/clk/rockchip/clk-rk3036.c index 8c683cc..284c36f 100644
>> --- a/drivers/clk/rockchip/clk-rk3036.c
>> +++ b/drivers/clk/rockchip/clk-rk3036.c
>> @@ -453,6 +453,7 @@ static void __init rk3036_clk_init(struct device=
_node
>> *np) ctx =3D rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
>>   	if (IS_ERR(ctx)) {
>>   		pr_err("%s: rockchip clk init failed\n", __func__);
>> +		iounmap(reg_base);
>>   		return;
>>   	}
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>

