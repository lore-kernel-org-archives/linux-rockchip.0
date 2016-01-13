From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 4/6] rockchip: kylin: Add default gpt
 partition table
Date: Wed, 13 Jan 2016 10:28:06 -0500
Message-ID: <20160113152806.GB3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-5-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1495794468=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1452675200-15941-5-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1495794468==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Oxb4CwPtu7fc4ajA"
Content-Disposition: inline


--Oxb4CwPtu7fc4ajA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 04:53:18PM +0800, Jeffy Chen wrote:

> Add default android gpt partition table for kylin board.
>=20
> Use "gpt write mmc 0 $partitions" to apply.
>=20
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Acked-by: Simon Glass <sjg@chromium.org>

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--Oxb4CwPtu7fc4ajA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWlm0FAAoJEIRElH1W1v7NDnMP/2D3fNpJhWJlF8m5yQC+agJH
/+pyq+1v+Ktm2V7hf04PLt32a4NwpR4QKfcEmtqXZx1eNfOJBlteG8n/RUb9KXJk
jqH5kRkfBCjYlnPfN4ucp2vlpSKKbYn+zaNp2XzzXonaQle/rtNIS2HCQFij8HLk
ZeF7GKoHGZOX1O7jG75Sbtwu1SNOinwvIVQ9kv3euyfKpg8rryGvZIvDWkVnjOjj
/It9DShF2yWGoELzuiGlio5xjorco1vciidCw0dvuF313ITM1QlQToVsRYObrS6L
KDVktxGqYC0A+ZsE6uNol5JErlnzRBDnGZVBmumT06pB/G4snCkxzV39LOWwzIFT
hCzNX3IOHfSz8jEd3mZbgP+4h90OX0fo0zSR2vISeATIATiv3GExXtNhptbvpGtJ
TeU2dEab37vHzf3UmDvCTMi8orN9kfjvKOgKiLvyC+AeSjI8wjtQcVOdhI6Za6B8
DX9WKDDkyMFhT5if59N0nah8LcJjRLfRwdiER+blc/cyt6Dz9dijHAbsqvLQ87oo
kxMmjI9LxLUgtpbg1xcSeFHnBI5/JrYvt0uw6fCDHnWsQMpaWJPf2WxPWwNPRayX
WJoVx2SrNuA4tRSwx8RGwL8CaiXTumiHAGEhXtU1zpkxbQeMuvaySzSAVCjJpiK8
lZGR63U618rMwQ56XgQi
=jq8G
-----END PGP SIGNATURE-----

--Oxb4CwPtu7fc4ajA--

--===============1495794468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============1495794468==--
