From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Sat, 2 Jul 2016 09:59:39 +0200
Message-ID: <20160702075939.GD6247@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160701080614.GA9196@sirena.org.uk>
 <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4697799138285038104=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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


--===============4697799138285038104==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ARHwKispuqSRPZ/2"
Content-Disposition: inline


--ARHwKispuqSRPZ/2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 01, 2016 at 01:17:48PM -0700, Doug Anderson wrote:

> Anyway, let me know if you want me to post the untested, rebased
> patch...  Personally I'd prefer to wait for Boris's patches and the
> land the tested version.

We've got some boards in kernelci.org using PWM regulators I think, or
perhaps someone else can test.  It does seem like a real fix so...

--ARHwKispuqSRPZ/2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXd3RoAAoJECTWi3JdVIfQf20H/0cGWuJGuSBo7/Zm6R8bSDBM
ZbCDvOCLu3pqGizB0msj7UcBs2TJFznnxoERImEfHMwpkVS57U+0JdQNNLeGBM9O
5eVKVwlpqmZfOQZ634HeokWAkpXgMoDfY84XSAIAw4CbGT5n6v3unY90z7e9TDrX
UgtWdLi63+cyTlbHSW+Lx0jKuUakGWzu5XHcmu9IKuEHdqgTWv5dS0DWHaU5COJa
bmMcBLgxRMoZ58k8+WRc21ml0jj9hasy4URXOI+3dG+bcyV0LWJdjELaHBjz+diZ
m/C94OGNtMGCvBc6xpysNkKyjxOncn8flfxTnv//9tlniUtXc2EHQC049He8+Tk=
=Bcv7
-----END PGP SIGNATURE-----

--ARHwKispuqSRPZ/2--


--===============4697799138285038104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4697799138285038104==--
