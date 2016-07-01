From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Fri, 1 Jul 2016 09:06:14 +0100
Message-ID: <20160701080614.GA9196@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: boris.brezillon@free-electrons.com, lee.jones@linaro.org, briannorris@chromium.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, lgirdwood@gmail.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 27, 2016 at 09:53:11PM -0700, Douglas Anderson wrote:

> Note that this patch is atop Boris's recent PWM regulator fixes.  If
> desired it wouldn't be too hard to write it atop the old code, though
> quite honestly anyone using a PWM regulator should probably be using his
> new code.

Given that those don't seem likely to go in any time soon and aren't
going to go in as a fix can you please respin against current code?

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXdiR0AAoJECTWi3JdVIfQTzUH/AiruUR6x1MGajD5DBAp+eu6
o8HCV6582VIaD1aJahKG+lxfE9ri0moU+88tus3axF+/pzxWw1glqcW6C9bne/s8
sxGx1csr2sx/CCeoQ8ESjkrKfKy1BxRLhdMfA9Ntwc8hzL3vPTDomK8/rdK3bbfN
07ZQ+ZSiG+efAnvd0QQnUUXM1WE26/A+olmRNrLzIy8YsFXvcrNwDczNIJmvTo01
wbC8MdI67v1zE4Ym0pZ1dm9/Y/OeUk7JwRL9LLsxPmSuvua+Tqu2rL+K3voeacTH
WwPEhNhtIfvG1+8V3dFiCNdVL7nJ2TQCzLtHZ9ySfAl9D2MPQmNxpPEvAFYRiHM=
=IqZ7
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--
