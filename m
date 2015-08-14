From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v1 1/3] usb: dwc2: reset AHB hclk domain before init
Date: Fri, 14 Aug 2015 19:41:13 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE300772909017528F2F9@US01WEMBX2.internal.synopsys.com>
References: <1439279787-26674-1-git-send-email-lyz@rock-chips.com>
 <2B3535C5ECE8B5419E3ECBE300772909017528DC44@US01WEMBX2.internal.synopsys.com>
 <55CD6078.8010502@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 8/13/2015 8:29 PM, Yunzhi Li wrote:
> 
> 
> 在 2015/8/14 8:09, John Youn 写道:
>> On 8/11/2015 12:57 AM, Yunzhi Li wrote:
>>> We initiate dwc2 usb controller in BIOS, when kernel driver
>>> start-up we should reset AHB hclk domain to reset all AHB
>>> interface registers to default. Without this the FIFO value
>>> setting might be incorrect because calculating FIFO size need the
>>> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
>>>
>>> This patch could avoid warnning massage like in rk3288 platform:
>>> [    2.074764] dwc2 ff580000.usb: 256 invalid for
>>> host_perio_tx_fifo_size. Check HW configuration.
>>>
>>> ......
>> I didn't receive the other two patches in this series so I was
>> confused about where the "ahb_reset" was coming from when I
>> replied to your other patch.
>>
>> I see you changed the name and documented the DT so never mind.
>>
>> Another thing is that there probably shouldn't be a debug
>> message on the IS_ERR condition since that is the common case
>> and of no interest to other platforms.
>>
>> The other two resets you added aren't used by the driver
>> anywhere right? Maybe those should be left out until they are.
>>
>> John
>>
> Hi John ,
> 
>    Here is the other two patches :
>      https://patchwork.kernel.org/patch/6989541/
>      https://patchwork.kernel.org/patch/6989531/
> 
>    ahb_reset is hreset_n signal of dwc2 IP. Our rk3288 SoC implement 
> connect this signal to a special
> register in clock ang reset unit (CRU) module, set this register will 
> reset dwc2 control and status registers(CSR)
> to default value. You could find more info in <<DesignWare Cores USB 2.0 
> Hi Speed On-TheGo (OTG) Databook 3.10a>>
> 4.4.1 System Clock and Reset Signals.
> 
>    Our problem is that dwc2_get_hwparams() reads fifo size registers and 
> reguards it as the power-on reset value,
> then dwc2_set_param_host_perio_tx_fifo_size() will check this value and 
> make sure the new fifo size value is no bigger
> than the power-on reset value. But we init and set these fifo registers 
> in BIOS, so here hw->xxx_fifo_size is not the
> real power-on reset vaule. So we hope to reset CSR before 
> dwc2_get_hwparams().
> 
> I have another ideal: we might use GRSTCTL.CSftRst instead of hreset_n 
> to reset dwc2 CSR.


Yes, please try doing that before calling dwc2_get_hwparams().
Maybe by calling dwc2_core_reset(). If that works for you, I think
it would be better.

John


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
