From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Date: Mon, 10 Feb 2020 13:56:44 +0000
Message-ID: <20200210135644.GL7685@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
 <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
 <20200206135718.GQ3897@sirena.org.uk>
 <CAMdYzYqTEnG_Q-8SvO2R6PeaPXQ3VBKu6iVYhYvb=wK7tT7c3A@mail.gmail.com>
 <bca13994-a8b1-fa21-fdf0-9f362d693f39@arm.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sMZCuqyhuhd4ycTi"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <bca13994-a8b1-fa21-fdf0-9f362d693f39-5wv7dgnIgG8@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--sMZCuqyhuhd4ycTi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 06, 2020 at 09:38:11PM +0000, Robin Murphy wrote:
> On 2020-02-06 6:05 pm, Peter Geis wrote:
> > On Thu, Feb 6, 2020 at 8:57 AM Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> >>


> compromise that isn't too hideous, preserves the logical cleanup but
> at least prevents audio going silent with old DTBs (plus handling GPIO
> probe deferral properly which I forgot about first time around). How
> does this look?
>=20
> Robin.
>=20
> ----->8-----

Please don't send revisions of individual patches in reply to discussion
of a series, it makes it really hard to follow what's going on with the
series.  Please just send patches normally.

--sMZCuqyhuhd4ycTi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5BYRsACgkQJNaLcl1U
h9Du0wf9HO3Q6AaZJ1I4tRS3loJ/OXK/v8QMTdDtKmw/Ek+JwYeQh3npOWMQBItK
6pwxmpW5l4Cej0jPXpea00qCFYlQEadT1topkaNHLoNic2dlkVSv2seRbm3R6dwP
ghjNr4Mwv3vycd1P46hmJZsB+eDH4HmZnQGKSFkdz4i1j6MOLfwWxdnJLWpOP740
dwaB4VXKiS3EKCw5A3Q07jMCTuNyeXumjmq79/4POKCmN7FcE5Gr64c747stLQ+g
cDRDRKWiVhLuAFTDTnHf4ry9bTlGulap1bs2xN2qlmbxIKMT5ZV/UGQDhqrDQ6MV
/A1zX6aZmKOe6X82hUl4CSeTgIR6HQ==
=TcrG
-----END PGP SIGNATURE-----

--sMZCuqyhuhd4ycTi--
