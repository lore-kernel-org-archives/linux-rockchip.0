From: Alyssa Rosenzweig <alyssa.rosenzweig-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Mon, 16 Dec 2019 10:48:03 -0500
Message-ID: <20191216154803.GA3921@kevin>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1836777720597470860=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191215211223.1451499-1-martin.blumenstingl-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Martin Blumenstingl <martin.blumenstingl-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, lima-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, steven.price-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wens-jdAy2FN1RRM@public.gmane.org, yuq825-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, linux-amlogic-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============1836777720597470860==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

If so much code is being duplicated over, I'm wondering if it makes
sense for us to move some of the common devfreq code to core DRM
helpers?

On Sun, Dec 15, 2019 at 10:12:22PM +0100, Martin Blumenstingl wrote:
> This is my attempt at adding devfreq (and cooling device) support to
> the lima driver.
> I didn't have much time to do in-depth testing. However, I'm sending
> this out early because there are many SoCs with Mali-400/450 GPU so
> I want to avoid duplicating the work with somebody else.
>=20
> The code is derived from panfrost_devfreq.c which is why I kept the
> Collabora copyright in lima_devfreq.c. Please let me know if I should
> drop this or how I can make it more clear that I "borrowed" the code
> from panfrost.
>=20
> I am seeking comments in two general areas:
> - regarding the integration into the existing lima code
> - for the actual devfreq code (I had to adapt the panfrost code
>   slightly, because lima uses a bus and a GPU/core clock)
>=20
> My own TODO list includes "more" testing on various Amlogic SoCs.
> So far I have tested this on Meson8b and Meson8m2 (which both have a
> GPU OPP table defined). However, I still need to test this on a GXL
> board (which is currently missing the GPU OPP table).
>=20
>=20
> Martin Blumenstingl (1):
>   drm/lima: Add optional devfreq support
>=20
>  drivers/gpu/drm/lima/Kconfig        |   1 +
>  drivers/gpu/drm/lima/Makefile       |   3 +-
>  drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
>  drivers/gpu/drm/lima/lima_device.c  |   4 +
>  drivers/gpu/drm/lima/lima_device.h  |  11 ++
>  drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
>  drivers/gpu/drm/lima/lima_sched.c   |   7 ++
>  drivers/gpu/drm/lima/lima_sched.h   |   3 +
>  9 files changed, 217 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h
>=20
> --=20
> 2.24.1
>=20

--CE+1k2dSO48ffgeK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl33py4ACgkQ/v5QWgr1
WA0Caw/8DBkpxsfWejzUF5wK7xq5rkmaLL+RmwJzt9xgNwWgsJ8p2XWt+hgzJSAr
hNy9KVAEE62SXJHfpziY9CEkQycM+b7cQASYGf2q8/C2XNYfZHv80N8SZv1Gaqmh
NzCfRSsfgc1BvPjbiKu0E1gdsX4RxlB3TXQV0dmSYbOSQ6yyHaYHgrEImW8HVblc
/xkW7pOSkBs9ZdQKMFETaKJlQ6iQvkvUUlaywl2rBO4PvidyCVp5TXgRIYUQzXY/
ls7vy/jU8eWchvp9hlztfssMGtE20BcQeASrHjkKfRUWsaSKt0g9Wh17jbIMf/fj
BfGKqV+KwkKuMDUubvp7EBaJkwxAG8pTr1jv7+QdxOdm/KVnKMu1NSl2DJmTl8Fa
o9mIdlNQCoMJo+TG6i92JuHMZ5VL11NBm6uazi1iJIH8KEYg8UPnePbQttHnDnZq
DqTpy9w0r+T3zu9AH5pQjZCXCcKK+oV4qCTBK5zGe3UtcPigssiTVo912VsGEbb/
Y8LPtySaWSjCI/hfgz4M9ENfrmNX4yqvIewZnAMMPj6vv5sslfRBBGKBCoCtqcQx
T9Iy3c57pp9B/Prrc1llotEuqyd2Mi7mws7gSPfGZXaTC/TPNKCikvph39wdRPdp
WP+lq3rH1n5kMcc3D09p62TZGuaO0uiHmUgxshzPQa3FxXsHqZo=
=QSX1
-----END PGP SIGNATURE-----

--CE+1k2dSO48ffgeK--


--===============1836777720597470860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1836777720597470860==--
