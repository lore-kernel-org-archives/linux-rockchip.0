From: Chanwoo Choi <cwchoi00@gmail.com>
Subject: Re: [v6 PATCH 1/6] extcon: Add Type-C and DP support
Date: Sat, 23 Jul 2016 11:19:21 +0900
Message-ID: <CAGTfZH1FvSYfjDijOGY9DCWD6-_OP1mA+-q2n17EWHXRY2Pgeg@mail.gmail.com>
References: <1469106808-28297-1-git-send-email-zyw@rock-chips.com>
 <CGME20160721131520epcas1p402684ff2569a23d7e5e011da9fb07667@epcas1p4.samsung.com>
 <1469106808-28297-2-git-send-email-zyw@rock-chips.com> <5791E769.9060403@samsung.com>
 <CABXOdTe-xtfjBKOPE_EuqBai835V6NiMzUUoJZJZUEuP415xqQ@mail.gmail.com>
Reply-To: chanwoo@kernel.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CABXOdTe-xtfjBKOPE_EuqBai835V6NiMzUUoJZJZUEuP415xqQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <groeck@google.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>, Chris Zhong <zyw@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, wulf <wulf@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

2016-07-23 3:21 GMT+09:00 Guenter Roeck <groeck@google.com>:
> Hi,
>
> On Fri, Jul 22, 2016 at 2:29 AM, Chanwoo Choi <cw00.choi@samsung.com> wrote:
>> Hi Chris,
>>
>> I'm sorry for late reply. I finished the first draft to support the extcon property.
>> You can check the patches[1]. But, I need more time to test it. After tested it,
>> I'll send the patches.
>>
>> [1] https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/log/?h=extcon-test
>>
>> Chanwoo Choi (4):
>>   extcon: Add the extcon_type to group each connector into five category
>>   extcon: Add the support for extcon property according to type of connector
>>   extcon: Rename the extcon_set/get_state() to maintain the function naming pattern
>>   extcon: Add the sync APIs to support the  notification for extcon property
>>
>> Chris Zhong (1):
>>   extcon: Add EXTCON_DISP_DP and the property for USB Type-C
>>
>
> Couple of comments:
>
> - In extcon.c, line 560: 'state' is unused.
>
> - extcon_set_property(edev, EXTCON_USB, EXTCON_USB_VBUS, 0);
>   does not work. As written, it has to be something like:

you shoud use the 'union extcon_property_valu' as below.

>
>   union extcon_property_value prop;
>   ...
>   prop.intval = vbus_state;
>   extcon_set_property(edev, EXTCON_USB, EXTCON_USB_VBUS, prop);
>
> - For USB, the state of EXTCON_USB, EXTCON_USB_HOST, and
> EXTCON_DISP_DP tend to change at the same time, together with the
> associated properties.
>   It might be desirable to have an equivalent of extcon_sync_all(edev);

Each external connector has the separate notifier independently.
All of operation in extcon should be done by each external connector unit.

I think that extcon_sync_all() is not appropriate. If the some extcon device
support the many connectors, maybe extcon send the un-needed notifications
for all connectors.

Also, extcon_sync_all(edev) is same operation with follwoing three
function calls:
extcon_sync(edev, EXTCON_USB);
extcon_sync(edev, EXTCON_USB_HOST);
extcon_sync(edev, EXTCON_DISP_DP);

Also,
EXTCON_DISP_DP has the both EXTCON_TYPE_USB and EXTCON_TYPE_DISP.
So, the extcon client driver is able to set the vbus property with
EXTCON_DISP_DP as following:
- extcon_set_property(edev, EXTCON_DISP_DP, EXTCON_USB_VBUS, prop)

Thanks,
Chanwoo Choi
