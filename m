From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v2 3/4] media: rockchip: rga: Add support for the PX30
 compatible
Date: Fri, 24 Apr 2020 15:55:52 +0200
Message-ID: <20200424135552.GI610776@aptenodytes>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
 <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
 <cf31ae67792aedf60ee4cf8002861edadc305314.camel@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3U8TY7m7wOx7RL1F"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <cf31ae67792aedf60ee4cf8002861edadc305314.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--3U8TY7m7wOx7RL1F
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Fri 24 Apr 20, 09:54, Ezequiel Garcia wrote:
> Hey Paul,
>=20
> Thanks for the patch!
>=20
> On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> > The PX30 SoC has a RGA block, so add the associated compatible to
> > support it.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> > ---
> >  drivers/media/platform/rockchip/rga/rga.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/=
platform/rockchip/rga/rga.c
> > index 9d122429706e..4fb4615662b7 100644
> > --- a/drivers/media/platform/rockchip/rga/rga.c
> > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > @@ -955,6 +955,9 @@ static const struct dev_pm_ops rga_pm =3D {
> >  };
> > =20
> >  static const struct of_device_id rockchip_rga_match[] =3D {
> > +	{
> > +		.compatible =3D "rockchip,px30-rga",
> > +	},
>=20
> Please note that if you don't have anything px30-specific,
> then you don't need the compatible in the driver.
>=20
> You can have something like:
>=20
> compatible =3D "rockchip,px30-rga", "rockchip,rk3288-rga"
>=20
> so you need to add it to the bindings. See Justin Swartz
> recent patches for rk3228.

Thanks for the instruction!

I've been a bit confused about that because RK3399 has its own compatible
(without a 2nd rk3288 compatible) although there's nothing different with it
either. All of these rockchip platforms come with what they call "RGA2", th=
at
seems to have no variation across platforms (downstream rockchip even has a
single compatible for it).

Should we add the rk3288 compatible to the rk3399 dtsi? I guess we
can't remove it from the driver at this point, for backward compatibility
with previous dts (what a strange idea...).

> Down the road, if you find something specific for px30,
> you can make the driver aware.=20

Makes sense, yes.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--3U8TY7m7wOx7RL1F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6i7+gACgkQ3cLmz3+f
v9FiYAf/S2rf7jhG7m6KOPzamwQ3o9tzlswdBgoIl9QCOJ45gxp6WdL/pYTzIG5n
699GzPx7eFLs9nig+3To7cjsatt1he0hyI4Y5VXrBYTJUINu7mPXrXOOOytT85mL
9HNLhZJrvnDMRBdailFpY/nwYUq4TORps7ll3yMwOBWCIziyxU6ShuaS7UUcNfd6
KQWa19k19huhhJ/WFG04lc1mjMQYzAM+DoLSn72KGTho3YYZjm8P9rvYgMTW5rF8
kTX8Zd1CM6esAQhYji6CJQV4sKi0ZRCLz81dAf0chibWLcDbA9DyXgGX3A4GDIfR
2rXiW1ggIZhknk09nPri7clhpqxSVQ==
=GDWl
-----END PGP SIGNATURE-----

--3U8TY7m7wOx7RL1F--
