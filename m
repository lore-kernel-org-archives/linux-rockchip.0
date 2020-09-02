Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AD5C433E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 07:14:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 223EA2087D
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 07:14:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hb86e+e2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 223EA2087D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4+clCY6+/WJOKRntsWGSM/laEzSnHKJXbQklt7l2jHI=; b=hb86e+e2/UDQFaPbsWf4Muy36
	O3DG/v63NTV8pdiNb9Rgvs4e4tSBDFMDYO6YwhPaRCd11OfJk+Mqk6XLfzhzY/Lq92DvO5rOluvaI
	N4Q7UP8IefKI5x0Ql1X3KeEeJp57y0lGxZKHdxKlzG/at52IcIsPLIcRhbXyAHpnNTVD8BXKzfJmM
	U5NbEZlmO4bhWm0LrINsHbLUtJeUHQZY7kunZYB9ztx3OKfYTRRPTi8hp9pKdoz0eC4hNu0KpYHAD
	qfikEQG8QGgfPJcTL6Wlv8qaVIV7wbtf620pwUIPdzmp+phc8x8HM1nwYE/d/gQE8Y7ra/ilMkWQS
	BfdZGVwjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDMyH-00075B-Fb; Wed, 02 Sep 2020 07:14:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDMyD-00072Z-7w
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 07:14:14 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kDMxw-0003yr-OC; Wed, 02 Sep 2020 09:13:56 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1kDMxw-0007za-AF; Wed, 02 Sep 2020 09:13:56 +0200
Date: Wed, 2 Sep 2020 09:13:56 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 4/6] pwm: sifive: Simplify with dev_err_probe()
Message-ID: <20200902071356.5qxsit745xnpcq7g@pengutronix.de>
References: <20200826144747.9436-1-krzk@kernel.org>
 <20200826144747.9436-4-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200826144747.9436-4-krzk@kernel.org>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_031413_349413_1A40ADDD 
X-CRM114-Status: GOOD (  13.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Paul Cercueil <paul@crapouillou.net>,
 Thierry Reding <thierry.reding@gmail.com>, linux-riscv@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 Orson Zhai <orsonzhai@gmail.com>, linux-pwm@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Baolin Wang <baolin.wang7@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============7435233250403691726=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7435233250403691726==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vqfietzmphnlidcc"
Content-Disposition: inline


--vqfietzmphnlidcc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 26, 2020 at 04:47:45PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and also it prints the error value.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--vqfietzmphnlidcc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9PRjEACgkQwfwUeK3K
7Am3ngf9EhzuqEYogHP66J3qLjiTZkLGOydaBY1+zWND5h733JJpu6S3D0ZvDeba
5qQ9BhpSTfMTZBwRWmKsXkR+JQ/L7r5pm+qT4c6Qt4tiX3BK42XaIkmgXBsnN6se
S/fo1GCr6sKTrQFmBoynaZA2qo6+ECDAclJVy0/Od14DivhkCd2FPNfOjIsNWun8
na90Bhbwtvd+RZtGnec5Z49Jy5dL5eonWXidiKT5diOSBWgOapB08LrNxbAtIbPT
kmY9maP6NYl+Iwdo39siN0Rw1Pe6NWtDti8VD+8GIr7TxBrcUbI3etANaFg1XXQY
1ZsWNC3Szpru4KUooANUfwLuE0kE1w==
=8ydu
-----END PGP SIGNATURE-----

--vqfietzmphnlidcc--


--===============7435233250403691726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7435233250403691726==--

