From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 0/7] drm/rockchip: switch to drm_mm for support arm64
 iommu
Date: Tue, 7 Feb 2017 13:38:59 +0100
Message-ID: <20170207123859.GD18315@ulmo.ba.sec>
References: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1660522648=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1660522648==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q0rSlbzrZN6k9QnT"
Content-Disposition: inline


--Q0rSlbzrZN6k9QnT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 07, 2017 at 04:35:35PM +0800, Mark Yao wrote:
> Some iommu patches on the series[0] "iommu/rockchip: Fix bugs and
> enable on ARM64" already landed, So drm/rockchip related patches [1] and =
[2]
> ready to landed, this series just rebase them to lastest drm-next.
>=20
> And fix some bugs for drm/rockchip drm_mm
>=20
> [0]: http://www.spinics.net/lists/arm-kernel/msg513781.html
> [1]: https://patchwork.kernel.org/patch/9196367
> [2]: https://patchwork.kernel.org/patch/9196369
>=20
> Changes in v2:
> Advices by Tomasz:
>   add some fixes patches from chromeos project.

I think those fixes should've been squashed into the patches that they
fix. It's very unusual to merge patches upstream that are know to have
been fixed already.

Thierry

--Q0rSlbzrZN6k9QnT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAliZv+MACgkQ3SOs138+
s6F1FA//Q+Ged7EbIi53XOOa9G6IMXcYhf+DcziHXK+l1HUdbqA17vKbom7KTSym
z8SJKvQ6P0XIVQ2zLZmetvlNGDGAlqGmMJaiqYKVzdy0ItYu5O2e545y2rip33eP
MGU1P5HtB/0/BplcZJJ7vTBcbvGKxXp5iquO3Gfo7BeXThbwAfAtkitTn03+3WyC
v3AxvjBdmRPYr3jnwqZOWDjOwBmtuF3gsvweB3BZJJnnLhvddiX13CnpA/GIWtGO
b5jsstl4+tgDANXIMyxc+K7S2n+RAzn3RW8GSdX2lxuXJzgEhA8oW0WNwTKhBUxc
FSzLeUfoB9ZH8YCvC0M7mMSaqAlmI0f6U9NQYQu4J01KSH3QeyNFIm5q6OjhizHP
sqAsI59zFJj6QCaphP5gnmaWbtjboWZcGfAa2KWxFzFQMMYgP+Y7oC72uoTk1lZH
/z+ywoPP0mgXzzqYGA2IjNE1u6pf8tbOOfn1jzlkW5+Ydn9tJEF0qK50R7XvlhpE
pa7kOy58etrwyxhfREBkkWznypY4Wqm0OaSsMYcZct+PBNNPraSLF4YJ/FGtm9B5
tF96aDr52NRdmiZ5dtuFB0gwYXXzRnp+5rpMQAtIvDUCD/Rxeg6BXrqkTiyUjSL+
5iU0+JbbqO1Gn2G25UQ4wS18Wdm8IzBUsdtSi0Y62FPsn4fpzlI=
=y8ZA
-----END PGP SIGNATURE-----

--Q0rSlbzrZN6k9QnT--

--===============1660522648==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1660522648==--
