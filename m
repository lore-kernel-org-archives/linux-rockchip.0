From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Date: Thu, 6 Feb 2020 11:46:06 +0000
Message-ID: <20200206114606.GM3897@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+F2yqQIdYdj7GirX"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--+F2yqQIdYdj7GirX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 06, 2020 at 01:07:12AM +0000, Robin Murphy wrote:
> The RK3328 reference design uses an external line driver IC as a buffer
> on the analog codec output, enabled by the GPIO_MUTE pin, and such a
> configuration is currently assumed in the codec driver's direct poking
> of GRF_SOC_CON10 to control the GPIO_MUTE output value. However, some

This makes sense but it is an ABI break so is going to need
quirking for existing boards that unfortunately rely on the
existing behaviour.

--+F2yqQIdYdj7GirX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl47/H4ACgkQJNaLcl1U
h9DSgAf/fI2jTkBLGwfZiU8QU+VXIx/+BPEpU9gRjE/WwtBF2zlRRy3WLOiYqQ5Y
Y+Jgt8z1POzBClW3R1EYdRfuno7LdCv0Uw6x3N5lGI48qRilCVvtfDq7wUkMqsCT
o6WrsChoeB3VFYsyKSD/ZKjA2Zxie2VYH4actQ/kdat4TeYXyIVQ/IcEZsMZXPmL
RydsLYzjOLFElnxNVA8FlHbumD9t1u0qRvCW9G0ASdoNa1IHA0AeYUoVBFo2/yGo
5AQ5AZNMfjrTfpvzRbg7zyQdztURC/VUqnqk+dSFOzZ8SC91lj7mw9IC1+9dRF5R
1GxdYx+sA24Phw4T+p07RZO9aUY6xw==
=pHJO
-----END PGP SIGNATURE-----

--+F2yqQIdYdj7GirX--
