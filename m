From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [RESEND PATCH 0/1] add multiple clock handling for dwc2 driver
Date: Mon, 6 Feb 2017 09:40:35 +0800
Message-ID: <a573a8d1-7df8-24cd-1291-4dfdc8068f18@rock-chips.com>
References: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com>
 <3508420.z4eX5F6ytJ@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <3508420.z4eX5F6ytJ@phil>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, elaine.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2017/2/5 17:41, Heiko Stuebner wrote:
> Hi Frank,
>
> Am Sonntag, 5. Februar 2017, 10:51:00 CET schrieb Frank Wang:
>> The original posting on Jan 19th have not received any responses, so I
>> resend them.
>>
>> The Current default dwc2 just handle one clock named otg, however, it may
>> have two or more clock need to manage for some new SoCs(such as RK3328), so
>> this adds change clk to clk's array of dwc2_hsotg to handle more clocks
>> operation.
> can you please give a bit more detail on the specific layout.
>
> I guess you're talking about hclk_otg_pmu, right? What component does it
> supply, because I didn't find anything in the partial TRM in the PMU section
> relating to the "otg".

Yes, it is hclk_otg_pmu.

The rock-chip hclk_otg_pmu is an input clock for dwc2 PMU module which 
named pmu_hclk in chapter 2.4 of dwc otg databook v3.10.
Please refer to the following simple clock tree from CRU part of rk3328 
TRM.
                                  _ _ _ ...
                                 |
                                 |- - -> G19_8 - - - hclk_otg - - - - - - ->
hclk_peri_pre - - ->|
|- - -> G19_9 - - - hclk_otg_pmu - - ->
                                 |_ _ _ ...

BR.
Frank

> This meant to make sure, you're actually controlling some part of the dwc2
> with that second/third/... clock and not some separate component.
>
>
> Heiko
>
>
>


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
