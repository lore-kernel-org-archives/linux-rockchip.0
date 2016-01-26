From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v3 3/9] ASoC: rockchip: i2s: add support for grabbing output clock to codec
Date: Tue, 26 Jan 2016 10:52:25 +0100
Message-ID: <2073307.S3XLZp3hP0@diego>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com> <20160122171815.GD6588@sirena.org.uk> <56A57733.8020200@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56A57733.8020200@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Mark Brown <broonie@kernel.org>, Sonny Rao <sonnyrao@chromium.org>, Caesar Wang <wxt@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, leozwang@google.com, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Kees Cook <keescook@google.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Jay,

Am Montag, 25. Januar 2016, 09:15:31 schrieb Jianqun Xu:
> =E5=9C=A8 23/01/2016 01:18, Mark Brown =E5=86=99=E9=81=93:
> > On Fri, Jan 15, 2016 at 01:48:04PM -0800, Sonny Rao wrote:
> >> On Fri, Jan 15, 2016 at 9:46 AM, Mark Brown <broonie@kernel.org> w=
rote:
> >>> If the I2S block is providing a clock to the CODEC then that's wh=
at the
> >>> software should do so that the CODEC can gate and ungate the cloc=
k as
> >>> required.  This patch has the I2S block using a clock, not provid=
ing
> >>> one.
> >>>=20
> >>  From my read of the clock diagram for RK3288  there is a single c=
lock
> >>=20
> >> signal (labeled "clk_i2s0") that comes out of a fractional divider=
,
> >> and it is split such that one path gets sent to the I2S block and =
the
> >> second path is sent to a mux after which that signal is sent to an
> >> external pin that goes to the codec.
> >>=20
> >> There are separate clock gates for the two paths: one for the I2S
> >> block and one after that mux before the external pin.
> >>=20
> >> I'm not sure if it's being modeled that way in the Linux code or n=
ot,
> >> but at least physically I don't think this clock signal actually g=
oes
> >> through the I2S block before being sent to the codec.
> >=20
> > That's not really the issue here, the issue is that it's not the I2=
S
> > controller that is consuming the clock so it should not be the I2S
> > controller driver that ensures that the clock is enabled.  The driv=
er
> > that manages the clock should be the one that uses it, like I say t=
his
> > means you should add the code to enable the clock to the CODEC driv=
er if
> > the CODEC driver needs the clock enabled.
>=20
> Agree, now we almost use the simple-card for the CODEC driver, so I
> think we should enable the mclk(i2s-outclk) in the simple-card driver=
,
> is it ?
>=20
> I found a subnode property from simple-card document:
> - mclk-fs                               : Multiplication factor betwe=
en
> stream
>                                            rate and codec mclk, appli=
ed
> only for
>                                            the dai-link.
> But the property responsible to the factor, not care if the mclk sour=
ce
> clock is enabled or not. So does the simple-card driver can add suppo=
rt
> to enable/disable mclk ?

The mclk-input is part of the codec I'd think. So you'd want the clocks=
-
property in the i2c entry describing the codec itself and implement the=
 clk=20
operations in the codec driver as well.

See codec-drivers for da7213, da7218,max98090 and many more for referen=
ce.


Heiko



> >> Does that help clarify?
> >=20
> > The problem here isn't a lack of clarity in the situation.
