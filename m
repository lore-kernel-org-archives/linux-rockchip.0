From: Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC PATCH v1 4/6] PM / devfreq: event: support rockchip dfi
 controller
Date: Fri, 3 Jun 2016 18:54:26 +0200
Message-ID: <20160603165426.GC21013@ulmo.ba.sec>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
 <1464947719-6245-5-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4335992353900313731=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1464947719-6245-5-git-send-email-hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, typ-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kyungmin.park-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============4335992353900313731==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ncSAzJYg3Aa9+CRW"
Content-Disposition: inline


--ncSAzJYg3Aa9+CRW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 03, 2016 at 05:55:17PM +0800, Lin Huang wrote:
[...]
> +	ret = clk_prepare_enable(data->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to enable clk: %d\n", ret);
> +		clk_disable_unprepare(data->clk);
> +		return ret;
> +	}

This is going to give you a large WARN. clk_prepare_enable() already
leaves the clock in a proper state when it fails (i.e. it calls
clk_unprepare() if the clk_enable() part failed), so calling
clk_disable_unprepare() upon failure is going to unbalance the
reference counts.

Thierry

--ncSAzJYg3Aa9+CRW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXUbZAAAoJEN0jrNd/PrOhAhIP/RY+DaI46Gf5oh6uxf4dw7+3
5aXkSzzNwXZesOYWpUovhm3+fVCH1jASEvkShtUZ+WkayGDqqxSbOCvnr6uEJcv/
3UWIzvsdtCa4SNRevpFH/kgU8ctVjKu14wEVVurmjfPbjIgmlTvdLqXZkaZTcx3V
bFg8yhalEPds798whFjMmcCGSmLinNy3EhRU5ZFhxanny2VWMM3FT4G1JGGANE7X
Z1UjW/ySjTtwZzuyVeIa5hpuYVg3aspmrJCpwKyFdVQjo6x4aO3CexniKj1dYF54
0wyvUa236sQRgOLGi1jHYiTasoahPkVayoH9dwmS+iWIEaiSU7xJMSwClEYvudKp
6QlNJ7UaLIYQk6kOHiHA5fBlmeIrvBBz4ROpsry7kGBYEhVH41+iLH2w4a3Hn/lv
07a3JYeoRanotZ8ghp8/EfeAVOniwELw+QBNkVygRDw7iDjzxpFfbclYOojI5EkD
QHdpVde49HJi4xF46vqYXhcCe5IxKJN7uBiUCvZyiv5/L/u/5EpidATAWT8MHJJG
e0qdIm0dfw81/qHu1w13KUcOMH6ZGSpnmc8jzwmTWKhP7f3r5Y2SLKYXfZEWrlSF
R71w73nTM/ROmQGEnQW+16woYed/cvpwhGaCuxWFR+RaIdkqPJ0Sy9Z5uwb3EiMg
b9UFGXJ4VidTdIDPRF2y
=3fNt
-----END PGP SIGNATURE-----

--ncSAzJYg3Aa9+CRW--


--===============4335992353900313731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4335992353900313731==--
