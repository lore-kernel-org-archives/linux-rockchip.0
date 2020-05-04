From: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
Date: Mon, 04 May 2020 14:38:23 -0400
Message-ID: <98946a03023451d44c2ebb2da719fa7dd3e530f6.camel@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
 <20200410115113.31728-3-ezequiel@collabora.com>
 <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
 <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
 <20200502203707.402ea3cd@collabora.com>
 <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
 <e53824aed3eeb27419e5399576cce028f0ba8203.camel@collabora.com>
Reply-To: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1316023976994075055=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <e53824aed3eeb27419e5399576cce028f0ba8203.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============1316023976994075055==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-EyYe3EysLdTBugQZatPp"


--=-EyYe3EysLdTBugQZatPp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 04 mai 2020 =C3=A0 14:01 -0400, Nicolas Dufresne a =C3=A9crit :
> Le samedi 02 mai 2020 =C3=A0 19:55 -0300, Ezequiel Garcia a =C3=A9crit :
> > +Nicolas
> >=20
> > On Sat, 2020-05-02 at 20:37 +0200, Boris Brezillon wrote:
> > > On Fri, 01 May 2020 13:57:49 -0300
> > > Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> > >=20
> > > > > > +
> > > > > > +.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
> > > > > > +
> > > > > > +.. flat-table:: enum v4l2_vp9_reset_frame_context
> > > > > > +    :header-rows:  0
> > > > > > +    :stub-columns: 0
> > > > > > +    :widths:       1 2
> > > > > > +
> > > > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE``
> > > > > > +      - Do not reset any frame context.
> > > > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE_ALT``
> > > > > > +      - Do not reset any frame context. This is an alternative=
 value for
> > > > > > +        V4L2_VP9_RESET_FRAME_CTX_NONE. =20
> > > > >=20
> > > > > Add `` around V4L2_VP9_RESET_FRAME_CTX_NONE.
> > > > >  =20
> > > >=20
> > > > Hm, now that I look closer, what's the point
> > > > of having the NONE_ALT in our uAPI if it
> > > > has same meaning as NONE?
> > > >=20
> > > > I think it can be removed.
> > >=20
> > > The intent was to match the spec so that one can pass the value
> > > extracted from the bitstream directly.
>=20
> reset_frame_contextspecifies whether the frame context should be reset
> to default values:
>   =E2=88=92 0 or 1 means do not reset any frame context
>   =E2=88=92 2 resets just the context specified in the frame header
>   =E2=88=92 3 resets all cont
>=20
> But aren't we going too far by making this an emum ? In Microsfot DXVA,
> we pass that value without interpreting it in userspace. For the
> following RKVDEC, it is (suspiciously ?) ignored. Maybe just passing
> over the value would make more sense, less work ?

I have looked deeper. So basically when 2 and 3, that needs to be done
by userspace is set back the associated probs arrays to their default
values (see section 10.5 or the spec).

https://github.com/rockchip-linux/mpp/blob/develop/mpp/codec/dec/vp9/vp9d_p=
arser.c#L1021

It seems that for both VAAPI And DXVA, the drivers takes care of that
reset. So I'd like to ask, shall we code these defaults inside the
driver ? I think we do similar things in JPEG side. But if we keep it
the way it is, this should be strictly documented, otherwise anyone
porting from DXVA or VAAPI will be tricked by this.

>=20
> > > > > I got several smatch warnings:
> > > > >=20
> > > > > smatch: ERRORS
> > > > > drivers/media/v4l2-core/v4l2-ctrls.c:1880 validate_vp9_frame_deco=
de_params() warn: was && intended here instead of ||?
> > > > >=20
> > > > > (Commented on this ^^^ one above)
> > > > >=20
> > > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:426 init_intra_only_pro=
bs() error: buffer overflow 'ptr' 9 <=3D 69
> > > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1478 rkvdec_vp9_done() =
error: potentially dereferencing uninitialized 'ctrl'.
> > > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1483 rkvdec_vp9_done() =
error: uninitialized symbol 'dec_dst_buf'.
> > > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:941:6: warning: variabl=
e 'ret' set but not used [-Wunused-but-set-variable]
> > > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1466:40: warning: varia=
ble 'fctx' set but not used [-Wunused-but-set-variable]
> > > > >  =20
> > > >=20
> > > > Oh, I'll run smatch and fix them all.
> > >=20
> > > Oops!

--=-EyYe3EysLdTBugQZatPp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXrBhHwAKCRBxUwItrAao
HH8LAJ9aosLvF3M9LdhkX81jDPOwCl6TeACgsfbMRb5H7BOUvQ1h1XZSCTi02FY=
=j3aC
-----END PGP SIGNATURE-----

--=-EyYe3EysLdTBugQZatPp--



--===============1316023976994075055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1316023976994075055==--
