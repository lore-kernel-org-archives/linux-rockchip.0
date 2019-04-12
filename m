From: =?UTF-8?Q?Christoph_M=c3=bcllner?=
        <christoph.muellner@theobroma-systems.com>
Subject: Re: [PATCH v1 1/6] clk: rockchip: Add supprot to limit input rate for
 fractional divider
Date: Fri, 12 Apr 2019 14:32:08 +0200
Message-ID: <0e47770b-fa20-74f9-8548-c07aebdcaa53@theobroma-systems.com>
References: <1554284549-24916-1-git-send-email-zhangqing@rock-chips.com>
 <8338364.h4JqnAax9Z@diego>
 <818a6e0a-d99b-7350-9c4a-9e0a0d12122a@theobroma-systems.com>
 <3395739.hcHkC3K37q@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3395739.hcHkC3K37q@diego>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org



On 12.04.19 14:21, Heiko Stübner wrote:
> Hi Christoph,
> 
> Am Freitag, 12. April 2019, 14:12:52 CEST schrieb Christoph Müllner:
>> On 12.04.19 13:52, Heiko Stübner wrote:
>>> Am Mittwoch, 3. April 2019, 11:42:24 CEST schrieb Elaine Zhang:
>>>> From: Finley Xiao <finley.xiao@rock-chips.com>
>>>>
>>>> From Rockchips fractional divider usage, some clocks can be generated
>>>> by fractional divider, but the input clock frequency of fractional
>>>> divider should be less than a specified value.
>>>>
>>>> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>>
>>> can you tell me where these maximum input values come from?
>>>
>>> I talked to Christoph from Theobroma (Cc'ed) last week and he mentioned
>>> that they're using the fractional divider with a higher input frequency
>>> to create a very specific frequency [some details are gone from my memory
>>> though] they can't get otherwise.
>>>
>>> So I really don't want to break their working setup by introducing barriers
>>> that are not strictly necessary.
>>>
>>> @Christoph: can you describe the bits from your fractional setup that
>>> I've forgotten please?
>>
>> We need to set the I2S0 clock to 24.56 MHz.
>>
>> When restricting the input frequency to a maximum of 600 Mhz,
>> we could use the integer divider to get 400 Mhz (dividing by 2).
>> However, with the 400 Mhz as input to the frac divider,
>> we run into the problem, that the maximum possible output frequency
>> is 20 MHz (there is another restriction which states that the
>> fraction input : output frequency must be >= 20).
> 
> just for clarification, what is the current input frequency you
> already use sucessfully?

Our working setup uses the integer divider to reduce to 400 MHz
and uses the frac divider to get something near 24.56 MHz.
I have to admit I have never measured what's on the clock line.

>>>
>>>> diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
>>>> index 601a77f1af78..ccabce35580b 100644
>>>> --- a/drivers/clk/rockchip/clk-px30.c
>>>> +++ b/drivers/clk/rockchip/clk-px30.c
>>>> @@ -21,6 +21,7 @@
>>>>  #include "clk.h"
>>>>  
>>>>  #define PX30_GRF_SOC_STATUS0		0x480
>>>> +#define PX30_FRAC_MAX_PRATE		600000000
>>>
>>>
>>>> diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
>>>> index 7c4d242f19c1..67c2da5e7d61 100644
>>>> --- a/drivers/clk/rockchip/clk-rk3368.c
>>>> +++ b/drivers/clk/rockchip/clk-rk3368.c
>>>> @@ -20,6 +20,9 @@
>>>>  #include "clk.h"
>>>>  
>>>>  #define RK3368_GRF_SOC_STATUS0	0x480
>>>> +#define RK3368_I2S_FRAC_MAX_PRATE       600000000
>>>> +#define RK3368_UART_FRAC_MAX_PRATE	600000000
>>>> +#define RK3368_SPDIF_FRAC_MAX_PRATE	600000000
>>>
>>>> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
>>>> index 5a628148f3f0..1d81382bd3e0 100644
>>>> --- a/drivers/clk/rockchip/clk-rk3399.c
>>>> +++ b/drivers/clk/rockchip/clk-rk3399.c
>>>> @@ -21,6 +21,12 @@
>>>>  #include <dt-bindings/clock/rk3399-cru.h>
>>>>  #include "clk.h"
>>>>  
>>>> +#define RK3399_I2S_FRAC_MAX_PRATE       600000000
>>>> +#define RK3399_UART_FRAC_MAX_PRATE	600000000
>>>> +#define RK3399_SPDIF_FRAC_MAX_PRATE	600000000
>>>> +#define RK3399_VOP_FRAC_MAX_PRATE	600000000
>>>> +#define RK3399_WIFI_FRAC_MAX_PRATE	600000000
>>>> +
>>>
>>>
>>>
>>
> 
> 
> 
> 
