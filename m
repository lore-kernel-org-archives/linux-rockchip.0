Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A76C001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 14:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lrKHQqbEaJ2VKguUinOBB6eytwofPLbjr43g8xraIGM=; b=vuproyOuLKN19zq+cH1KDsUXN9
	0yOsja4vnZ2vGGhhffQx1oMnKSDvvUgz0a7DTso9QGfLanNLiSspvxMqgeP7/KPF4QChwShjJwZHU
	Bvoe8DPkMYgS5a9tM9oBKiRVQBNd+A1Y5ROjQwqBHjZTjwn2iQ3EOFWQVfKZMsylsxrAD3b/Qum1U
	s+fShuUrkgHbo9QnEeLcDYaL54fbyMRXjd8uMQ+z0JHnfHdx5xUAW7s3Uj1sXYO5LHr8V5qGp0LI4
	jTIuM3rUYHNe1XmjD6A9WHO66EpSGvJIMvHvZo24CBe6VO3iKPoJAxmXskm0Ae/554sElN502LJNZ
	vPSfBF2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQUFL-00GBbO-1a;
	Mon, 31 Jul 2023 14:51:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQUFJ-00GBaB-20
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 14:51:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qQUFA-0008Qa-6S; Mon, 31 Jul 2023 16:51:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qQUF8-0009HZ-J9; Mon, 31 Jul 2023 16:51:30 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qQUF7-009LwZ-L8; Mon, 31 Jul 2023 16:51:29 +0200
Date: Mon, 31 Jul 2023 16:51:29 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
	Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Message-ID: <20230731145129.mrrkb6tcuvlpmxan@pengutronix.de>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
 <20230731103518.2906147-2-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20230731103518.2906147-2-jagan@edgeble.ai>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_075141_659763_4ACA4349 
X-CRM114-Status: GOOD (  12.45  )
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
Content-Type: multipart/mixed; boundary="===============4190434330795602280=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4190434330795602280==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pw7azdqrl3tex3z3"
Content-Disposition: inline


--pw7azdqrl3tex3z3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 04:05:06PM +0530, Jagan Teki wrote:
> Document pwm compatible for rv1126 which is fallback compatible
> of rk3328-pwm group.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Should this go in via the pwm tree, or together with the other patches
via rockchip?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--pw7azdqrl3tex3z3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmTHynAACgkQj4D7WH0S
/k6Oswf+NrRkCSIkCjS0PNm/4XljpGTPt7t/xZod4oajzSRm5rrn5u9xsuToJ/Rw
maqCge4jIZj81PVgYgBxcL80AS7w8PEHeT3F42RH0Q55eG+rvfdrx31zp8ZYhejO
YyakgUW1zKinFx26KJYUGWOmqxBty4Kt2vFiTvMpJx2Pe8vWYJAOw/4KcSnveh73
uudNJPauEVLrz7j7QOxwr0sK6xiJacTjHsfbV0SxH5sW8tUW+6V5WaPwTKEjHwn6
l8q21z1pOdVJUh/xFTJI/NNf3CkZENPnA4ILEg4SJUF9azMe02kt2mIVESyol/Vs
UqDbmTn1ZulIygN86BUTCR10n+sCFQ==
=YcxI
-----END PGP SIGNATURE-----

--pw7azdqrl3tex3z3--


--===============4190434330795602280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4190434330795602280==--

