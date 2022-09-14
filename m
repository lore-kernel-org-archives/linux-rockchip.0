Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60631ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 19:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2dbz6GBrc2nXqTFuMLmwsU75hoQFhx+y/HqL5S29/JE=; b=dzkG9ToIUUMEv3s9noLZpM0q5R
	ENia66HtgXD7Qydx4qRfbKPLp04HCoNxT5N51cpKpj6+U+/RcbkeGls8mL2QhmGtohmVhR3Z3RJ7F
	STDXjqRxOYVqXtI/qwRk7OvuOJ/xrfzpTN6tgEnacBHfOaZsbUxa5HEblYF6uYIpcIez2CL/IdCHK
	auMOoIsJFw9EKPKlOcLO0c46QHIIWobx0czcYfqJ3gdJhxvfLyL0ud/jlRzTFI24lb41i0RmAvdac
	zMmLAcvKaSBLdYdIqmZvdwDmNLcQ+KroQ6QVv0Xv1whMHJtf4vdZ7Sfn6m/AAHAT01rBS8iSAPtOe
	JGVNRxWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYYPE-008bbJ-QY; Wed, 14 Sep 2022 19:50:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYYP3-008bPO-26
	for linux-rockchip@lists.infradead.org; Wed, 14 Sep 2022 19:50:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oYYOv-000279-OY; Wed, 14 Sep 2022 21:50:25 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oYYOv-000krD-Pi; Wed, 14 Sep 2022 21:50:24 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oYYOt-000vyV-Ge; Wed, 14 Sep 2022 21:50:23 +0200
Date: Wed, 14 Sep 2022 21:50:19 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: zhaoxiao <zhaoxiao@uniontech.com>
Cc: thierry.reding@gmail.com, heiko@sntech.de, linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATH v5] pwm: rockchip: Convert to use dev_err_probe()
Message-ID: <20220914195019.wfh3havo7l44nyzp@pengutronix.de>
References: <20220822081848.5126-1-zhaoxiao@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <20220822081848.5126-1-zhaoxiao@uniontech.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_125033_121461_403C82A5 
X-CRM114-Status: GOOD (  12.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0898234747670790094=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0898234747670790094==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hjtfz2vfkl6wa2pk"
Content-Disposition: inline


--hjtfz2vfkl6wa2pk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


On Mon, Aug 22, 2022 at 04:18:48PM +0800, zhaoxiao wrote:
> It's fine to call dev_err_probe() in ->probe() when error code is known.
> Convert the driver to use dev_err_probe().
>=20
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>

Looks fine now:

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--hjtfz2vfkl6wa2pk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmMiMHgACgkQwfwUeK3K
7Akazgf+JObTEgkacuKZlOdRlYqDkIMo2O8xXlf2w/NdJzZD5k2xCQHFZRdWfXf6
q4U+heL7Zf26lCpBDDMld09db6IVHJlt4K9fwS6ZpCWT2CwUIvbM4BAOkhZp0C0f
1Yh0UM/j79+GD6gx1RjvBZMqPHT/qbzrwxcL1rwkF2MU0aNcRXCJdPXil2sDleH9
FUzzkHxRYUALDfT6tYilF0QHIWX+0X/qc5eDTxySAdS58LrJ2pdArnirPbM8D1JP
4NuqWQdjBpUFbgwKC0hQJzZsfUjzIJ2F5S9I8LrTeNqzHg18unNj1MIMviUvzjpe
EzzB99kvi+EZgig0QTY+Rf0OfcQfWg==
=XaE2
-----END PGP SIGNATURE-----

--hjtfz2vfkl6wa2pk--


--===============0898234747670790094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0898234747670790094==--

