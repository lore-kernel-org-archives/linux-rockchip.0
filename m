Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F50BC07E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 06:49:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94DDD6138C
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 06:49:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94DDD6138C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ARAvcEtPymNy1Nhof4Bj9W7pxrxaUYwH6GbGV2LaTlw=; b=vjePSfeo0h1vP9X90T60uk84kw
	nnMsGGNxGUbdN51cZFkAqPn/8Wnk4smnj8iP7IAlLQJR9Wc73JryRga5NKy+IA6JGZR+DldWMMgxd
	8sRT7zujgdn9UmwShTgAvvHdCxHpeyERotblDAb7c4cyttC7HlLID9kxQqY5RyUb+yPahrii59kmx
	5JcgRTf7XCXTYZPQEJuhu0L8cycjyVG0n0vkz3C1Jm+iNuIoWIMdfzaXwO5ccHHmUdMlVbKM8LmKz
	V+X+xlyI9FNQugvOqpEoEvq0XUgwlDXkF7Td7VFt59Gg1phOyEItlKnU8/5cfoFI36xpvt3QhDCNH
	qD0v6kIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0IQJ-0080rm-BA; Mon, 05 Jul 2021 06:49:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0IQ9-0080rC-2r
 for linux-rockchip@lists.infradead.org; Mon, 05 Jul 2021 06:49:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m0IPx-0000W8-T5; Mon, 05 Jul 2021 08:49:21 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1m0IPq-0003Kv-Ry; Mon, 05 Jul 2021 08:49:14 +0200
Date: Mon, 5 Jul 2021 08:49:14 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: cl@rock-chips.com, thierry.reding@gmail.com, robh+dt@kernel.org,
 heiko@sntech.de
Cc: jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com,
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
 linux-watchdog@vger.kernel.org, maz@kernel.org,
 lee.jones@linaro.org, linux-pwm@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: pwm: rockchip: add
 description for rk3568
Message-ID: <20210705064914.o2neaiwqndjfdyqd@pengutronix.de>
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210623021303.28015-1-cl@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210623021303.28015-1-cl@rock-chips.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_234933_154611_2B94BFE3 
X-CRM114-Status: GOOD (  11.77  )
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
Content-Type: multipart/mixed; boundary="===============7082541381804525407=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7082541381804525407==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h77ynqqu64e6evvv"
Content-Disposition: inline


--h77ynqqu64e6evvv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 23, 2021 at 10:13:03AM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
>=20
> add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> a rk3568 platform to pwm-rockchip.yaml.

Looks good to me

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Who is supposed to apply this patch? Does this need blessing by Rob?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--h77ynqqu64e6evvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDiq2IACgkQwfwUeK3K
7Alswgf/S2t8Y0UpADbCraly5vO0IlgBk3eruOuhWsPvl4ytixaHcF2m/IXzJn1F
CTm3Q4Fa8c5K6/tiVQR+LacMzobKgCaFmf5LLNUrhYggBjAgHEPXbuJc4BOUsGfv
GLAQyRKHIUNeGdAc/Gw89sg5f20ieHij6kcgcpvGg5nhXx4r2m020hIToIbiD17u
W+7LrS+IhuELk+mgkauwKBVpjyJ5r9pN5U7UWYPwCZPeF1FPQkTQaNRA2B3Q+7A0
5IYkmJrv53afyC/XzA4/kGwsbGrwdeInvSCmCWnb8BarKh0hERXgSQvBEn9KU/XV
utWTTaMgclkWJIJluRaO4dTAmRjkjQ==
=oHYF
-----END PGP SIGNATURE-----

--h77ynqqu64e6evvv--


--===============7082541381804525407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7082541381804525407==--

