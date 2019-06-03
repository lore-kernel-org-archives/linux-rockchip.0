From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [RFC PATCH 09/57] drivers: sound: rockchip: rk3399: Use
 bus_find_device_by_of_node helper
Date: Mon, 3 Jun 2019 17:02:55 +0100
Message-ID: <20190603160255.GA27065@sirena.org.uk>
References: <1559577023-558-1-git-send-email-suzuki.poulose@arm.com>
 <1559577023-558-10-git-send-email-suzuki.poulose@arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8527146244830033558=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1559577023-558-10-git-send-email-suzuki.poulose-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Suzuki K Poulose <suzuki.poulose-5wv7dgnIgG8@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, rafael-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Takashi Iwai <tiwai-IBi9RG/b67k@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============8527146244830033558==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 04:49:35PM +0100, Suzuki K Poulose wrote:
> Switch to using the bus_find_device_by_of_node helper

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

Acked-by: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1RK4ACgkQJNaLcl1U
h9DAowf+PJhFFfev/hfXmzrc3lXbYtKrtaH2AWJctdLKF8NITVZYeDac1/YxdWQZ
5oRw2NhJAxlhj1xrtMxh0q5H1HezivdBiEqifu404MMnn83vnT7hSG4slSXSPkk6
PlokK0cvaie6gRvPpAMUOrmwixP6akITU4/yOH4PjWbBRedHAkc6NSd1y7IKloiI
NOmQoX4KZi1PBhxjcKaj2P0B8G6E45TUTHKGYxtl8n0c4vwUXW1u23Kf/MKaINtr
6vUDoOzBkZEbkNfchAEUCnU6WUYSTXrTWagVWpWRT0Af4y/QfuW04vsAM/4Tmwx1
vy+cJ2wV591mNPb95PYauA7DMmnLcg==
=wwku
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--


--===============8527146244830033558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8527146244830033558==--
