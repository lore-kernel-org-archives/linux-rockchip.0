From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 2/6] ARM: bootm: Try to use relocated ramdisk
Date: Wed, 13 Jan 2016 10:27:55 -0500
Message-ID: <20160113152755.GZ3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-3-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1158278362=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1452675200-15941-3-git-send-email-jeffy.chen@rock-chips.com>
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
Cc: linux-rockchip@lists.infradead.org, Joe Hershberger <joe.hershberger@ni.com>, Jan Kiszka <jan.kiszka@siemens.com>, u-boot@lists.denx.de, Tom Warren <twarren@nvidia.com>, York Sun <yorksun@freescale.com>
List-Id: linux-rockchip.vger.kernel.org


--===============1158278362==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t1CmwkW5H+10rlDA"
Content-Disposition: inline


--t1CmwkW5H+10rlDA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 04:53:16PM +0800, Jeffy Chen wrote:

> After boot_ramdisk_high(), ramdisk would be relocated to
> initrd_start & initrd_end, so use them instead of rd_start & rd_end.
>=20
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Acked-by: Simon Glass <sjg@chromium.org>
>=20

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--t1CmwkW5H+10rlDA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWlmz6AAoJEIRElH1W1v7NPcYQALrkB0/8UslvYfIo6KCyJv4t
eBJLxRZy8jVYawjxkU3685OSs492/N5XTZHUt6Huxd2HIGrRuRZ3ESW45ToPqUiT
siharEu6BM5VOCdjK9OokaTF7+VmQvsiwwAW5xrNkHoI+seltFiaQHY/tcsyJjSX
3toRePdXOyKvL2EO4gDD/o+AAdtGi+hojU9ly1LtnWvlDJIeVftxd9Ri8fQ9b9FM
vJ6+zOjqPgHLK+fegDpRrmJ8gvGE1+ky+SCuS2yWLJ5gILRCrjbPSoDL0/5X+f76
7zm2VtEM+v7amidFY+Rkt7NFATJPhwF6Mt5B4PPS97MSH3EdMOFeWPfR89/qv8Ss
QucPeJbf2D4Zflb9T53H6k8zYbeBZjuKIngPNL0j3+Qqj/JeLTCUXdjPY2T7K+f2
fctkZhNMhWi9i6Z6IWlnToIJnQqzuhBVTMhdlpgopukRgUFt0VP+SzCdEv3jHgtw
OruPw4qVTlK49lZMhXtErNn2Ko7cDvB90dNq3opp4GsYmDV7zFi2kOMAT1jLZuwd
miBiBNeeFWj7kFjVkS578CiuCjdK4Um0a/hrd0y0sNNIsQ+1/BfAd1f3xcFHqaI4
TSVFcQ7MpqVLNufuDk5pT1fqqT5U8f4MAoB0RT9yySvPz0uDxXuOkIfDja517oXn
dlHd/ShbyZPTFO5BF4t8
=lw2+
-----END PGP SIGNATURE-----

--t1CmwkW5H+10rlDA--

--===============1158278362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============1158278362==--
