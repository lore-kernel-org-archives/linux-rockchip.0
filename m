From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Date: Mon, 18 Nov 2019 18:38:56 +0000
Message-ID: <20191118183856.GB43585@sirena.org.uk>
References: <20191118115930.GC9761@sirena.org.uk>
 <20191118142428.GA27459@google.com>
 <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3761451128062341133=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, Bjorn Helgaas <helgaas@kernel.org>, andrew.murray@arm.com, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============3761451128062341133==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KFztAG8eRSV9hGtP"
Content-Disposition: inline


--KFztAG8eRSV9hGtP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 18, 2019 at 06:15:38PM +0000, Lorenzo Pieralisi wrote:
> On Mon, Nov 18, 2019 at 08:24:28AM -0600, Bjorn Helgaas wrote:

> > I don't know anything about the regulator API, but the fact that NULL
> > can be a valid regulator is itself a little surprising :)

regulator_get() has always been documented as returning a valid
regulator or an ERR_PTR().

> if (rockchip->vpcie3v3 == NULL) is true the driver would currently
> panic the kernel AFAICS.

We don't currently use this, it's just something we could do.

> Also, by making NULL a valid regulator, it means that regulators
> (ie pointers) with default values are valid whether we call
> devm_regulator_get* or not. I understand this patch can be dropped
> but that per-se does not make this driver code any more robust AFAICS.

That's one reason we've not done this.

--KFztAG8eRSV9hGtP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3S5T8ACgkQJNaLcl1U
h9DFqQf/cTutH2x122zo7UHe+cKZ/hNpf/F5YBX4bqzxzmvQEZ47zT6xkwjxPxHr
vFjJW5qbKE/jVgtWX0e2B3ly0K1ekarqJLQ3y19TAO7bkJ16jIMp31fh6IK0HfWC
upzwAVBEH+dEpBNlaa1RFVvaDJBlL/MGEi+VhNqOae/Pi4HrgOhmCgCenG+ux+Wp
Bgk5JvIKqef7lkKvMETRkIVgsn6YA0uVHqQtnjx53Gz3V8KlAjWF5MEQ2vlIUHPt
VQ/a+ApxM2cBGsmcipwo2i516dDPOyS3WJCujf2AnVJtNjU6FX3kH7+C0TTL1Rhp
Nqk5/0Fy9gm8n8qwXsas38Ysz5XYEw==
=vY9F
-----END PGP SIGNATURE-----

--KFztAG8eRSV9hGtP--


--===============3761451128062341133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3761451128062341133==--
