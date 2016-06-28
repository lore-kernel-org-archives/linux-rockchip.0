From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 19:52:44 +0100
Message-ID: <20160628185244.GT17217@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GAoked8QSizNecZ5"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: boris.brezillon@free-electrons.com, lee.jones@linaro.org, briannorris@chromium.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, lgirdwood@gmail.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--GAoked8QSizNecZ5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 27, 2016 at 09:53:11PM -0700, Douglas Anderson wrote:

> Note also that the upper bound of usleep_range probably shouldn't be a
> full 1 ms longer than the lower bound since I've seen plenty of hardware
> with a ramp rate of ~5000 uS / uV and for small jumps the total delays
> are in the tens of uS.  1000 is way too much.  We'll try to be dynamic
> and use 10%

Surely the upper bound here is just an upper bound and we're essentially
just saying that "anything over minimum is fine" here?  Though now I
look at the implementation it seems it's doing something entirely
unehelpful and actually trying to delay for the longest possible time
which doesn't seem like what we want or what the usleep_range() API
would suggest :(

--GAoked8QSizNecZ5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXcsd7AAoJECTWi3JdVIfQDqIIAIFHe+8MYYXOBMAEVR2Zl1ZA
A41FsjdWrFfZjDLLpagnrxRhmuxqETfX9y3gDv+Qge786KZ4LoCYdQDoWVHKOzI7
H6knvaXX7TmnN1UmGNzlb5NCPYPkOupgS09ddtZ7cxuUB73hUTUuPumYovIfyvyO
tVCQeR3tH1C6q0qGzHccy8ISOeFusPLYMr0bb/6pwD+QnM80Geh/kcmZ9RMAZ3En
2X36OGhAAgiNbnzejaCwGbFjtnwnSmiRb49qzIGIwmjH0gLIT+1iB3jSd/X9zlrv
g5VmqinPoqA6tMPnGw2NDnZWgsbY/X4ANEaFIN8db4Kp08xqjS9X6G6VvUrQ+As=
=3ZI4
-----END PGP SIGNATURE-----

--GAoked8QSizNecZ5--
