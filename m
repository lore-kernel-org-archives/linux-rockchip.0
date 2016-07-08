From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] regulator: pwm: Fix regulator ramp delay for
 continuous mode
Date: Fri, 8 Jul 2016 10:53:38 +0200
Message-ID: <20160708085338.GT6247@sirena.org.uk>
References: <1467830521-15300-1-git-send-email-dianders@chromium.org>
 <577E1487.9010000@nvidia.com>
 <CAD=FV=UQw7ttMECtO0aomx56G6xGWZh96NRug6Y4QuPJfXq8Tw@mail.gmail.com>
 <47095a54f7b44f8a98bdfe05cdea7865@HQMAIL106.nvidia.com>
 <CAD=FV=UZrpSsOAxsuEWuMeie3NHQUY3RQyaUF0MK9mHDqPhRzQ@mail.gmail.com>
 <364098370f214216ad14eda6487687e9@HQMAIL106.nvidia.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dZoxY5VDSg+7Vbn9"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <364098370f214216ad14eda6487687e9@HQMAIL106.nvidia.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Aleksandr Frid <afrid@nvidia.com>
Cc: Doug Anderson <dianders@chromium.org>, Laxman Dewangan <ldewangan@nvidia.com>, Boris Brezillon <boris.brezillon@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Thierry Reding <thierry.reding@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org


--dZoxY5VDSg+7Vbn9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 07, 2016 at 06:43:33PM +0000, Aleksandr Frid wrote:

I'm not entirely sure what's wrong with your mail client here but your
mails are essentially illegible.  There appears to be some combination
of top posting, reflowing quoted content to remove line breaks and extra
levels of quoting.

> >>
> In the case that you don't need multiple steps then don't specify a regul=
ator-ramp-delay, just a pwm-regulator-settle-us.
> >>
> Agreed
>=20
> -----Original Message-----
> From: dianders@google.com [mailto:dianders@google.com] On Behalf Of Doug =
Anderson
> Sent: Thursday, July 07, 2016 11:32 AM
> To: Aleksandr Frid
> Cc: Laxman Dewangan; Mark Brown; Boris Brezillon; Lee Jones; Brian Norris=
; open list:ARM/Rockchip SoC...; Heiko Stuebner; Thierry Reding; Liam Girdw=
ood; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v2] regulator: pwm: Fix regulator ramp delay for cont=
inuous mode
>=20
> Hi,
>=20
> On Thu, Jul 7, 2016 at 11:23 AM, Aleksandr Frid <afrid@nvidia.com> wrote:
> > Hi,
> >
> >>>
> > In that case we should probably add a new PWM regulator property and no=
t abuse the existing one.  Maybe you use "pwm-regulator-settle-us"
> > or something?
> >>>
> > Looks reasonable to me.
> >
> >>>
> > actually the right thing is probably to implement=20
> > 'regulator-ramp-delay' as doing several small steps in that case
> >>>
> > Ramp delay uV/us  is not a "real" metric for some PWM regulators with e=
xponential transition -- as opposite to fixed slew-rate linear transition o=
n other regulators. So splitting transition into multiple steps to implemen=
t artificial  (in this case) metric seems questionable.
>=20
> In the case that you don't need multiple steps then don't specify a regul=
ator-ramp-delay, just a pwm-regulator-settle-us.
>=20
> ...the suggestion for multiple steps is because (so I'm told) it helps av=
oid overshoot or undershoot problems.  In general the whole point of rampin=
g a regulator slowly is to avoid overshoot or undershoot problems.  The "re=
gulator-ramp-delay" property in Linux is a little odd because it sort of "d=
escribes" the ramp delay and sort of "sets"
> the ramp delay.  Many PMICs allow you to set how fast the regulator will =
ramp and this property is used to specify how the register in the PMIC shou=
ld be set.  However, it is also used as the actual delay in Linux.
>=20
>=20
> -Doug

--dZoxY5VDSg+7Vbn9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEbBAEBCAAGBQJXf2oQAAoJECTWi3JdVIfQ3x0H+PJTskkBS1BS8NrZc8LwOe0i
4ezsSuEn3quyXp6htWj+jQCNygyBmAOqj8JVdPc2njER+VS+5gA1es/ZGpDOUbia
SjVd8WS6OppC+PTFmZSaRkoKPp7FXLxJ03ltXtDqoyuLh1uPJsThDBqPcTGdvySA
t4pg3jcOSjBlVOVkhAaOaGEnbQu5z1zgZPIt2tEE3c6ydDO2kHUXEDBqRXTXtL9f
HAGD9RTBFldbJVldjWVZ5lnEzLZUVGqXLDT93a8c0Dp3Ccz42EGy1YsGlsdLw6N9
dQOakNETXG+zapsxA51SrtWa2EP+Df28jFATc1dJQ0J5nOVHDQPAAHkTFMi/gA==
=bzBR
-----END PGP SIGNATURE-----

--dZoxY5VDSg+7Vbn9--
