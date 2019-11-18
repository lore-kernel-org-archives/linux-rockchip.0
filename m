From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
Date: Mon, 18 Nov 2019 11:57:05 +0000
Message-ID: <20191118115705.GB9761@sirena.org.uk>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2259580119196998288=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, bhelgaas@google.com, andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============2259580119196998288==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 16, 2019 at 12:54:19PM +0000, Robin Murphy wrote:
> The 0V9 and 1V8 supplies power the PCIe block in the SoC itself, and
> are thus fundamental to PCIe being usable at all. As such, it makes
> sense to treat them as non-optional and rely on dummy regulators if
> not explicitly described.

Reviewed-by: Mark Brown <broonie@kernel.org>

This not only makes sense it's a fix.  regulator_get_optional() should
only be used if the supply may be physically absent (eg, when the
feature can be left unpowered or where there's an option to switch in an
internal regualtor). =20

--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ShxAACgkQJNaLcl1U
h9DCtgf/RQHTCds9GoZ1Sj3Tl0J5+R70EQ9c6ISqtLqjuDF/emFg+BU55Dke2NTj
0eNey3v6n5wVJjD9wSyJ8+WVnMtlSAY7LT7tyMmZGt9PNzzJbFZwiF+7ep/Na16w
5+mt+ntFxabbeb1pGl8G/A8nF8j5AjrMmTYwRBXiF/kPKyZn2HjDknuIX+pbDmvB
vwb00AIe6ffnIBIyjuAz9GKdZWhXmrFJ0zhTjXJX3FDVWEZF6opRvssMoyT+f3Dp
MwheEYpDTqA+EpAqj7MgKTYM4aXQGLpeGq58FnYc0VJYc/ste4D2jT0hwLdPVhju
VKbmII5/jnkdEF1IJ73y1lbEXMF8Hg==
=lbFC
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============2259580119196998288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2259580119196998288==--
