From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 RESEND 2/5] regulator: rk808: add RK809 and RK817
 support.
Date: Mon, 3 Jun 2019 19:22:21 +0100
Message-ID: <20190603182221.GA2456@sirena.org.uk>
References: <20190603170900.5195-1-heiko@sntech.de>
 <20190603170900.5195-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="XiX5sJQOWZsNRXst"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190603170900.5195-3-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, tony.xie@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


--XiX5sJQOWZsNRXst
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:08:57PM +0200, Heiko Stuebner wrote:

>         default:
> -               pr_warn("%s ramp_delay: %d not supported, setting 10000\n",
> -                       rdev->desc->name, ramp_delay);
> +               dev_warn(&rdev->dev,
> +                        "%s ramp_delay: %d not supported, setting 10000\n",
> +                        rdev->desc->name, ramp_delay);

This appears to be unrelated and should've been a separate patch.

> +static int rk817_check_suspend_voltage(int id)
> +{
> +	if (id >= RK817_ID_DCDC1 && id <= RK817_ID_LDO9)
> +		return 0;
> +	return -1;
> +}

Rather than have these checks in the implementation you should just not
define these operations for regulators that don't have the
functionality.

> +static unsigned int rk8xx_regulator_of_map_mode(unsigned int mode)
> +{
> +	if (mode == 1)
> +		return REGULATOR_MODE_FAST;
> +	if (mode == 2)
> +		return REGULATOR_MODE_NORMAL;
> +
> +	return -EINVAL;
> +}

This should be written as a switch statement for clarity.

--XiX5sJQOWZsNRXst
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1ZVsACgkQJNaLcl1U
h9A1LAf+IawRfBxIBUR2HWNgjqoJMnLF0GaliOyoJBELCf9chqPQk1+aTKdnn4l0
MLYTCsLJA77ur0D8ncMYsPvvBRUasG5U0T5XEyJzXWYNIx7togwumtv/w3JAnBSh
RRMSKYhaS/wNrVHdYcVt8SzVVrVkB5OsYKXzPDbRRFTmeHXrxO2YKjLY9AQK93Sg
cruWOCSi6HuzhAxlr5uf9TcaEM6VsN4+0HXsKT68T9iJ87q5/lhsL6REBsayhaGF
/hlyx7ZqehspqO23eFUX1g4wTSTdatd1UXZ8RoqzrFuOX44+hsw0snF9GeCCwVUH
KWc4k3Qa6PrxyYA9/f9G316d63x0YQ==
=QMyH
-----END PGP SIGNATURE-----

--XiX5sJQOWZsNRXst--
