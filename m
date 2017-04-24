From: Eddie Cai <eddie.cai.linux@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: update cpu opp table for rk3399 op1
Date: Mon, 24 Apr 2017 18:29:26 +0800
Message-ID: <CAJrj+DPzj0hieOHHpoxL4_uPUyaOa7LADJw+4_82VDZiPKxy1g@mail.gmail.com>
References: <1493014730-9670-1-git-send-email-wxt@rock-chips.com>
 <2250946.xrPjMl5Kf1@diego> <f4c389af-5b1f-9197-0df4-f8407ed8622a@rock-chips.com>
 <3119382.DFiP2J6FnE@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3119382.DFiP2J6FnE@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, briannorris@chromium.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, dianders@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko

2017-04-24 17:15 GMT+08:00 Heiko St=C3=BCbner <heiko@sntech.de>:
> Am Montag, 24. April 2017, 16:49:08 CEST schrieb Caesar Wang:
>> =E5=9C=A8 2017=E5=B9=B404=E6=9C=8824=E6=97=A5 16:26, Heiko St=C3=BCbner =
=E5=86=99=E9=81=93:
>> > Hi Caesar,
>> >
>> > Am Montag, 24. April 2017, 14:18:50 CEST schrieb Caesar Wang:
>> >> Update the cpu opp table for rk3399 op1.
>> >
>> > Ideally this should contain something about the "why".
>> > Are these new voltage settings safer to operate under?
>>
>> The before opp table is for earlier batch of rk3399 SoCs,  that's no
>> enough for the current and
>> newer batch of rk3399 op1. In order to suit for the rk3399 op1, we need
>> to little voltages changed.
>
> just to make sure, this is also safe for all the non-chromebook rk3399 so=
cs
> (like the firefly and tv-boxes, etc), right?
This is only for op1. other 3399s should have a different opp table
>
>
> Thanks
> Heiko
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
