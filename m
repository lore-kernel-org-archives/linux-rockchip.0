From: Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] PCI: rockchip: Properly handle optional regulators
Date: Wed, 28 Aug 2019 17:41:03 +0200
Message-ID: <20190828154103.GA10422@ulmo>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
 <20190828153243.GZ14582@e119886-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============9218994829426440118=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190828153243.GZ14582-lUWeo1i9BhrZROr8t4l/smS4ubULX0JqMm0uRHvK7Nw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Vidya Sagar <vidyas-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============9218994829426440118==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 04:32:44PM +0100, Andrew Murray wrote:
> On Wed, Aug 28, 2019 at 05:07:37PM +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>
> >=20
> > regulator_get_optional() can fail for a number of reasons besides probe
> > deferral. It can for example return -ENOMEM if it runs out of memory as
> > it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> > problematic because it results in these legitimately fatal errors being
> > treated as "regulator not specified in DT".
> >=20
> > What we really want is to ignore the optional regulators only if they
> > have not been specified in DT. regulator_get_optional() returns -ENODEV
> > in this case, so that's the special case that we need to handle. So we
> > propagate all errors, except -ENODEV, so that real failures will still
> > cause the driver to fail probe.
> >=20
> > Signed-off-by: Thierry Reding <treding-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>
> > ---
> >  drivers/pci/controller/pcie-rockchip-host.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/=
controller/pcie-rockchip-host.c
> > index 8d20f1793a61..ef8e677ce9d1 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct roc=
kchip_pcie *rockchip)
> > =20
> >  	rockchip->vpcie12v =3D devm_regulator_get_optional(dev, "vpcie12v");
> >  	if (IS_ERR(rockchip->vpcie12v)) {
> > -		if (PTR_ERR(rockchip->vpcie12v) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie12v) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie12v);
> >  		dev_info(dev, "no vpcie12v regulator found\n");
>=20
> In the event that -ENODEV is returned - we don't set vpcie12v to NULL, ho=
wever
> it seems that this is OK as vpcie12v is tested with IS_ERR before use eve=
rywhere
> else in this file.

Yeah, I was trying to keep the diff small here. There doesn't seem to be
any canonical way to mark regulators as "not available". This driver
leaves it set as an error pointer, the Tegra PCI driver sets it to NULL.
They're both valid ways to do it as long as they use the proper checks
before using them. So I wasn't trying to force one way or another, just
kept it the way it was and only fixed the problematic checks.

> By the way it looks like this patch pattern could be applied right across=
 the
> kernel, there are also others in PCI: pci-imx6 and pcie-histb.c - not sur=
e if
> you wanted to fix those up too.

I hadn't checked any other drivers, but I can take another look and
prepare patches for them.

> Reviewed-by: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>

Thanks,
Thierry

> >  	}
> > =20
> >  	rockchip->vpcie3v3 =3D devm_regulator_get_optional(dev, "vpcie3v3");
> >  	if (IS_ERR(rockchip->vpcie3v3)) {
> > -		if (PTR_ERR(rockchip->vpcie3v3) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie3v3) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie3v3);
> >  		dev_info(dev, "no vpcie3v3 regulator found\n");
> >  	}
> > =20
> >  	rockchip->vpcie1v8 =3D devm_regulator_get_optional(dev, "vpcie1v8");
> >  	if (IS_ERR(rockchip->vpcie1v8)) {
> > -		if (PTR_ERR(rockchip->vpcie1v8) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie1v8) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie1v8);
> >  		dev_info(dev, "no vpcie1v8 regulator found\n");
> >  	}
> > =20
> >  	rockchip->vpcie0v9 =3D devm_regulator_get_optional(dev, "vpcie0v9");
> >  	if (IS_ERR(rockchip->vpcie0v9)) {
> > -		if (PTR_ERR(rockchip->vpcie0v9) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie0v9) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie0v9);
> >  		dev_info(dev, "no vpcie0v9 regulator found\n");
> >  	}
> > =20
> > --=20
> > 2.22.0
> >=20

--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1moI8ACgkQ3SOs138+
s6F7AA//RclYPyFWgwjoCkQPsUjwPF986Gum7Zcjlo1Zkt4qcKq3R3wKPfd88eaq
/21fo0lQN5keqY+cTezH7so5LGEx1KTUmDi/e/d78dSFSm1Xcn4xg8INC8gY3boL
gwQMhsOr5tG/bR+mVbmS5gaITGJW53EOfWTtQg3pluzJdMuWjrVgwB82dIrsQLD7
wqD5p1Byf7JsEi035munGTUavP5SS1wHYWWX/OkncEQvyAHcYrk/+hOP0bKJQ7Nj
x+MhLqwc/jPTOfsiHGW2m8WazwLPtHfhI/y9QB1Bdb2nXrBoVC83/Jh6172NW4iX
etNOSy+51U19U1fGmBU/lB1GwoxcHWmaNebquAF1lBeTS+HjB/WgLkQw44rEFbkr
wP2n+hGOn7/I2dhgEJ5TokF+oxnFw4DLIXWmiyT0O0W8xU7CxNCYJsY2gHdfl0Yc
R4ib9+zFxTktefBNVgBcNIF0KXjnwUOcdV9rGcWMJeDTW9ua/VLgK6eOpIl+lNnh
nCl0lJEypiZoemzKAmJxiDAvy0Jzza2nT5Nxz6sPWsJn+C/V0RSiBVjiS+uTOqB2
q1BvIMhw4ZGK6Q6ZX2OASEjgivNu7yhAvR+iqeDUEDRPVW4aGmJqp08uzg9GOWpP
oljMoPWyxRWGAOJtiIHrF1lTetunVdDWm5h4XHkYFy/92cRbhpw=
=rwiw
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--


--===============9218994829426440118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9218994829426440118==--
