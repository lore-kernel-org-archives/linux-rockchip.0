From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 20:53:37 +0100
Message-ID: <20160628195337.GC17217@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160628185244.GT17217@sirena.org.uk>
 <CAD=FV=UNMhDYy3r+4a4FF8Ndwt+qNuV7_pOC=kzoaUxLfYYp4Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4472963734995732744=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=UNMhDYy3r+4a4FF8Ndwt+qNuV7_pOC=kzoaUxLfYYp4Q-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--===============4472963734995732744==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QFYA38BK7dvhx8Kf"
Content-Disposition: inline


--QFYA38BK7dvhx8Kf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 28, 2016 at 12:31:19PM -0700, Doug Anderson wrote:

> In all seriousness, I think the design for usleep_range() is to try to
> batch up wakeups to allow longer periods of sleeping and to optimize
> power.  This you want to sleep as long as is allowable and then if you
> happen to wakeup for some other reason anyway then you process all the
> things whose minimum has passed.  IIRC it was trying to get back to
> the good old days of only having jiffies where everyone was
> synchronized on the tick and you could sleep till the next tick after
> all the work was done.  When you think of it this way then sleeping to
> the max makes sense.  ...but it also means that you need to be careful
> and really not set the max too high.

That's what I *thought* it was doing, but when I looked at the
implementation down to the hrtimer level it was explicitly saying it was
actively trying to deliver the maximum delay but might do less.  I'd
have expected that the implementation would check to see if there was a
wakeup scheduled in the range, piggybacking on the first one if so, and=20
if there was nothing it'd go for the minimum (perhaps with a bit of
rounding).  Oh well.

> Of course, in practice I've found that often usleep_range() 99% of the
> time sleeps for the max.  That can lead to some very subtle bugs if
> your min sleep is not long enough (!).

Yup.

--QFYA38BK7dvhx8Kf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXctVPAAoJECTWi3JdVIfQZ5QH/0DNgW+1og/9H6hNXjiKoOR5
zmKLxqLAPpnLxwu2UcuCOM5aQt8Ydf9DwAZK04RRZyi6MXn1XnJsPI0WZsiHSU7t
SwH43Lj3e4Xt/O2DeciptN/H0pZd2pVd1UZsooVEZ8MzD+5EicSMJ9IEdO1wC1LQ
Q9KWHrJ/um5yNESgs8mxHx3b/qWkNw+lqs441vk83kV0wmayvU44rN5kB3F1/bGo
MRE4xJbkTQPimNgp7yfnYH9av2sjgH27jU0wljkmeCPCd2OJkaEP3FO/eq88Xqwt
blmzJbgycRHFMYr7kz831y5ASKeRPL1M7fulLIlfOcRu4n2KLlPjbdWIqtZ5Ekg=
=Y1e+
-----END PGP SIGNATURE-----

--QFYA38BK7dvhx8Kf--


--===============4472963734995732744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4472963734995732744==--
