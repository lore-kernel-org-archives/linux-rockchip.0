From: Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [RESEND PATCH 0/1] add multiple clock handling for dwc2 driver
Date: Mon, 6 Feb 2017 10:20:55 +0800
Message-ID: <8c8f6c79-0f07-0460-a7bf-79307faf0f15@rock-chips.com>
References: <eb6931a1-4679-1579-27fe-d444ae84a122@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <eb6931a1-4679-1579-27fe-d444ae84a122@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, kever.yang@rock-chips.com, william.wu@rock-chips.com, elaine.zhang@rock-chips.com, frank.wang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Sorry to reformat the graph.

On 2017/2/6 9:40, Frank Wang wrote:
> Hi Heiko,
>
> On 2017/2/5 17:41, Heiko Stuebner wrote:
>> Hi Frank,
>>
>> Am Sonntag, 5. Februar 2017, 10:51:00 CET schrieb Frank Wang:
>>> The original posting on Jan 19th have not received any responses, so I
>>> resend them.
>>>
>>> The Current default dwc2 just handle one clock named otg, however,
>>> it may
>>> have two or more clock need to manage for some new SoCs(such as
>>> RK3328), so
>>> this adds change clk to clk's array of dwc2_hsotg to handle more clocks
>>> operation.
>> can you please give a bit more detail on the specific layout.
>>
>> I guess you're talking about hclk_otg_pmu, right? What component does it
>> supply, because I didn't find anything in the partial TRM in the PMU
>> section
>> relating to the "otg".
>
> Yes, it is hclk_otg_pmu.
>
> The rock-chip hclk_otg_pmu is an input clock for dwc2 PMU module which
> named pmu_hclk in chapter 2.4 of dwc otg databook v3.10.
> Please refer to the following simple clock tree from CRU part of
> rk3328 TRM.
>                      _ _ _ ...
>                     |
>                     |--> G19_8 --- hclk_otg ------->
> hclk_peri_pre -->    |
>                     |--> G19_9 --- hclk_otg_pmu --->
>                     |_ _ _ ...
>
>
> BR.
> Frank
>
>> This meant to make sure, you're actually controlling some part of the
>> dwc2
>> with that second/third/... clock and not some separate component.
>>
>>
>> Heiko
>>
>>
>>
>
