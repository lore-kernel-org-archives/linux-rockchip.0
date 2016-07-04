From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Mon, 4 Jul 2016 10:53:36 +0200
Message-ID: <20160704085336.GT6247@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160701080614.GA9196@sirena.org.uk>
 <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA@mail.gmail.com>
 <20160702174752.7e893ac2@bbrezillon>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============9159490721972256414=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160702174752.7e893ac2@bbrezillon>
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


--===============9159490721972256414==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YOxyDEsNCn0QNWql"
Content-Disposition: inline


--YOxyDEsNCn0QNWql
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 02, 2016 at 05:47:52PM +0200, Boris Brezillon wrote:

> I'm waiting for reviews or acks. AFAIR, I addressed all the comments
> Thierry made on my v2, so I guess we're good on the PWM side, but that
> would be good to have a review from Mark now that we agreed on the PWM
> APIs.

I've already have one round of review invalidated by changes in the PWM
bits so I've been deprioritising it until it's clear that the churn
there has stopped.  I understand things are supposed to be quieting down
but I also have a bunch of other things to look at...

--YOxyDEsNCn0QNWql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXeiQOAAoJECTWi3JdVIfQo+EH/1UO0Ar/iccAXd/18WZNp4H3
6XNZ5APV+JA2HtjfKOTye7WH0mfrwyyNrIdezUJepWLvSAhZCG1I7ai+vUMJe8W2
ZVqJEbzPKQkSSH6ay0O/P+VIZDEs9kv9ZNwgX3Rji1DVLTW3P7qAv/za0K5RHdQr
ID1nZ5NhSGB4oRXSeROHgAr+uAfysPcO1yivNtWccagui0iwWluAuW9AKDwAAMOt
w7+/tcPXGtz+ebFbNRFyXeF195hv1WJN3K/QG6g2r8qBiQwt1bMQ6zQqLZiBqpXP
YqYr3cigjX+xhCNtDceVZiBC/O7Nd/PsK6mIShQimc3EM8LPB5m7ASE3vsyugS8=
=E9Kl
-----END PGP SIGNATURE-----

--YOxyDEsNCn0QNWql--


--===============9159490721972256414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9159490721972256414==--
