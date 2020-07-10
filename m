From: "elaine.zhang" <zhangqing@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: mark pclk_uart2 as critical on rk3328
Date: Fri, 10 Jul 2020 09:28:49 +0800
Message-ID: <02cf9650-eef2-f3d1-4630-38e2d8381847@rock-chips.com>
References: <20200708144528.20465-1-jbx6244@gmail.com>
 <2f58b9df-9bcd-5639-65cc-306a6d36b310@rock-chips.com>
 <68073138-1f94-9d5b-ad48-e82bc538c915@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <68073138-1f94-9d5b-ad48-e82bc538c915@gmail.com>
Content-Language: en-US
Sender: linux-clk-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
List-Id: linux-rockchip.vger.kernel.org


在 2020/7/9 下午8:04, Johan Jonker 写道:
> Hi Elaine, Robin,
>
> Thank you for your help!
> This patch can go in the garbage bin.
> It turns out that with SERIAL_8250 also SERIAL_8250_DW must be
> selected... ;)
>
> It's not in the Kconfig help description.
> Shouldn't that be automatically be included for Rockchip?
> Example:
>
> config SERIAL_8250
> 	tristate "8250/16550 and compatible serial support"
> 	depends on !S390
> 	select SERIAL_CORE
> 	select SERIAL_MCTRL_GPIO if GPIOLIB
> 	select SERIAL_8250_DW if ARCH_ROCKCHIP

Our  Konfig:

config SERIAL_8250
	tristate "8250/16550 and compatible serial support"
	depends on !S390
	select SERIAL_CORE

config SERIAL_8250_DW
         tristate "Support for Synopsys DesignWare 8250 quirks"
         depends on SERIAL_8250

So SERIAL_8250 and SERIAL_8250_DW must be selected.

If you use select SERIAL_8250_DW if ARCH_ROCKCHIP, check the CONIF_ARCH_ROCKCHIP=y.
In our rockchip_defconfig the CONIF_ARCH_ROCKCHIP=y by default.

> Thank Robin for the introduction to FTRACE!
>
> mount -t tracefs tracefs /sys/kernel/tracing
>
> cd /sys/kernel/tracing
>
> # Without SERIAL_8250_DW
>
> /sys/kernel/tracing # cat trace | grep uart2
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_div
>         swapper/0-1     [002] d..1     1.916746: clk_disable: pclk_uart2
>
>
> /sys/kernel/tracing # cat trace | grep uart
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart1_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart1_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart1_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart1_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart0_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart0_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart0_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart0_div
>         swapper/0-1     [002] d..1     1.916746: clk_disable: pclk_uart2
>         swapper/0-1     [002] d..1     1.923959: clk_disable: pclk_uart1
>         swapper/0-1     [002] d..1     1.930741: clk_disable: pclk_uart0
>
> # With SERIAL_8250_DW
>
> /sys/kernel/tracing # cat trace | grep uart2
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_div
>         swapper/0-1     [002] d..1     0.923180: clk_enable: sclk_uart2
>         swapper/0-1     [002] d..1     0.923224: clk_enable: pclk_uart2
>         swapper/0-1     [002] d..1     0.925259: clk_disable: sclk_uart2
>         swapper/0-1     [002] d..1     0.925295: clk_enable: sclk_uart2
>         swapper/0-1     [003] d..1     2.208605: clk_disable: sclk_uart2
>         swapper/0-1     [003] d..1     2.208646: clk_enable: sclk_uart2
>
> /sys/kernel/tracing # cat trace | grep uart
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart2_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart1_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart1_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart1_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart1_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart0_div
>            <idle>-0     [000] d..2     0.000000: clk_enable: clk_uart0_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart0_frac
>            <idle>-0     [000] d..2     0.000000: clk_disable: clk_uart0_div
>         swapper/0-1     [002] d..1     0.920034: clk_enable: sclk_uart0
>         swapper/0-1     [002] d..1     0.920085: clk_enable: pclk_uart0
>       kworker/2:1-32    [002] d..1     0.922596: clk_disable: sclk_uart0
>       kworker/2:1-32    [002] d..1     0.922613: clk_disable: pclk_uart0
>         swapper/0-1     [002] d..1     0.923180: clk_enable: sclk_uart2
>         swapper/0-1     [002] d..1     0.923224: clk_enable: pclk_uart2
>         swapper/0-1     [002] d..1     0.925259: clk_disable: sclk_uart2
>         swapper/0-1     [002] d..1     0.925295: clk_enable: sclk_uart2
>         swapper/0-1     [003] d..1     1.914158: clk_disable: pclk_uart1
>         swapper/0-1     [003] d..1     2.208605: clk_disable: sclk_uart2
>         swapper/0-1     [003] d..1     2.208646: clk_enable: sclk_uart2
>
>
>
> On 7/9/20 3:32 AM, elaine.zhang wrote:
>> 在 2020/7/8 下午10:45, Johan Jonker 写道:
>>> The rk3328 uart2 port is used as boot console and to debug.
>>> During the boot pclk_uart2 is disabled by a clk_disable_unused
>>> initcall. Fix the uart2 function by marking pclk_uart2
>>> as critical on rk3328. Also add sclk_uart2 as that is needed
>>> for the same DT node.
>>>
>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>> ---
>>>    drivers/clk/rockchip/clk-rk3328.c | 2 ++
>>>    1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/clk/rockchip/clk-rk3328.c
>>> b/drivers/clk/rockchip/clk-rk3328.c
>>> index c186a1985..cb7749cb7 100644
>>> --- a/drivers/clk/rockchip/clk-rk3328.c
>>> +++ b/drivers/clk/rockchip/clk-rk3328.c
>>> @@ -875,6 +875,8 @@ static const char *const rk3328_critical_clocks[]
>>> __initconst = {
>>>        "aclk_gmac_niu",
>>>        "pclk_gmac_niu",
>>>        "pclk_phy_niu",
>>> +    "pclk_uart2",
>>> +    "sclk_uart2",
>>>    };
>>>    
>> Not need to mark the uart2 as critical clocks, the uart clk will enabled
>> by uart driver probe(dw8250_probe()).
>>
>> For your question,  Please check the uart2 dts node "status = okay".
>>
>> Or You can send me the complete log, I check the status of uart2.
>>
>>>    static void __init rk3328_clk_init(struct device_node *np)
>>
>
>
>
