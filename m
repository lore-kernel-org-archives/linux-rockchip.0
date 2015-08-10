From: Shunqian Zheng <zhengsq@rock-chips.com>
Subject: Re: [PATCH 3/3] clk: rockchip: do not gate the efuse256 clock
Date: Mon, 10 Aug 2015 16:37:57 +0800
Message-ID: <55C862E5.6000804@rock-chips.com>
References: <1439176963-8969-1-git-send-email-zhengsq@rock-chips.com> <1439176963-8969-4-git-send-email-zhengsq@rock-chips.com> <3117706.qOXm4qX2Wr@diego>
Reply-To: zhengsq@rock-chips.com
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3117706.qOXm4qX2Wr@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, xjq@rock-chips.com, srinivas.kandagatla@linaro.org, caesar.wang@rock-chips.com, maxime.ripard@free-electrons.com
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2015=E5=B9=B408=E6=9C=8810=E6=97=A5 16:08, Heiko St=C3=BCbner wrote:
> Hi,
>
> Am Montag, 10. August 2015, 11:22:43 schrieb Shunqian Zheng:
>> From: ZhengShunQian <zhengsq@rock-chips.com>
>>
>> Always enable the clock of efuse256. Base on the nvmem framework,
>> it seems like there is not a good way to enable the clock
>> when actual needed.
>>
>> Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>
> actually regmap already provides a handle to have a clock for mmio-ba=
sed
> regmaps ... take a look at devm_regmap_init_mmio_clk() [0]
Srinivas also suggested devm_regmap_init_mmio_clk() too, but unfortunat=
ely
mmio uses its own .read/.write callback that not suitable for eFuse.
>
> If this doesn't help, you can also simply clk_get and clk_prepare_ena=
ble the
> clock in your rockchip_efuse_probe() and disable in rockchip_efuse_re=
move().
Sure, I will use this way.
Thank you!!
>
>
> But I certainly don't want to extend the range of clocks magically st=
aying
> enabled through the ccf.
>
>
> Heiko
>
>
> [0] http://lxr.free-electrons.com/source/drivers/base/regmap/regmap-m=
mio.c#L336
>
>
>> ---
>>   drivers/clk/rockchip/clk-rk3288.c      | 2 +-
>>   include/dt-bindings/clock/rk3288-cru.h | 1 +
>>   2 files changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/clk/rockchip/clk-rk3288.c
>> b/drivers/clk/rockchip/clk-rk3288.c index 0df5bae..84d9218 100644
>> --- a/drivers/clk/rockchip/clk-rk3288.c
>> +++ b/drivers/clk/rockchip/clk-rk3288.c
>> @@ -647,7 +647,7 @@ static struct rockchip_clk_branch rk3288_clk_bra=
nches[]
>> __initdata =3D { GATE(0, "pclk_efuse_1024", "pclk_cpu", 0,
>> RK3288_CLKGATE_CON(11), 2, GFLAGS), GATE(PCLK_TZPC, "pclk_tzpc",
>> "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 3, GFLAGS), GATE(PCLK_UART2,
>> "pclk_uart2", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 9, GFLAGS), -	G=
ATE(0,
>> "pclk_efuse_256", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 10, GFLAGS)=
,
>> +	GATE(PCLK_EFUSE256, "pclk_efuse_256", "pclk_cpu", CLK_IGNORE_UNUSE=
D,
>> RK3288_CLKGATE_CON(11), 10, GFLAGS), GATE(PCLK_RKPWM, "pclk_rkpwm",
>> "pclk_cpu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 11, GFLAGS),
>>
>>   	/* ddrctrl [DDR Controller PHY clock] gates */
>> diff --git a/include/dt-bindings/clock/rk3288-cru.h
>> b/include/dt-bindings/clock/rk3288-cru.h index c719aac..ab74d5e 1006=
44
>> --- a/include/dt-bindings/clock/rk3288-cru.h
>> +++ b/include/dt-bindings/clock/rk3288-cru.h
>> @@ -164,6 +164,7 @@
>>   #define PCLK_DDRUPCTL1		366
>>   #define PCLK_PUBL1		367
>>   #define PCLK_WDT		368
>> +#define PCLK_EFUSE256		369
>>
>>   /* hclk gates */
>>   #define HCLK_GPS		448
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
