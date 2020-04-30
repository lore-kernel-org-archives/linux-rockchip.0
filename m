From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
Date: Thu, 30 Apr 2020 18:06:44 -0400
Message-ID: <20200430220644.GC4468@bill-the-cat>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
 <20200430144628.GU4468@bill-the-cat>
 <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="5YKxbtAlDq2FnV+Q"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Patrick Wildt <patrick@blueri.se>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


--5YKxbtAlDq2FnV+Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 01, 2020 at 02:33:17AM +0530, Jagan Teki wrote:
> On Thu, Apr 30, 2020 at 8:16 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:
> >
> > > Some drivers and other bsp code not only poll the
> > > register with timeout but also required to delay
> > > on each transaction.
> > >
> > > This patch add that requirement by adding sleep_us
> > > variable so-that read_poll_timeout now support
> > > delay as well.
> > >
> > > Cc: Tom Rini <trini@konsulko.com>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > This (and 2/8) need to say what kernel commit you're taking this from,
> > thanks.
>=20
> Linux supports sleep_us at the beginning where read_poll_timeout
> supports, i.e. the reason I didn't add the sha1. If that works, I will
> add the same sha1 and apply via my tree (since it has some SPI changes
> dependency patch)?

Yes, I think that sounds right, thanks!

--=20
Tom

--5YKxbtAlDq2FnV+Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl6rS/QACgkQFHw5/5Y0
tyyMLQv/W889DXRmlyXPVfzhMERv1e0eY9cfXOV/ZpIJfPBOXojy7J8emAb/zEbj
G4U/+66r0VAtQIAn5ceFacDYGUVq0YE0MLAosv1GzJQib0+RSlCovr0OGcM7XS9a
9rfEOmScK6Ao5qhG1DrIHLuMiPgnOLaVSuC1yoooaezGN04oYsgEgDjZxLpJxkFt
zPcT8dw8HaqBh+JDhI9JuO6LxJUnrUXryuNk7YbwTEw+6DKcGPOuHYVzJTAmhy0b
foUVybqnUhtOoO24O3i2xNU80hj4f7R+VM17VCXnce9zXC3gP4xa55sA54qQ/1Al
cIifsKJw4fMwewIY5INy0oC+gJlETz+5trDrf7dycvIhbFapvDYP/RAcO52KL4Vv
fSt8oYCHeBHgpjXs+ofP6sD52iwHuaVds3KaqO72Y5C7WozTVDyxHvIO5AOSP127
ITY3zLD2zAPn04YIzDWn3l0DDQd8/Vb4R3szdHFaBE4Zy5a1hWNjKF8BdAV1Fjsx
0uaQWC79
=gJIO
-----END PGP SIGNATURE-----

--5YKxbtAlDq2FnV+Q--
