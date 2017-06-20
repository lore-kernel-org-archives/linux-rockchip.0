From: Maxime Ripard <maxime.ripard@free-electrons.com>
Subject: Re: [PATCH 2/2] drm/sun4i: add const to drm_encoder_helper_funcs
 structures
Date: Tue, 20 Jun 2017 15:35:46 +0200
Message-ID: <20170620133546.f4ea4fhen2jnhsk5@flea.lan>
References: <1497964080-27301-1-git-send-email-bhumirks@gmail.com>
 <1497964080-27301-3-git-send-email-bhumirks@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
        protocol="application/pgp-signature"; boundary="3axz5cxotzfwirol"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1497964080-27301-3-git-send-email-bhumirks@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: julia.lawall@lip6.fr, airlied@linux.ie, wens@csie.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--3axz5cxotzfwirol
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 20, 2017 at 06:38:00PM +0530, Bhumika Goyal wrote:
> Add const to drm_encoder_helper_funcs structures as they are only passed
> as an argument to the function drm_encoder_helper_add and this argument
> is of type const. So, add const to these structures.
>=20
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@free-electrons.com>

--=20
Maxime Ripard, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com

--3axz5cxotzfwirol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBAgAGBQJZSSSyAAoJEBx+YmzsjxAgR+IQAKpn9wEJuTGZZCOyxkNNyzND
e/40NqxxEcJi9fbWE0BarLl+ylGZYVqfqzdD6qm5xlGUQ5lvjhC4lgI8fPcHaFy7
RA4HCBIFhaT4mMfJDJDJkki7jaPRxUtjFLhU0iiMYWqLmf5ne3ndWTTgbD3RQfj3
LM6vOQQ2pesgXz6owZu/G4hAhArFrlGOSlU5mGq2hFe3rJZZVJ/KZ4AXX3JP4B7i
rJi5VZ6f8tqpuo7lR8+1cJx8GKF035NsguFf1ZC3GQXO+dyfHr36a4TZQTJXZqnB
21Bi1npLnFWBz3+5H6dyXAj/cBWBnXYQo96BqfgwS5JdXbxaOchXndQoXikBmAxW
NEP3sNFh9jZV9D8wnCGIVcn/i1hf5+Ve4JCCnePTBYVZX+Y6n5+EkBgYOEdNdA8/
cDK+eMVWVXVX+zt/tRrD3+5RnXDz0SrgcJljVXGu8Rp/O8jUKuJqLL+d+sy+TbV3
lEmkH6NcQczhwGWE5uTiD8mZvGhz8kAnrFn9pO/oJIEyTgf6ReyxdvlbITT9SUzU
BGFCJYmRbsCYXh+OoLsH94NxLZA7CnAYG+XMJ/uxrxw0mUU7v8yKAbzDN5XTAYqI
maJSu0TCcJpT/LRqSbVVDW3NgGUwwpr7KcKsh/36KRCpiU5Te49qv4kQyyKWU26i
6MkMQ5pM73Wk3qXL+vMv
=ZVCH
-----END PGP SIGNATURE-----

--3axz5cxotzfwirol--
