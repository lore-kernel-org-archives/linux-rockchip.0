From: Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
Date: Wed, 11 Sep 2019 15:48:29 -0400
Message-ID: <20b4042dc3627b46e336e8c1c6fc401622bf3df9.camel@ndufresne.ca>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
 <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6750570524956984805=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Chris Healy <cphealy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--===============6750570524956984805==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-v1t+JGEHFAUPnEcHoFwA"


--=-v1t+JGEHFAUPnEcHoFwA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 11 septembre 2019 =C3=A0 09:27 +0100, Ezequiel Garcia a =C3=A9c=
rit :
> On Mon, 2019-09-09 at 16:07 +0900, Tomasz Figa wrote:
> > Hi Ezequiel,
> >=20
> > On Wed, Sep 4, 2019 at 3:17 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>=
 wrote:
> > > Hi all,
> > >=20
> > > This series enables the post-processor support available
> > > on the Hantro G1 VPU. The post-processor block can be
> > > pipelined with the decoder hardware, allowing to perform
> > > operations such as color conversion, scaling, rotation,
> > > cropping, among others.
> > >=20
> > > The decoder hardware needs its own set of NV12 buffers
> > > (the native decoder format), and the post-processor is the
> > > owner of the CAPTURE buffers. This allows the application
> > > get processed (scaled, converted, etc) buffers, completely
> > > transparently.
> > >=20
> > > This feature is implemented by exposing other CAPTURE pixel
> > > formats to the application (ENUM_FMT). When the application
> > > sets a pixel format other than NV12, the driver will enable
> > > and use the post-processor transparently.
> >=20
> > I'll try to review the series a bit later, but a general comment here
> > is that the userspace wouldn't have a way to distinguish between the
> > native and post-processed formats. I'm pretty much sure that
> > post-processing at least imposes some power penalty, so it would be
> > good if the userspace could avoid it if unnecessary.
> >=20
>=20
> Hm, that's true, good catch.
>=20
> So, it would be desirable to retain the current behavior of allowing
> the application to just set a different pixel format and get
> a post-processed frame, transparently.
>=20
> But at the same time, it would be nice if the application is somehow
> aware of the post-processing happening. Maybe we can expose a more
> accurate media controller topology, have applications enable
> the post-processing pipeline explicitly.

How it works on the stateful side is that userspace set the encoding
type (the codec), then passes a header (in our case, there will be
parsed structures replacing this) first. The driver then configure
capture format, giving a hint of the "default" or "native" format. This
may or may not be sufficient, but it does work in giving userspace a
hint.

>=20
> Thanks for the feedback,
> Ezequiel
>=20

--=-v1t+JGEHFAUPnEcHoFwA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXXlPiQAKCRBxUwItrAao
HII0AJ4pjy8CgdrB0H02TI6NAG3s7SUkWACffzXziQp0QiEe8fgzFulcgFS/XSU=
=q71o
-----END PGP SIGNATURE-----

--=-v1t+JGEHFAUPnEcHoFwA--



--===============6750570524956984805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6750570524956984805==--
