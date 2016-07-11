From: Chanwoo Choi <cwchoi00@gmail.com>
Subject: Re: [v3 PATCH 1/5] extcon: Add Type-C and DP support
Date: Mon, 11 Jul 2016 23:30:38 +0900
Message-ID: <CAGTfZH0N6p4_GqZKmJfuAzpjmB88AnFR46=x5bpCafx1PaHkVw@mail.gmail.com>
References: <1466686264-6744-1-git-send-email-zyw@rock-chips.com>
 <1466686264-6744-2-git-send-email-zyw@rock-chips.com> <CAGTfZH1aKUQH2VH+biyh9pFfU93pV9HH3h5s9zO0rrvXJYCMdA@mail.gmail.com>
 <CABXOdTdHhWTSF6H2D5ubaZsu65dnGsof9NWAFNeWjCir=H91Ag@mail.gmail.com>
 <CAGTfZH1ciu33btOAkwwA+8pUV=5-XDus-Q_wNiv_hwRoLK5dPw@mail.gmail.com> <CABXOdTc27oW3xyeBZbks2r19qZRNDDAVcdOVJWgMff+59vpBPg@mail.gmail.com>
Reply-To: chanwoo@kernel.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CABXOdTc27oW3xyeBZbks2r19qZRNDDAVcdOVJWgMff+59vpBPg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <groeck@google.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>, Chris Zhong <zyw@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Guenter,

2016-07-07 5:22 GMT+09:00 Guenter Roeck <groeck@google.com>:
> Hi,
>
> On Tue, Jun 28, 2016 at 6:40 PM, Chanwoo Choi <cwchoi00@gmail.com> wr=
ote:
>> Hi Guenter,
>>
>> 2016=EB=85=84 6=EC=9B=94 29=EC=9D=BC =EC=88=98=EC=9A=94=EC=9D=BC, Gu=
enter Roeck<groeck@google.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1=ED=95=
=9C =EB=A9=94=EC=8B=9C=EC=A7=80:
>>>
>>> On Tue, Jun 28, 2016 at 5:26 AM, Chanwoo Choi <cwchoi00@gmail.com> =
wrote:
>>> > Hi Chris,
>>> >
>>> > I agree to add the new EXTCON_DISP_DP connector.
>>> > But, other new definition should be discussed.
>>> > - EXTCON_DISP_DP_ALT
>>> > - EXTCON_TYPEC_POLARITY
>>> > - EXTCON_TYPEC_PIN_ASSIGN
>>> >
>>> > I think that TYPEC_POLARITY and TYPEC_PIN_ASSING are not appropri=
ate
>>> > as the new external connector definition. These are the property =
or
>>> > attribute of
>>> > USB connector with C-type.
>>> >
>>> > Also, EXTCON_DISP_DP_ALT is not a new type of connector.
>>> > It is just one of the mode for DP connector.
>>> >
>>> > As I knew, DP alternative mode use the USB connector with C-type.
>>> > So, DP alternative mode can be expressed on following:
>>> >  =3D EXTCON_DISP_DP + EXTCON_USB + some property of USB c-type
>>> >
>>>
>>> Problem is that extcon doesn't support exchanging cable properties
>>> between cable providers (extcon drivers) and consumers, other than
>>> cable states. In order to exchange properties such as polarity and =
pin
>>> assignments, we would need a separate infrastructure. But then the
>>> question would be why to use extcon in the first place.
>>>
>>> If you have a solution for that puzzle, please let us know.
>>>
>>
>> You're right.
>> Current extcon don't support the cable properties.
>> The requirement about cables properties occur such as USB ID and VBU=
S pin.
>> So, I'll support the cable properties in extcon framework and send t=
he
>> patches within this week.
>>
>
> Did you have time to look into this ? Any idea if/when you will send
> the patches ?

=46irstly, I'm sorry for late reply.

I'm developing the suggested idea on extcon-test branch[1]. But, I
have not yet completed.
There are issues about compatibility of existing notifier of extcon.

It[1] is not final version. I need more time to make the well design
for extcon property.

[1] https://git.kernel.org/cgit/linux/kernel/git/chanwoo/extcon.git/log=
/?h=3Dextcon-test
- usb: dwc3: omap: Support the changed method to get the state of conne=
ctor
- usb: chipdata: Support the changed method to get the state of connect=
or
- extcon: Add the support for extcon property according to type of conn=
ector
- extcon: Add the extcon_type to group each connector into five categor=
y

Thanks,
Chanwoo Choi
