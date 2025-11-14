Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915A6CE7B0D
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 13:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=toJbmTZ+yr9eSNCyJbKEl1fI1w//5iYv0wtOo+nDiH8=; b=3bHO0eZIRP6qCiauqXyFF6SKtV
	Ed3vXIHue6bCCOdVV3t2ySafgob0nUj1H6DSNDYeesc24WeoJubX4IAnysNRfN5sc3V1sV+usXFvA
	4pN+KbJGhCxZHYxGbSqkNdUgITgVRKYVUy/Krk7qGYErN1EcnarFM6cXwYiUsXJ5GLfzXowkx0QjL
	2XODJoNPDVD9vZhRg6qC6libftRDuSC7zntc54XLFZ5veHVETIJT+RxEEwfO6X2fjhVmQbdlmLLRX
	opg260JqZt9Za+ZPiDsdaYBBVUUD0T1x2x8Q9c1IR8eSgwi7FxC1WGfxPj2waNc1yR7J3QHvyp+1V
	LIrrS07g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtqn-0000000CG86-1Sw0;
	Fri, 14 Nov 2025 13:28:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtqk-0000000CG7F-3CK8
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 13:28:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vJtqd-0003vN-Jy; Fri, 14 Nov 2025 14:28:19 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vJtqd-000Qjk-0l;
	Fri, 14 Nov 2025 14:28:19 +0100
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id E047049F5B4;
	Fri, 14 Nov 2025 13:28:18 +0000 (UTC)
Date: Fri, 14 Nov 2025 14:28:18 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: zhangqing <zhangqing@rock-chips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, cl@rock-chips.com, kernel@pengutronix.de, 
	mailhol.vincent@wanadoo.fr, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 3/3] net: can: rockchip: add can for RK3576 Soc
Message-ID: <20251114-amorphous-guillemot-of-awe-871e2c-mkl@pengutronix.de>
References: <20251113075419.482940-1-zhangqing@rock-chips.com>
 <20251113075419.482940-4-zhangqing@rock-chips.com>
 <20251113-slim-foamy-gecko-2dc389-mkl@pengutronix.de>
 <176d96b4-397c-49d4-8e8e-2f77a5d59c12@rock-chips.com>
 <20251114-utopian-cheerful-otter-33c1d5-mkl@pengutronix.de>
 <3233894e-9409-4b74-a954-0b30064c3c8c@rock-chips.com>
 <20251114-illegal-flounder-of-maturity-edc269-mkl@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20251114-illegal-flounder-of-maturity-edc269-mkl@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_052826_815339_6366DF1C 
X-CRM114-Status: GOOD (  13.13  )
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
Content-Type: multipart/mixed; boundary="===============6283550052887248749=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6283550052887248749==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="entuv2nh3gx4wcbx"
Content-Disposition: inline


--entuv2nh3gx4wcbx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v9 3/3] net: can: rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 14.11.2025 14:22:42, Marc Kleine-Budde wrote:
> > For RK3576 SoC, the IC hardware design supports CANFD.
> > However, a license application is required before it can be used; other=
wise,
> > there will be legal risks.
>
> INANL. If an SoC is supplied without a license for the IP cores that you
> want to use in a product you sell, you must purchase a license from
> Bosch:

AFAIK the same applies to the "CTU CAN-FD IP core", which is already mainli=
ne.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--entuv2nh3gx4wcbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmkXLm8ACgkQDHRl3/mQ
kZxkWAf/XmdTZDXXJ6DlNXHOIMGMpYO/3VE+v2MkC2G7jqHuFn+mIt3qM1iYwyEr
yWcVqSPUFwZi7GhSX+qTgA8bB4kxF34UL30WS/QDE8HK7gXQ+fBXtJUqeUiAPnIl
8hMiNNEr/78RFISeu21cbB/Xgif+AoPY+V4S6iltsSi21DTaFiZTRtJeIUXWB8Qd
QYdGQaRUFMUX0Q3xpdYFV6de0ZPHj0dFZqULjuPZehvzeVHrcFY5QPxikzw+oD1P
wLfHsFF3aAFqLbgGE965ia9EnwBJl4gM/V78/7Y5adh3JmwXMO4iDEJ6QKgukl8F
gqbegfsz4kkUkunpWLEwhBrGYs057A==
=3CsA
-----END PGP SIGNATURE-----

--entuv2nh3gx4wcbx--


--===============6283550052887248749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6283550052887248749==--

