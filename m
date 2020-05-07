From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
Date: Thu, 7 May 2020 22:23:37 +0200
Message-ID: <20200507202337.GJ2422122@aptenodytes>
References: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
 <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="LQAwcd5tHl0Qlnzi"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ed1ac7d6-12d3-5480-3699-70a88595cac2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--LQAwcd5tHl0Qlnzi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 30 Apr 20, 23:24, Johan Jonker wrote:
> Hi Paul,
>=20
> >=20
> > Add a new compatible for the PX30 Rockchip SoC, which also features
> > a RGA block. It is compatible with the RK3288 RGA block.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> > ---
> >  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml =
b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > index dd645ddccb07..740586299da9 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > @@ -23,6 +23,9 @@ properties:
>=20
>=20
> >        - items:
> >            - const: rockchip,rk3228-rga
> >            - const: rockchip,rk3288-rga
> > +      - items:
> > +          - const: rockchip,px30-rga
> > +          - const: rockchip,rk3288-rga
>=20
> Use enum.
>=20
>       - items:
>           - enum:
>             - rockchip,px30-rga
>             - rockchip,rk3228-rga
>           - const: rockchip,rk3288-rga

Are you sure about this? The rk3228 above does it as I did it and other exa=
mples
like allwinner,sun4i-a10-csi.yaml appear to be doing the same too.

The case with rockchip,rk3288-rga alone already seems covered.

Cheers,

Paul

> > =20
> >    reg:
> >      maxItems: 1
> > --=20
> > 2.26.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--LQAwcd5tHl0Qlnzi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl60bkkACgkQ3cLmz3+f
v9FGRQf+NACpI/Qm8LidCAjDd2uHl97xlPGI/gb4zzpGYeK/t1BGJfLcDSY4MCkK
srG+0VSic+47U4qA5hlWqq4jXYTLkV5DBpF79lSqNCI6yrPln2oTaZ2bIcY/mF6E
Q1/AljAuM8pcoBnFdLwJEq7Td82Nb79teutcAlVCSl2uUvVI+bEY5EtLmWjeLnOb
ejYXlItHF3Od/hKE8C7GPpPazLyb4Oh67ZP1/RpnxkCEmkl/J41nni9NIRi+wV7Q
1Sz063fVOuzdDdDgmfc7NHdl9pstkqBq/gKyurtSGkpVnAC/qSfSGSRdCk3JX1Om
QZhzaBXFzWq8bStS1rjzsAz+AHUctA==
=zYey
-----END PGP SIGNATURE-----

--LQAwcd5tHl0Qlnzi--
