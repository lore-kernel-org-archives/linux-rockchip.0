From: Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
Date: Fri, 10 May 2019 12:01:04 -0400
Message-ID: <703e94a8eaf995ffedf94d3d6d88a83cf8a5366e.camel@ndufresne.ca>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
 <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
 <20190510112847.GA4972@pendragon.ideasonboard.com>
 <c2d02ffb-5273-67a8-1a3a-c7268dc7bfb6@xs4all.nl>
 <20190510122411.GB4972@pendragon.ideasonboard.com>
 <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
 <106a6aa5fe62cf5b18652b667d15bc8677790cad.camel@ndufresne.ca>
 <4e7f49b2-48ad-b504-5826-d993ba85e624@xs4all.nl>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1619733341274258983=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4e7f49b2-48ad-b504-5826-d993ba85e624-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Kieran Bingham <kieran.bingham-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============1619733341274258983==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-yEjoGGMsbnF9v99MRnEu"


--=-yEjoGGMsbnF9v99MRnEu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 10 mai 2019 =C3=A0 16:07 +0200, Hans Verkuil a =C3=A9crit :
> On 5/10/19 3:51 PM, Nicolas Dufresne wrote:
> > Le vendredi 10 mai 2019 =C3=A0 14:30 +0200, Hans Verkuil a =C3=A9crit :
> > > On 5/10/19 2:24 PM, Laurent Pinchart wrote:
> > > > Hi Hans,
> > > >=20
> > > > On Fri, May 10, 2019 at 02:17:32PM +0200, Hans Verkuil wrote:
> > > > > On 5/10/19 1:28 PM, Laurent Pinchart wrote:
> > > > > > On Fri, May 10, 2019 at 10:57:26AM +0200, Hans Verkuil wrote:
> > > > > > > On 5/3/19 1:47 PM, Boris Brezillon wrote:
> > > > > > > > Users can define custom sizeimage and bytesperline as long =
as they're
> > > > > > > > big enough to store the amount of pixels required for a spe=
cific
> > > > > > > > width/height under a specific format. Avoid overriding thos=
e fields in
> > > > > > > > this case.
> > > > > > > >=20
> > > > > > > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.c=
om>
> > > > > > > > ---
> > > > > > > > Hello Hans,
> > > > > > > >=20
> > > > > > > > The sizeimage/bytesperline check on !MPLANE formats is stil=
l not 100%
> > > > > > > > sure, as custom bytesperline might induce bigger sizeimage =
than what
> > > > > > > > we calculate.
> > > > > > > >=20
> > > > > > > > I tried implementing something smarter taking the per-compo=
nent plane
> > > > > > > > bpp + hdiv param as we discussed the other day but decided =
to step
> > > > > > > > back after realizing the per-component plane macro block mi=
ght also
> > > > > > > > differ at least in theory (not sure that's true in practice=
) and that
> > > > > > > > has an impact on bytesperline too.
> > > > > > > >=20
> > > > > > > > Let me know how you want to handle that case.
> > > > > > > >=20
> > > > > > > > Regards,
> > > > > > > >=20
> > > > > > > > Boris
> > > > > > > >=20
> > > > > > > > Changes in v5:
> > > > > > > > * New patch
> > > > > > > > ---
> > > > > > > >  drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++=
++++--------
> > > > > > > >  1 file changed, 39 insertions(+), 15 deletions(-)
> > > > > > > >=20
> > > > > > > > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/driver=
s/media/v4l2-core/v4l2-common.c
> > > > > > > > index 3c6f5c115fc5..37bfc984a8b5 100644
> > > > > > > > --- a/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > > +++ b/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > > @@ -563,9 +563,10 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pi=
x_format_mplane *pixfmt,
> > > > > > > >  	pixfmt->num_planes =3D info->mem_planes;
> > > > > > > > =20
> > > > > > > >  	if (info->mem_planes =3D=3D 1) {
> > > > > > > > +		u32 bytesperline, sizeimage =3D 0;
> > > > > > > > +
> > > > > > > >  		plane =3D &pixfmt->plane_fmt[0];
> > > > > > > > -		plane->bytesperline =3D ALIGN(width, v4l2_format_block_w=
idth(info, 0)) * info->bpp[0];
> > > > > > > > -		plane->sizeimage =3D 0;
> > > > > > > > +		bytesperline =3D ALIGN(width, v4l2_format_block_width(in=
fo, 0)) * info->bpp[0];
> > > > > > > > =20
> > > > > > > >  		for (i =3D 0; i < info->comp_planes; i++) {
> > > > > > > >  			unsigned int hdiv =3D (i =3D=3D 0) ? 1 : info->hdiv;
> > > > > > > > @@ -576,10 +577,17 @@ int v4l2_fill_pixfmt_mp(struct v4l2_p=
ix_format_mplane *pixfmt,
> > > > > > > >  			aligned_width =3D ALIGN(width, v4l2_format_block_width(=
info, i));
> > > > > > > >  			aligned_height =3D ALIGN(height, v4l2_format_block_heig=
ht(info, i));
> > > > > > > > =20
> > > > > > > > -			plane->sizeimage +=3D info->bpp[i] *
> > > > > > > > -				DIV_ROUND_UP(aligned_width, hdiv) *
> > > > > > > > -				DIV_ROUND_UP(aligned_height, vdiv);
> > > > > > > > +			sizeimage +=3D info->bpp[i] *
> > > > > > > > +				     DIV_ROUND_UP(aligned_width, hdiv) *
> > > > > > > > +				     DIV_ROUND_UP(aligned_height, vdiv);
> > > > > > > >  		}
> > > > > > > > +
> > > > > > > > +		/*
> > > > > > > > +		 * The user might have specified custom sizeimage/bytesp=
erline,
> > > > > > > > +		 * only override them if they're not big enough.
> > > > > > > > +		 */
> > > > > > > > +		plane->sizeimage =3D max(sizeimage, plane->sizeimage);
> > > > > > > > +		plane->bytesperline =3D max(bytesperline, plane->bytespe=
rline);
> > > > > > >=20
> > > > > > > Let's just set bytesperline, ignoring the value the user supp=
lied. There are very
> > > > > > > few drivers that allow the user to set bytesperline anyway, s=
o it's not a big deal
> > > > > > > to drop support for that for now. We can add it back later.
> > > > > > >=20
> > > > > > > Just add a comment that a user-defined bytesperline value isn=
't currently supported.
> > > > > >=20
> > > > > > Kieran recently ran into an issue related to this, when sharing=
 buffers
> > > > > > between a CSI-2 receiver and an ISP. The ISP has alignment cons=
traints
> > > > > > in both the horizontal and vertical directions on the line stri=
de and
> > > > > > total image size. Out software framework currently allocates bu=
ffers
> > > > > > from the CSI-2 receiver which doesn't have those constraints, a=
nd not
> > > > > > being able to specify sizeimage is thus a problem.
> > > > >=20
> > > > > Not being able to specify sizeimage where? From userspace? Sorry,=
 I don't
> > > > > quite understand the specific issue here.
> > > >=20
> > > > Yes, from userspace.
> > >=20
> > > Ah, OK. But why not use CREATEBUFS? You can provide your own size whe=
n allocating
> > > the buffers.
> > >=20
> > > Also note this patch: https://patchwork.linuxtv.org/patch/55656/
> > >=20
> > > Although this is specific for compressed formats.
> >=20
> > While this work for compressed formats, it does not do anything for raw
> > image horizontal padding. The importation bit of V4L2 is pretty
> > difficult, so if we add helpers, we should load the way and simplify
> > things for userspace rather then enforcing the existing difficulty.
> >=20
> > I think from now own we should design with the mindset that a DMABuf
> > that cannot be imported back into another driver due to software
> > limitations is a useless waste of FD.
>=20
> I agree, but I feel that this is part of the new fmt and streaming
> ioctls project that Boris started. Doing further hacking of the existing =
API
> is just complicating matters even more.
>=20
> Creating new format ioctls that are much more flexible in describing imag=
e
> formats (and closer to drm where possible) seems to be the right approach=
.
>=20
> Hmmm... "waste of FD": Face Detection? File Descriptor? Probably not.
>=20
> The urbandictionary doesn't help either: https://www.urbandictionary.com/=
define.php?term=3DFD
>=20
> No idea what FD means :-), although I get the sentiment.

I was not swearing. An FD on Unix systems like Linux is also well know
as a File Descriptor. DMABuf, memfd, an open file, etc.

regards,
Nicolas

>=20
> Regards,
>=20
> 	Hans
>=20

--=-yEjoGGMsbnF9v99MRnEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXNWgQQAKCRBxUwItrAao
HOX2AKCZZogx/e+z8hoV2BV/L1iPqNyNgwCglC9UIw2gaCh2F73xSghYer0xUjQ=
=Gm4Z
-----END PGP SIGNATURE-----

--=-yEjoGGMsbnF9v99MRnEu--



--===============1619733341274258983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1619733341274258983==--
