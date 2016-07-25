From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: add simple-panel-dsi and simple-panel
Date: Mon, 25 Jul 2016 17:21:25 +0200
Message-ID: <20160725152125.GS21170@ulmo.ba.sec>
References: <1468984730-23186-1-git-send-email-mark.yao@rock-chips.com>
 <1468984730-23186-2-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1777827791=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1468984730-23186-2-git-send-email-mark.yao@rock-chips.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1777827791==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DIYaQRZjygY6fA2m"
Content-Disposition: inline


--DIYaQRZjygY6fA2m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 20, 2016 at 11:18:50AM +0800, Mark Yao wrote:
> Allow user add display timing on device tree with simple-panel-dsi
> or simple-panel.
>=20
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
>=20
> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> ---
>  .../bindings/display/panel/simple-panel.txt        | 48 ++++++++++++++++=
++++++
>  1 file changed, 48 insertions(+)

Sorry, not going to happen. Read this for an explanation of why not:

	https://sietch-tagr.blogspot.de/2016/04/display-panels-are-not-special.html

Thierry

--DIYaQRZjygY6fA2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXli5yAAoJEN0jrNd/PrOhXwkP/iXi6iJM1NkvT3g7X88i1J+/
OzgRG+/vklU7ZsojSn2SiYnCjDuVu+NxyaQTdaiVCXuGZImCUTkdjFJhZsIJLCM1
7DaNxByaVVo5f5bIuktwtbOoxONQW51zA2/Y1LdeIS5x3F/4/YgaPxPTv/Jcfnhv
5BMizBb6WDDv7xRKyOA36HopLDkZSJroP2Kmam9w0P6Hwkp8D+WAyN46SO6U7yD9
IhI2AVgpXAraDdU99r3LDo0SEvPo/qZpw7oP28WXc0orW7TC2qao3O+b79bF3Lj8
r51G8gncDhPO5G2b+aYLJDOXTz0eGpHLBxC9GvDWgaIhm2TaGc6ud6V/J+TGF1Cv
XhUr9mwWuIKZxG1vfZO/esb6/p/9cPs4bg1pj6b6Oe85yRA4lyKfZCK8Z+7iZblp
vDxMTubi3bw4LA1rIZhGS17xFe/grp7e5ynCOcihYnviiZrMGfn+rIST8SZktTk3
p1d5v0uH/vkBe3ntPW6f5GA76xhVXAObJtsmTS+H6cFBhON6YuI3H89s6W+ilt6v
wtrq9pO0emrEmVdAU+RrzHOC5nSl/ZpGnYTV88TUvW3LPYM+AYGa22Esdz3fHhWv
Gn6Xz1o3HXaZ/OCaOT5C9+kkdiE7i1szvrJZePkG3FwNigW/AUe+t3N9MMMQHbw7
2L2Uj8g/IbvzuhqIJkgU
=8s7g
-----END PGP SIGNATURE-----

--DIYaQRZjygY6fA2m--

--===============1777827791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1777827791==--
