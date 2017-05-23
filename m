From: Eddie Cai <eddie.cai.linux@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: update cpu opp table for rk3399 op1
Date: Tue, 23 May 2017 10:51:05 +0800
Message-ID: <CAJrj+DPZf0Tb454R0=uAXRBDL-Ci63bZZ1ujWnYnsh94eY_0Zw@mail.gmail.com>
References: <1493014730-9670-1-git-send-email-wxt@rock-chips.com>
 <3119382.DFiP2J6FnE@diego> <CAJrj+DPzj0hieOHHpoxL4_uPUyaOa7LADJw+4_82VDZiPKxy1g@mail.gmail.com>
 <2392465.b79CVULcOX@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2392465.b79CVULcOX@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko

2017-05-22 23:02 GMT+08:00 Heiko Stuebner <heiko@sntech.de>:
> Hi Eddie, Caesar,
>
> Am Montag, 24. April 2017, 18:29:26 CEST schrieb Eddie Cai:
>> Hi Heiko
>>
>> 2017-04-24 17:15 GMT+08:00 Heiko St=C3=BCbner <heiko@sntech.de>:
>> > Am Montag, 24. April 2017, 16:49:08 CEST schrieb Caesar Wang:
>> >> =E5=9C=A8 2017=E5=B9=B404=E6=9C=8824=E6=97=A5 16:26, Heiko St=C3=BCbn=
er =E5=86=99=E9=81=93:
>> >> > Hi Caesar,
>> >> >
>> >> > Am Montag, 24. April 2017, 14:18:50 CEST schrieb Caesar Wang:
>> >> >> Update the cpu opp table for rk3399 op1.
>> >> >
>> >> > Ideally this should contain something about the "why".
>> >> > Are these new voltage settings safer to operate under?
>> >>
>> >> The before opp table is for earlier batch of rk3399 SoCs,  that's no
>> >> enough for the current and
>> >> newer batch of rk3399 op1. In order to suit for the rk3399 op1, we ne=
ed
>> >> to little voltages changed.
>> >
>> > just to make sure, this is also safe for all the non-chromebook rk3399=
 socs
>> > (like the firefly and tv-boxes, etc), right?
>> This is only for op1. other 3399s should have a different opp table
>
> digging this up, as I'm right now working on a rk3399-firefly, could you
> provide the correct opp tables for the available rk3399 variants please?
>
> I.e. generally safe opps for boards like the firefly and the special ones
> for op1-based devices?
here is for 3399:
https://github.com/rockchip-linux/kernel/blob/release-4.4/arch/arm64/boot/d=
ts/rockchip/rk3399-opp.dtsi
here is for op1:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-=
4.4/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
>
>
> Thanks
> Heiko
