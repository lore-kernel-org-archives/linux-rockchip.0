From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 2/3] extcon: axp288: Set EXTCON_USB when EXTCON_CHG_USB_SDP
 was set
Date: Wed, 21 Dec 2016 16:59:32 +0900
Message-ID: <585A3664.2080403@samsung.com>
References: <7b9836ce2ca34118a2acd1ea113605a5f13b4439.1482300213.git.baolin.wang@linaro.org>
 <CGME20161221061312epcas5p182c45848e940dc20134ac55091dd8341@epcas5p1.samsung.com>
 <11fb7adc2982a9134faee9abb1de4dcfb253f2d2.1482300213.git.baolin.wang@linaro.org>
 <585A2DBB.8070504@samsung.com>
 <CAMz4ku+YwjBX4ypwrbv=SnhUkHefa2fd4yjExo7qiv6MqqbUOQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <CAMz4ku+YwjBX4ypwrbv=SnhUkHefa2fd4yjExo7qiv6MqqbUOQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Baolin Wang <baolin.wang@linaro.org>
Cc: myungjoo.ham@samsung.com, Chen-Yu Tsai <wens@csie.org>, Kishon <kishon@ti.com>, =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Linaro Kernel Mailman List <linaro-kernel@lists.linaro.org>, Mark Brown <broonie@kernel.org>, NeilBrown <neilb@suse.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 2016년 12월 21일 16:55, Baolin Wang wrote:
> Hi,
> 
> On 21 December 2016 at 15:22, Chanwoo Choi <cw00.choi@samsung.com> wrote:
>> Hi,
>>
>> On 2016년 12월 21일 15:10, Baolin Wang wrote:
>>> According to the documentation, we should set the EXTCON_USB when
>>> one SDP charger connector was reported.
>>>
>>> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>>> ---
>>>  drivers/extcon/extcon-axp288.c |    7 ++++++-
>>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/extcon/extcon-axp288.c b/drivers/extcon/extcon-axp288.c
>>> index 42f41e8..4490726 100644
>>> --- a/drivers/extcon/extcon-axp288.c
>>> +++ b/drivers/extcon/extcon-axp288.c
>>> @@ -102,6 +102,7 @@ enum axp288_extcon_irq {
>>>  };
>>>
>>>  static const unsigned int axp288_extcon_cables[] = {
>>> +     EXTCON_USB,
>>>       EXTCON_CHG_USB_SDP,
>>>       EXTCON_CHG_USB_CDP,
>>>       EXTCON_CHG_USB_DCP,
>>> @@ -225,8 +226,12 @@ static int axp288_handle_chrg_det_event(struct axp288_extcon_info *info)
>>>                       vbus_attach ? USB_EVENT_VBUS : USB_EVENT_NONE, NULL);
>>>       }
>>>
>>> -     if (notify_charger)
>>> +     if (notify_charger) {
>>>               extcon_set_state_sync(info->edev, cable, vbus_attach);
>>> +             if (cable == EXTCON_CHG_USB_SDP)
>>> +                     extcon_set_state_sync(info->edev, EXTCON_USB,
>>> +                                           vbus_attach);
>>> +     }
>>>
>>>       /* Clear the flags on disconnect event */
>>>       if (!vbus_attach)
>>>
>>
>> The extcon-axp288.c driver has some patches on extcon-next[1] branch.
>> [1] https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/log/?h=extcon-next
>>
>> I rework your patch on extcon-next branch as following:
>> If you ok, I'll merge it for v4.11.
> 
> It is okay for me. Thanks.

Applied it. Thanks.

[snip]

-- 
Regards,
Chanwoo Choi
