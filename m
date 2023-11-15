Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23BF8C072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 21:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1MfYLsn2ObEn3ERYuOJfJj+j4kwDm1SP3kLIwVU2FXM=; b=inr9Hig+vW9tMtv5s1RMeGxpJ9
	wZjeitDjpdxVamaJ8+Z86WZcsdjo5E3QHcVfVkbjNZhP9ekotPK0CkIK2fosRkxkODYqqVKAN7WPu
	7cNegI6cSvsV3ZYsDLm4cRR2CGvl+iMBXVD/7KwCC/nAYyJlcBmwMEyby/G9YRLeE7w+fCXzIszuq
	2D9AEleJAeTDunOICGPTUk6FYl7XTXzJIusatEodQXMDsOFdMh7ErvqRWjEjIeGvYmEd5kZxHo0YH
	ksK/ENv9K5Zp++HcVSKPNzNYrd5TzMyCp4QyB/btBNbillLFLYq9uFxoMmI5r+jRoWzH6GYvCrWGW
	U3zdNuFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3NXK-001mc1-2G;
	Wed, 15 Nov 2023 21:35:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3NXH-001mai-23
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Nov 2023 21:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3NXA-0004XD-Ec; Wed, 15 Nov 2023 22:34:52 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3NX9-009JIF-R8; Wed, 15 Nov 2023 22:34:51 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3NX9-002Dev-Ht; Wed, 15 Nov 2023 22:34:51 +0100
Date: Wed, 15 Nov 2023 22:34:51 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH] pwm: Use device_get_match_data()
Message-ID: <20231115213451.cvrmuzdbtfrpysth@pengutronix.de>
References: <20231115210121.3738487-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231115210121.3738487-1-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_133459_671734_8B42F1E9 
X-CRM114-Status: GOOD (  13.47  )
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
Content-Type: multipart/mixed; boundary="===============7209439226907158852=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7209439226907158852==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jc2xrudroiknumgj"
Content-Disposition: inline


--jc2xrudroiknumgj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

this is a resend of v2, I'd say. Would have been helpful to indicate
that in the Subject line.

On Wed, Nov 15, 2023 at 03:01:20PM -0600, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
>=20
> As these drivers only do DT based matching, of_match_device() will never
> return NULL if we've gotten to probe(). Therefore, the NULL check and
> error returns can be dropped.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

I send a Reviewed-by tag in reply to (original) v2 that wasn't added
here. As v2 is still "new" in the pwm patchwork, I'll mark this resend
as non-actionable.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jc2xrudroiknumgj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVVOXoACgkQj4D7WH0S
/k7kpAf/bl4KKfAUBzghYI6z/50HL7esIThFBaGzzgnzJERN+uCxApkuHsLFN9kn
/he+aasBSn8kXa1A3DELf0byviI8xBJRn+OFXJbWkVMk0VIc8BQavnm0iE/NaxuH
KnyOdFDwc4Rcmip0Yus5iP8U3kaj6ikdMNYla9NFMuQ61AaWZHnQX/SQ+bTVJmeX
p3JF7ZJPvC9YNHXAFJwbPRWhWn6dLYRSOWoV6ulHWhuQg8/zJKUxW5s97eLPNHL5
X1pqlVJr+KUCaxNfAgjrQCweQs5y5hyUj7aarrhTBKtZtw1YYdcpgiRszp4qD0Qu
0CJwfOp3awhDbcSIav0CxkeTQZQDrQ==
=DR7L
-----END PGP SIGNATURE-----

--jc2xrudroiknumgj--


--===============7209439226907158852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7209439226907158852==--

