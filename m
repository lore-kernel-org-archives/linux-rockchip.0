From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 7/7] drm/rockchip: Call drm_gem_object_release() to
 destroy GEM base
Date: Tue, 7 Feb 2017 13:37:07 +0100
Message-ID: <20170207123707.GC18315@ulmo.ba.sec>
References: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
 <1486456773-19233-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1121272138=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1486456773-19233-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1121272138==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wxDdMuZNg1r63Hyj"
Content-Disposition: inline


--wxDdMuZNg1r63Hyj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 07, 2017 at 04:39:33PM +0800, Mark Yao wrote:
> From: Tomasz Figa <tfiga@chromium.org>
>=20
> When converting the driver to use shmem-backed GEMs for IOMMU-enabled
> systems, we forgot to add calls to drm_gem_object_release(), which gave
> us a quite nice memory leak. This patch adds the missing calls.
>=20
> Fixes: f11d5f0 ("FROMLIST: drm/rockchip: Do not use DMA mapping API if
> attached to IOMMU domain")
>=20
> TEST=3Dwhile true; do backlight_dbus_tool --set --percent=3D0 && sleep 8 =
&&
>  backlight_dbus_tool --set --percent=3D100 && sleep 3 ; done

Ugh... please clean up your commit messages before posting to the
mailing list. FROMLIST: patches clearly aren't what will be merged
upstream and the SHA1 isn't going to match, so nobody but you will
find this anywhere.

> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> Reviewed-on: https://chromium-review.googlesource.com/385456

This is also present in some of the patches you posted, but it's not
typical for these to be included in upstream patches because usually
by the time patches from some gerrit make it to upstream, upstream
can have diverged significantly enough for the review to no longer
apply.

Thierry

--wxDdMuZNg1r63Hyj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAliZv3MACgkQ3SOs138+
s6GzjhAAv7tPGsyxdRyHhnZ05Fcr2woFS8dAkIot5TQCUwd+/DZQV4R3pdGZu0OI
nYPXyJ6YwlhesuUxVl6p1BWWphLE3Bo0FRHMihsE4mG5otLd4ldP+8e5YJ+VXgk5
nKAVc5JatZPJOu0ZMBqZbeIJY/Hoe0dc3m429BszAUZbYJfSjDVE2/IUkbbVovMf
8XVyW8MLCAwcd27mAqrioc8JTQ3xVrZYph2v3Mr7zHaJn1+PDq5JaecxVymNQbhC
LC5kQJGj8Jvk1H2Y2Zf8U4fJvQtj3t3y/a2tDRzoVswIlrApVPekFjCN0y044znk
DYo+xJggO6laEVGvi4bwc0m2nImIjXWn/wamQyhPCYJCIJKI5mXr4TMHkdL7DHOB
o6TQUQACWEIm7n/DJnTeHiZl0Q0X66Q8G8CdAUTdqjVisDjbVpApGVEyNH2ViT7S
5GdMu0nHRpTu6z4hkrYz4Swh4m5jLTFlkAE9+Q7Zl3yuW+16zpdzrEbSFkKojZ6/
X71KpA6ewwCXNzlfrxBP45gcPj/3qln7/sfKJP4X0hd4coTpALJmsKqtmwGbblEJ
D9Y5R6oV2tnspkdvdTv0aBqCQ9OhKIDU5xrer7CeJKJ0mCNbgYqLaYboQ2pprIS8
gbRQRhtV3gaibzLROLV+MfkK5m3knDw7a8dR1E5AJ7tXwoxKLZY=
=qwRi
-----END PGP SIGNATURE-----

--wxDdMuZNg1r63Hyj--

--===============1121272138==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1121272138==--
