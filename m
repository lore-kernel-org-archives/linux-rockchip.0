From: Mark Brown <broonie@kernel.org>
Subject: Re: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
Date: Thu, 23 May 2019 14:12:07 +0100
Message-ID: <20190523131207.GC17245@sirena.org.uk>
References: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="JgQwtEuHJzHdouWu"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Eduardo Valentin <edubezval@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com, mgalka@collabora.com, matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com, Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--JgQwtEuHJzHdouWu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 22, 2019 at 07:23:09PM -0700, kernelci.org bot wrote:

>   Details:    https://kernelci.org/boot/id/5ce5984c59b514e6a47a364c
>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error

It looks like this issue has persisted for a while without any kind of
fix happening - given that the bisection has identified this commit as
causing the regression and confirmed that reverting it fixes shouldn't
we just revert?  My guess would be that there's some error with the
pinctrl settings in the DT for the board.

--JgQwtEuHJzHdouWu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzmnCYACgkQJNaLcl1U
h9DdRQf+JZtHoJEVkzFX602V6UOrnMDu66zIL9WEt8FQA28mY1VFaEe5jdz2Qhow
EoBDngfyg8tk3oipmTqKRQ6xmCwGyTzYJBJn/OXjCqJHV09ZtJFmlo70EVppBO/c
rClNwCjcwaQpC1fekhcBbZdx0AmeVNkfSD/CKtEa0ZppBeqxch+u9CEL4QzR9LPC
TSTRNXixW9s7SdI/RVs9EO0Gskr0w+M1QBPjhyegJHlny7FI9QYPU9RMUrtuIqrH
zcVRf7D/rzmnS6jHOZCvEQ49PXwcBHv/KnNp6t7ttNz5gr0EIKhaFEICSnTSjMh+
eFF4fQBLHILKCtKUTkNWZKbi4Qcl6Q==
=m0Lf
-----END PGP SIGNATURE-----

--JgQwtEuHJzHdouWu--
