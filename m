From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Mon, 13 May 2019 17:47:38 +0100
Message-ID: <20190513164738.GE5168@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
 <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
 <20190513160153.GD5168@sirena.org.uk>
 <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org


--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2019 at 09:03:28AM -0700, Doug Anderson wrote:
> On Mon, May 13, 2019 at 9:02 AM Mark Brown <broonie@kernel.org> wrote:

> > I'm not saying the other changes aren't helping, I'm saying that it's
> > not clear that this revert is improving things.

> If I add a call to force the pumping to happen on the SPI thread then
> the commit I'm reverting here is useless though, isn't it?

Well, I'm not convinced that that change is ideal anyway and it does
leave you vulnerable to further changes in the SPI core pushing things
out to calling context which feels like it isn't going to be helping
robustness.

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzZn6kACgkQJNaLcl1U
h9BaBwf/YLbKPIH1GfhSAIJxQR6QQOaXbxIW/A+t1Jg0dZHRhJPuF7L2TL9bo+A9
aU2XQE4/MDEHMZ2/pAMwm4iB/AI/1XtXAsizVcJApEtEyivGklahbXpmLX9B3pRA
hYuD1loKDS10tOIuXuNIH6kDs36n1mHdCIpvJ7cqQEkYXE43P8vEgnqYfvrjNA7q
UY0XmxAECBZNVOExqqRPupnt1aAsJefXDtW6D7cdrAq92etDMCn1i6VAdBp++3f5
v76rZOdAihbWBJV+AGX5hIpO7m5a7fHZNELJu7tJu1G6kahBLbB/XtQKoOTSUObs
ffKy1s8njB0vrGUu7QFr4KP0hjnQ4g==
=aiE6
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--
