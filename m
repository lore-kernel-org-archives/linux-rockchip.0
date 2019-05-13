From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Mon, 13 May 2019 17:01:53 +0100
Message-ID: <20190513160153.GD5168@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
 <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org


--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2019 at 08:57:12AM -0700, Doug Anderson wrote:
> On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:

> > It isn't clear to me that it's a bad thing to have this even with the
> > SPI thread at realime priority.

> The code that's there right now isn't enough.  As per the description
> in the original patch, it didn't solve all problems but just made
> things an order of magnitude better.  So if I don't do this revert I

I'm not saying the other changes aren't helping, I'm saying that it's
not clear that this revert is improving things.

--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzZlPAACgkQJNaLcl1U
h9C7UQf/X1Is6ypg5kydcvdMhkuJTCwQwCyVTp61r+ONkbX8IGTCy/peNvsyuQZd
qfelfepJ1N1M1Kss7RehpaEV7TWECxlECSrfCA6a3slYTSytIRHyIQHQx6KD14xM
YOmLPaSF4xzdMboJP4M8zVRQSDQZVWAvohvZ+xIAqoMrzd69Ew6emJeVG0aUQ++L
DGehingQgrrHdtla+ywW8NJrat7K2garMK6syGdKS4DO90+0wUoroy9KOuvccwFQ
QL6hcR3spWrlv4srjapt71wJGwf/S3k1R/VAIYe+7qVKj6glm94L0ziba1BdBOgP
B4t298Dh3eaZZyPtO1x9DvgsYz2zxg==
=SNtQ
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--
