Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D710CC07E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 07:44:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 964356128E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 07:44:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 964356128E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AHkx9NwI93jkcgiA/jMNJ2y1cedXQL72TxrMU0mWUJs=; b=zaNiEpVQMpecL2lI0o5jgC3PEa
	Phvn/0ZwDphGXNTfx06SMCSBPjh+fhkPkXgYXRXjBGRTs9f8A3PKkb6vEnDdGmeEfWdzONyq034tJ
	X2w1t/lRs0LEdYCrffJMBgf0drXuc/SxlvxjzJMCFHgqEnUjRU7OJtkix7y3LOyJ9ydqOnPZUNzag
	C9Rt7o79+JAVbopf61Rjkp/EV1qxQY2/NN0apxpDmCLUl2D22DRADPLNkfg6gkZ9fYfQT67U4y+W7
	Fxdzli+/AtnuzUsJSTLH+2R1FjiGX3zzbOQ61uRpyYPWzjRnkaB2uKP83cuj3led3ZQ885lU+Y7wL
	MuIylKYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0JHG-0086pm-5w; Mon, 05 Jul 2021 07:44:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0JH5-0086nj-LC
 for linux-rockchip@lists.infradead.org; Mon, 05 Jul 2021 07:44:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m0JGy-0006Vy-Ah; Mon, 05 Jul 2021 09:44:08 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m0JGv-0007oU-K0; Mon, 05 Jul 2021 09:44:05 +0200
Date: Mon, 5 Jul 2021 09:44:05 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Lee Jones <lee.jones@linaro.org>
Cc: cl@rock-chips.com, thierry.reding@gmail.com, robh+dt@kernel.org,
 heiko@sntech.de, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: pwm: rockchip: add
 description for rk3568
Message-ID: <20210705074405.uj62h4evd6htftf3@pengutronix.de>
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210623021303.28015-1-cl@rock-chips.com>
 <20210705064914.o2neaiwqndjfdyqd@pengutronix.de>
 <YOK1+pMy+N64eR75@dell>
MIME-Version: 1.0
In-Reply-To: <YOK1+pMy+N64eR75@dell>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_004415_740097_1925A3B7 
X-CRM114-Status: GOOD (  16.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============6898943641190241247=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6898943641190241247==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e56be3gekkps4fdv"
Content-Disposition: inline


--e56be3gekkps4fdv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Lee,

On Mon, Jul 05, 2021 at 08:34:18AM +0100, Lee Jones wrote:
> On Mon, 05 Jul 2021, Uwe Kleine-K=F6nig wrote:
> > On Wed, Jun 23, 2021 at 10:13:03AM +0800, cl@rock-chips.com wrote:
> > > From: Liang Chen <cl@rock-chips.com>
> > >=20
> > > add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> > > a rk3568 platform to pwm-rockchip.yaml.
> >=20
> > [...]
> >=20
> > Who is supposed to apply this patch? Does this need blessing by Rob?
>=20
> There is no standard. [...]

I'm aware of that. That's why I asked to prevent that everybody thinks
some other maintainer will care for it.

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--e56be3gekkps4fdv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDiuEIACgkQwfwUeK3K
7AkNrQf9FZHop8yLEFhUvrK0kVFAxxxvzzeTxbeluI3vqxKf7NEpfSi9f/GWjAn+
oWZMKeL5yq8VOLUpyRVPhG0qMniFktzjagpfSajAYWhAZOhlQA8QGshrDoJ0wzkk
62P3GDHORCli54O+jMDmrQHpv5ZuoOflAnQlJJdrIw3K26fLDw/jtp4wY8Q9S0Mg
7A+8SsowcLPLcm/Z/LU4SrH7qAE27vUizpDwKDCWSf38dm5/yMIJZKXWJE8SxylA
VyUTM7rASnKb8FbPFCpXd4dLrJKZftRnXZY1ObxaZjlSxI3KsiGAJqgWZYlBKg03
kMCxLi0Hr3xVdIHSffZ6uSRGT7vCLg==
=6Q0n
-----END PGP SIGNATURE-----

--e56be3gekkps4fdv--


--===============6898943641190241247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6898943641190241247==--

