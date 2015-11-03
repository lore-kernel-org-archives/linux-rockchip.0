From: "Huang, Tao" <huangtao@rock-chips.com>
Subject: Re: [RESEND PATCH 0/1] Fix the "hard LOCKUP" when running a heavy
 loading
Date: Tue, 3 Nov 2015 20:00:06 +0800
Message-ID: <5638A1C6.30200@rock-chips.com>
References: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
 <20151103111437.GU8644@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20151103111437.GU8644@n2100.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Caesar Wang <wxt@rock-chips.com>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Heiko Stuebner <heiko@sntech.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, sjg@chromium.org, Stephen Boyd <sboyd@codeaurora.org>, dianders@chromium.org, linux-kernel@vger.kernel.org, Nadav Haklai <nadavh@marvell.com>, linux-rockchip@lists.infradead.org, cwz@rock-chips.com, Jonathan Stone <j.stone@samsung.com>, Gregory CLEMENT <gregory.clement@free-electrons.com>, linux-arm-kernel@lists.infradead.org, hl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hello Russell:

=E5=9C=A8 2015=E5=B9=B411=E6=9C=8803=E6=97=A5 19:14, Russell King - ARM=
 Linux =E5=86=99=E9=81=93:
> On Tue, Nov 03, 2015 at 04:10:08PM +0800, Caesar Wang wrote:
>> As the Russell said:
>> "in other words, which can be handled by updating a control register=
 in
>> the firmware or boot loader"
>> Maybe the better solution is in firmware.
>=20
> The full quote is:
>=20
> "I think we're at the point where we start insisting that workarounds
> which are simple enable/disable feature bit operations (in other word=
s,
> which can be handled by updating a control register in the firmware o=
r
> boot loader) must be done that way, and we are not going to add such
> workarounds to the kernel anymore."
>=20
> The position hasn't changed.  Workarounds such as this should be hand=
led
> in the firmware/boot loader before control is passed to the kernel.
>=20
> The reason is very simple: if the C compiler can generate code which
> triggers the bug, it can generate code which triggers the bug in the
> boot loader.  So, the only place such workarounds can be done is befo=
re
> any C code gets executed.  Putting such workarounds in the kernel is
> completely inappropriate.

I agree with your reason for CPU0. But how about CPU1~3 if we don't use
any firmware such as ARM Trusted Firmware to take control of CPU power
on? If the CPU1~3 will run on Linux when its first instruction is runni=
ng?

BTW I don't want to argue with you the workaround is right or wrong
because I know the errata just happen on r0p0 not r0p1.

>=20
> Sorry, I'm not going to accept this workaround into the kernel.

It seems we should introduce some code outside the kernel to do such
initialization?
