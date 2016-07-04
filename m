From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Mon, 4 Jul 2016 11:13:44 +0200
Message-ID: <20160704091344.GY6247@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160701080614.GA9196@sirena.org.uk>
 <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA@mail.gmail.com>
 <20160702174752.7e893ac2@bbrezillon>
 <20160704085336.GT6247@sirena.org.uk>
 <20160704110504.10a15c1c@bbrezillon>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1516291750599728457=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160704110504.10a15c1c@bbrezillon>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--===============1516291750599728457==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w47z9evyjOavafUr"
Content-Disposition: inline


--w47z9evyjOavafUr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 04, 2016 at 11:05:04AM +0200, Boris Brezillon wrote:

> I understand, but can we still expect to have it in 4.8 (I mean,
> assuming Thierry is okay taking the first 2 patching for 4.8 too)?

Possibly - we are getting very close to the merge window now, I don't
know what Thierry's policies are on applying things as the merge window
gets near.

--w47z9evyjOavafUr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXeijHAAoJECTWi3JdVIfQCy4H/iv+i9phqVzQ2x4IewK37ohK
r3gyrpeZI2GFjj2zZk33qXTgCrCcfI9ZW8bl1k32CvO52FrQ49BHKjg4zxJl+7hL
EfaqqU93YWjwWzH8iNBSix6a9ao743+BT+w1zL1ePu6YjUYglR7uPXvOx+eTDxN2
UWkN2vDToZevwdgxRRPh8lgC/7PwQE9R5f20gs2r5MgYwDSHTKdZ/CGI12hgIYyI
vO5LRXYVVEwErABddkb49MiVP0STzZS3Ur0DNjh/IACmZw2YiP/aZ78cmavf2y8d
lQ2rTBrO7ZgYNNrlOQ90iPKmJX5fT+XQyI+xGUTuW6KD+eCHlUBIo/QVaLuF6vw=
=sbWV
-----END PGP SIGNATURE-----

--w47z9evyjOavafUr--


--===============1516291750599728457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1516291750599728457==--
