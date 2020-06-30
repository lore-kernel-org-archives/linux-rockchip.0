From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: rockchip: add format and rate constraints on rk3399
Date: Tue, 30 Jun 2020 11:40:47 +0100
Message-ID: <20200630104047.GD5272@sirena.org.uk>
References: <20200630091615.4020059-1-yuhsuan@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="IMjqdzrDRly81ofr"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200630091615.4020059-1-yuhsuan@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Yu-Hsuan Hsu <yuhsuan@chromium.org>
Cc: linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org


--IMjqdzrDRly81ofr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 30, 2020 at 05:16:15PM +0800, Yu-Hsuan Hsu wrote:
> S8 and S24 formats does not work on this machine driver so force to use
> S16_LE instead.

> In addition, add constraint to limit the max value of rate because the
> rate higher than 96000(172000, 192000) is not stable either.

What is the source of these restrictions - are they due to the component
devices?  If they are then the component devices ought to be setting
suitable constraints themselves.

--IMjqdzrDRly81ofr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl77Fq4ACgkQJNaLcl1U
h9BqcQf/bBQI6UlLdBzbns/XWHMzns0NgqJqIDhyUaAV2cK/NnbvoadF7Q/Ierez
Kksy56oOcNJtiTpSuhy/Z2ubQNKNkcMYkwVSp3M3FllU/QxR59Ia7N8P4xkvbOsx
a5niu9cUSP94dygzita0jqcVvYkXXAaC9IHK/v11WwKsoM8KTgP3CWgksBGWJqVm
uTY3zisJtV1m7GIHObSu0Vr9c6XJrCi5G9qDZSxPyq+Fhcpz6nFtA3sN7Ctu5j8J
G8HdFjK69Suj6ESd13Xkd2/ELgNGzpA/W0SVpVkJzmS4Mbj6iyUegxXIk5LjVx4C
XfuoMxggN8y3ux+S5/MlmEw9AqU/TA==
=1Ldw
-----END PGP SIGNATURE-----

--IMjqdzrDRly81ofr--
