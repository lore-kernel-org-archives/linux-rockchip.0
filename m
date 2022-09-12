Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AA30ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 08:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4vvb0F9a4aAswd8t2TLr7g7+7rfWb58Wnm6DLwUz23U=; b=ahiug/9nVpmQWeXrPRTZxBPM4V
	tP6+IcWgD0c45MkewnSGczpi7j/Dmprt5LxfgQ0OnVamw3ONjxhfnjPrewb2ntOrfT4Zu7PnR0MTs
	OUytFy7euea3k5v+JX6espdAplT1yBOqjmHQ9stbKwN12/FDOaxRJGWnQKjaKOjFAkAKGeTyhwJ9v
	sl84ccsMW1bT9dBEoyda/znqN9kXoOJhgtmZL4sO3Z8Rr41MAgdf9J++l4xfGpdbssTrgeth6MPzy
	1F+GrXU3Pn4+IVD6RqMuFPoq05WTKzvC4DKDAm93Qkql3xYOgE1Jd2A+DxZwi10pMxLi8cRrd+D9t
	6Dn6dEbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXezE-007sAx-E3; Mon, 12 Sep 2022 08:40:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXeus-007qGS-9J
	for linux-rockchip@lists.infradead.org; Mon, 12 Sep 2022 08:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oXeuO-0003qU-HH; Mon, 12 Sep 2022 10:35:12 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oXeuK-000GV0-Lc; Mon, 12 Sep 2022 10:35:07 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oXeuI-000L6p-Kj; Mon, 12 Sep 2022 10:35:06 +0200
Date: Mon, 12 Sep 2022 10:35:06 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de, ulf.hansson@linaro.org, miquel.raynal@bootlin.com,
	richard@nod.at, vigneshr@ti.com, kishon@ti.com, vkoul@kernel.org,
	thierry.reding@gmail.com, gregkh@linuxfoundation.org,
	broonie@kernel.org, wim@linux-watchdog.org, linux@roeck-us.net,
	zhangqing@rock-chips.com, jamie@jamieiles.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-mtd@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-pwm@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v1 03/11] dt-bindings: pwm: rockchip: add
 rockchip,rk3128-pwm
Message-ID: <20220912083506.js4zyou7kdphrs7m@pengutronix.de>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_013542_379364_72295B7D 
X-CRM114-Status: GOOD (  10.12  )
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
Content-Type: multipart/mixed; boundary="===============5441818985632498996=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5441818985632498996==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tqnrn4kzd6owce4p"
Content-Disposition: inline


--tqnrn4kzd6owce4p
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Sep 10, 2022 at 12:02:22AM +0200, Johan Jonker wrote:
> Add rockchip,rk3128-pwm compatible string.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Considering the problems pointed out by Rob as orthogonal to this
change:

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--tqnrn4kzd6owce4p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmMe7zcACgkQwfwUeK3K
7AlZYwf/ffseGIKL3qdR1ObyfIb5V+iGVTp/SdYtO08mrURjLUEo+B+syZnhYPKY
WaIox8KDLDXTTzG+l8SOyJN/eVX56XZFaFzqNKpscD60wLFga+ccFaNKGJtk7knG
NvhVkaLBCMShPPlR6KT4mcKOmSBnZcge7q+h4oVQ5fgstpl2uOPQJPrIrZ+B+k8v
36gKyh5sYqGHe+uP6mIyiO8yuPztWwFfCILv5MV99qgCPftl3L8IgyvK2vI6wO50
ymfHbqlS8nxTODgi5iTI0PFMn0YJII1d2xwguOheFXUzRYuU/n3wft1Krdnwcdm2
fMeJle5erwYQ8Z6/F8F+XCMTdI83dA==
=6TOs
-----END PGP SIGNATURE-----

--tqnrn4kzd6owce4p--


--===============5441818985632498996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5441818985632498996==--

