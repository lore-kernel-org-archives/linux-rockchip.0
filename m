From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 09/10] drm/panel: simple: Add support for BOE TV080WUM-NL0
Date: Fri, 30 Oct 2015 18:30:22 +0100
Message-ID: <20151030173022.GB17183@ulmo.nvidia.com>
References: <1444470930-17150-1-git-send-email-zyw@rock-chips.com>
 <1444470930-17150-10-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0214247360=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1444470930-17150-10-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chris Zhong <zyw@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--===============0214247360==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s/l3CgOIzMHHjg/5"
Content-Disposition: inline


--s/l3CgOIzMHHjg/5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 10, 2015 at 05:55:29PM +0800, Chris Zhong wrote:
> This adds support for the BOE TV080WUM-NL0 1200x1920 mipi panel to the
> DRM simple panel driver.
>=20
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> ---
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 33 ++++++++++++++++++++++++++++++=
+++
>  1 file changed, 33 insertions(+)

This patch needs to be accompanied by another patch that adds the DT
binding documentation for this panel.

Also Documentation/devicetree/bindings/vendor-prefixes.txt doesn't seem
to contain a line for "boe" yet, please add that in yet another patch.

Thierry

--s/l3CgOIzMHHjg/5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWM6kuAAoJEN0jrNd/PrOhfnUP/0WsnvWFAzKTWInQnHVryTfG
kdodxo92IzvrOxoYcU+pV4eFKmQ48epfJiv17GuiWlO8TFx5QwL4Nriw2mI4KVMG
Iank7qussfDmuXfEHz0qeC9b5fAIGvMZB5/L0JAqNywL435rsP1y4Q2AwZAvdEJk
lSUFVOT9u+Jj8HEGTOKKsuk74ZmECeborrDdRy85/q4RTD3JWaEXcvFPS+sZVfQP
jRFLqQTCTgAwV9GK60bbo2Z/j0tkdOxMJLwK9mr2gCCk2bebHd303E2q/7vsxm4/
BaxcjyWuHOQU96iBtYRKBk3ccWgaDoz+lm6HIvBVkQKXyMgBPrO2+9+kf8DWfLWg
ty6n9OWsRhim7X5HhFjZXbPdomHbDIIOwIzMLepjKEw3+p2N5i2qKbNMWYOhJK7x
qwSQrl1iN0KQQ2InMawkeVQRJCAzVlYbNxA/U2LaJyLwMZo/yhgTA4foUElYWpuX
OC9yp+p2A7muS6iPsX0Y33jNBzqWerSTIA0+6WIFhFSs65VDXvOGHJei6MqXleN0
4QFGNXAdvU/NfSPm6oBa8zudPStRVzzWgitZAXfl+6I5MPVsVivfwSW54OYVg8W6
4ZIJ1Z48whJTgmzgC7/Peur/LvXjFTlS75RM+EgOkpzlNNmjiZ9gkzATRCC98Ye+
eophJJY5f2KE7/OLrn4l
=lldL
-----END PGP SIGNATURE-----

--s/l3CgOIzMHHjg/5--

--===============0214247360==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0214247360==--
