From: Zain Wang <wzz@rock-chips.com>
Subject: Re: Some ideas about tcpm driver
Date: Fri, 4 Aug 2017 18:25:59 +0800
Message-ID: <e42944b0-aeb7-2eff-ba1e-957bb73e02dc@rock-chips.com>
References: <c01f3195-ed9f-38c8-63e3-e59138fc9f80@rock-chips.com>
 <CABXOdTf1661zJDnQf1ddqTWYozMMH=vAHbQUVM5LxKZ=vX5Qgg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CABXOdTf1661zJDnQf1ddqTWYozMMH=vAHbQUVM5LxKZ=vX5Qgg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <groeck@google.com>
Cc: Guenter Roeck <groeck@chromium.org>, Yueyao Zhu <yueyao@google.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org



在 2017/8/3 21:02, Guenter Roeck 写道:
> On Thu, Aug 3, 2017 at 12:28 AM, Zain Wang <wzz@rock-chips.com> wrote:
>> Hi all,
>>
>> In recent days, I tested the fusb302 driver with tcpm. (RK3399 evb board)
>> But I found an issues:
>>      There is not a regulator for type-c vbus power-supply in my board.
>>      The vbus is just controlled by a gpio-pin, and unable to support other
>> voltage except 5V.
> gpio-regulator does not work ?
Thanks for you idea， it works well with regulator-gpio.

Zain
>
>>      But now, I can't use fusb302 driver without workaround fix.
>>      Could you fix it in next version? @Yueyao
>>
>> The altmode looks not complete. I can't enter DP Alt Mode now.
> Yes, I know. Patches welcome.
>
>> And we'd like to used extcon function (used in Chrome) to link usb, dp and
>> type-c together.
> Plan is to use the extcon driver (from cros-ec) to register with the
> type-c infrastructure. I have not thought about how to tie low level
> drivers (fusb/tcpm) with extcon. Ideas welcome.
>
> Guenter
>
>> How do you think about it? @Guenter
>>
>> Thanks
>> Zain
>>
>
>
