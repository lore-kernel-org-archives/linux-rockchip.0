From: Xing Zheng <zhengxing@rock-chips.com>
Subject: Re: [PATCH v2 7/9] rockchip: make sure timer5 is enabled on rk3036
 platforms
Date: Mon, 28 Sep 2015 20:53:03 +0800
Message-ID: <5609382F.2000203@rock-chips.com>
References: <1442478540-15068-1-git-send-email-zhengxing@rock-chips.com> <11125723.j2J5LpAGi4@diego> <560931A3.2020403@rock-chips.com> <1726823.4nE2gJuWPe@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1726823.4nE2gJuWPe@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 2015=E5=B9=B409=E6=9C=8828=E6=97=A5 20:44, Heiko St=C3=BCbner wrote:
> Hi,
>
> Am Montag, 28. September 2015, 20:25:07 schrieb Xing Zheng:
>> On 2015=E5=B9=B409=E6=9C=8817=E6=97=A5 23:05, Heiko St=C3=BCbner wro=
te:
>>> Am Donnerstag, 17. September 2015, 18:37:24 schrieb Xing Zheng:
>>>> The timer5 supplies the architected timer and thus as has to run w=
hen
>>>> the system clocksource and clockevents drivers are registered.
>>> please kindly ask the people doing uboot development to do this in =
uboot
>>> itself in future socs :-) - for example Simon's rk3288 mainline ubo=
ot does
>>> this correctly.
>> OK, I will ask the engineer who is doing uboot whether needs to add
>> this patch. So I will remove it from the patchset v3 of "Build and s=
upport
>> rk3036 SoC platform".
> No, I really only meant try to make people get this right in the futu=
re :-).
>
> For the rk3036 there are probably already devices on the market with =
uboots
> sporting that issue. So it's ok to have this in here now, it's just t=
o make
> sure it gets really fixed in future socs.
>
>
> Heiko
>
>
OK, I got it.

Thank you. :)
