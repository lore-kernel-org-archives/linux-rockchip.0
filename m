From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Date: Thu, 6 Feb 2020 13:57:18 +0000
Message-ID: <20200206135718.GQ3897@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
 <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="k1RcuuA4CmYq3pph"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ad2c941a-9724-510e-959f-3cca3cab1dc2-5wv7dgnIgG8@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--k1RcuuA4CmYq3pph
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 06, 2020 at 12:36:04PM +0000, Robin Murphy wrote:
> On 2020-02-06 11:46 am, Mark Brown wrote:

> > This makes sense but it is an ABI break so is going to need
> > quirking for existing boards that unfortunately rely on the
> > existing behaviour.

> I guess the existing (mis)behaviour could be predicated on an
> of_machine_is_compatible() check for Rock64 boards - it's ugly, but should
> do the job if you feel it's more important to be 100% strict about not
> regressing supported systems for any possible kernel/DTB combination.

Yes, that's what I'm suggesting - we don't need to be exhaustive
but having an obvious place for people to put the quirk in if
they are affected is much better practice than just silently
letting things break.

--k1RcuuA4CmYq3pph
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl48Gz0ACgkQJNaLcl1U
h9Dqlwf/e9pbZnoHIpXKjbaTLD0JTMQR2bflNKfkFgJa4HN0EBmRU/2zzjhQsMBj
FwXbRw0mbFlfh8DvJcHwjp9Nt+DzRk084QZm1xjXyIdok04lxQCq0/XwBENKJGUp
icw2FFpQGCVQJRixdXMaY0M0woDlf8GF/gk+KkNrJWvtD3JYD3pbaNqDO3Sfg4C/
ECfMVskfkS0XSKhcMWqbmFBf8ImMABUOu8qV6oWbEmxRlmjMxv28pNjXi+L96X83
qZ9St2FvccCApJ7twkomusHVtpw62Cpwy0OOwxOFIjEWTHXzhyAH/vFtPmMJwZJJ
vHRSZAgaioZ451LfVRCV/L6YnOeigg==
=S0B3
-----END PGP SIGNATURE-----

--k1RcuuA4CmYq3pph--
