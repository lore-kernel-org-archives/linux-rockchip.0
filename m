From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Date: Mon, 18 Nov 2019 11:59:30 +0000
Message-ID: <20191118115930.GC9761@sirena.org.uk>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0451601358706266005=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
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


--===============0451601358706266005==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> Null checks are both cheaper and more readable than having !IS_ERR()
> splattered everywhere.

> -	if (IS_ERR(rockchip->vpcie3v3))
> +	if (!rockchip->vpcie3v3)
>  		return;
> =20
>  	/*
> @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchi=
p_pcie *rockchip)
>  		if (PTR_ERR(rockchip->vpcie12v) !=3D -ENODEV)
>  			return PTR_ERR(rockchip->vpcie12v);
>  		dev_info(dev, "no vpcie12v regulator found\n");
> +		rockchip->vpcie12v =3D NULL;

According to the API NULL is a valid regulator.  We don't currently
actually do this but it's storing up surprises if you treat it as
invalid.

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3Sh6EACgkQJNaLcl1U
h9AOkgf/VTgP3xuhrmrWsbUIyqn+9NRUQlo2cBfiCB08Dqwn+Nyoeb6LLY0SnG6R
ezJOmBDiE/Ih8trc+IRq/nAgaM620I3ZLeodmwtndxikXe2QEl59zkpmiY3JQDlG
prOhuT1YC88FD5fPT1bmSxJyRpLwZ/dI4fP0SwuGn7sYXdv0285guwMhP80Kjn9p
Z8Z5x2AG7D41r8QMatZ0q0/W2rma7jdcE4J7yllyxDOHA8BqMX8GQs3UGohFU1GR
9bs8wM7zhZYoWS7YCuRmytgh85YUV1i/iM0OqGhzni4/ir6jQ89uZA4/KEk5S/MO
OkxQcqTDVXdu97bEOyC3ofVQiby50w==
=OHJP
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--


--===============0451601358706266005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0451601358706266005==--
