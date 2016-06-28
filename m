From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 19:56:56 +0100
Message-ID: <20160628185656.GU17217@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6920251148500490435=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467089591-7631-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============6920251148500490435==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VvnGyWaJ9JuxX38U"
Content-Disposition: inline


--VvnGyWaJ9JuxX38U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 27, 2016 at 09:53:11PM -0700, Douglas Anderson wrote:

> Note that this patch is atop Boris's recent PWM regulator fixes.  If
> desired it wouldn't be too hard to write it atop the old code, though
> quite honestly anyone using a PWM regulator should probably be using his
> new code.

Oh, and the other thing I meant to say there: is that going anywhere?
It seems like the underlying PWM interface is still unclear for some
reason and there's been no comment on those bits of v3.

--VvnGyWaJ9JuxX38U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXcsh4AAoJECTWi3JdVIfQCSwH/0h42ySi3u8wap2lcW8LJ8po
dGbMqQUswHH0IyaSYcB2a+74JXXfJzwC+axn7CvbjdktNTMSl5MhB4yMAN1wGoFo
fkaoPyDgRDW9Dydu70Hq9gyR7KmZm2VBZ4BReKNLdDjVBGqGetwMq4UW26FKnJXQ
+JkgHVKIFUgj5qbHbkn6op0LKZtBMoHFM8gg3Bq2FetlIIzT/PsMjteeiVpBd56/
zoEXKEgmZCkaqLr82CU+8XVCy1kydTaeycF7zAT54yHwc0DrCUYZAq9RC2o966yt
Cp+YgizYPYGwwfrByFRIulyXMDJIaVAbqTDI+9tQ8ONiB4A3yiYIkWzQ7osHTf8=
=I9g5
-----END PGP SIGNATURE-----

--VvnGyWaJ9JuxX38U--


--===============6920251148500490435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6920251148500490435==--
