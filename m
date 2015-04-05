From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Subject: Re: [rtc-linux] [PATCH] rtc: hym8563: fix swapped enable/disable of
 clockout control bit
Date: Sun, 5 Apr 2015 11:06:03 +0200
Message-ID: <20150405090603.GR20669@piout.net>
References: <6712839.2ZD6yJNGY8@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <6712839.2ZD6yJNGY8@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: rtc-linux@googlegroups.com
Cc: akpm@linux-foundation.org, Alessandro Zummo <a.zummo@towertech.it>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 05/04/2015 at 02:20:24 +0200, Heiko St=FCbner wrote :
> The hym8563 datasheet describes the clock output control-bit as "when=
 set
> to logic 0, the square wave output is enable, when set to logic 1, th=
e
> CLKOUT output is inhibited". But in reality the setting is exactly
> opposite.
>=20
> Before now, the clock output was not really used, but on the rk3288 s=
oc
> this generated clock is used to supply the temperature sensor block a=
nd
> the swapped bit value prevented it from working. With the corrected v=
alue,
> the tsadc now reports correct values.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>

Should that patch be applied on any stable version too?


--=20
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com
