From: Yunzhi Li <lyz@rock-chips.com>
Subject: Re: [PATCH v1 1/3] usb: dwc2: reset AHB hclk domain before init
Date: Tue, 18 Aug 2015 17:44:43 +0800
Message-ID: <55D2FE8B.9040302@rock-chips.com>
References: <1439279787-26674-1-git-send-email-lyz@rock-chips.com> <2B3535C5ECE8B5419E3ECBE300772909017528DC44@US01WEMBX2.internal.synopsys.com> <55CD6078.8010502@rock-chips.com> <2B3535C5ECE8B5419E3ECBE300772909017528F2F9@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE300772909017528F2F9@US01WEMBX2.internal.synopsys.com>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, "jwerner@chromium.org" <jwerner@chromium.org>, "dianders@chromium.org" <dianders@chromium.org>
Cc: "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "cf@rock-chips.com" <cf@rock-chips.com>, "hl@rock-chips.com" <hl@rock-chips.com>, "wulf@rock-chips.com" <wulf@rock-chips.com>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi John,

在 2015/8/15 3:41, John Youn 写道:
> On 8/13/2015 8:29 PM, Yunzhi Li wrote:
>>
>> 在 2015/8/14 8:09, John Youn 写道:
>>> On 8/11/2015 12:57 AM, Yunzhi Li wrote:
>>>> We initiate dwc2 usb controller in BIOS, when kernel driver
>>>> start-up we should reset AHB hclk domain to reset all AHB
>>>> interface registers to default. Without this the FIFO value
>>>> setting might be incorrect because calculating FIFO size need the
>>>> power-on value of GRXFSIZ/GNPTXFSIZ/HPTXFSIZ registers.
>>>>
>>>> This patch could avoid warnning massage like in rk3288 platform:
>>>> [    2.074764] dwc2 ff580000.usb: 256 invalid for
>>>> host_perio_tx_fifo_size. Check HW configuration.
>>>>
>>>> ......
>>> I didn't receive the other two patches in this series so I was
>>> confused about where the "ahb_reset" was coming from when I
>>> replied to your other patch.
>>>
>>> I see you changed the name and documented the DT so never mind.
>>>
>>> Another thing is that there probably shouldn't be a debug
>>> message on the IS_ERR condition since that is the common case
>>> and of no interest to other platforms.
>>>
>>> The other two resets you added aren't used by the driver
>>> anywhere right? Maybe those should be left out until they are.
>>>
>>> John
>>>
>> Hi John ,
>>
>>    Here is the other two patches :
>>      https://patchwork.kernel.org/patch/6989541/
>>      https://patchwork.kernel.org/patch/6989531/
>>
>>    ahb_reset is hreset_n signal of dwc2 IP. Our rk3288 SoC implement 
>> connect this signal to a special
>> register in clock ang reset unit (CRU) module, set this register will 
>> reset dwc2 control and status registers(CSR)
>> to default value. You could find more info in <<DesignWare Cores USB 2.0 
>> Hi Speed On-TheGo (OTG) Databook 3.10a>>
>> 4.4.1 System Clock and Reset Signals.
>>
>>    Our problem is that dwc2_get_hwparams() reads fifo size registers and 
>> reguards it as the power-on reset value,
>> then dwc2_set_param_host_perio_tx_fifo_size() will check this value and 
>> make sure the new fifo size value is no bigger
>> than the power-on reset value. But we init and set these fifo registers 
>> in BIOS, so here hw->xxx_fifo_size is not the
>> real power-on reset vaule. So we hope to reset CSR before 
>> dwc2_get_hwparams().
>>
>> I have another ideal: we might use GRSTCTL.CSftRst instead of hreset_n 
>> to reset dwc2 CSR.
>
> Yes, please try doing that before calling dwc2_get_hwparams().
> Maybe by calling dwc2_core_reset(). If that works for you, I think
> it would be better.
>
> John
>
>
It works and please help review the new patch.
Thanks.
