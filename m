Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7125ACCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 15:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iMUXUv/IbGoKiAANHCWeOoxLO8cIpaMk6+Hu6igLb+k=; b=uUG/sCE7wV2gzC/W/eyHbf/Jlg
	TbCvl+PK7W8p4RkAsxbH5Q79ZUEYDToo12SvHpzLBorSFz5JG/25RC5D3XjabFS/Wu6ToMs1t6o/P
	D04OG3kn2XqQCQqXmTuoNRv0e7UJiDuA/cCaA9tsh0pA40b3A4imAKjHKDqwB2ALB6WpXPgON8kyR
	2SIkgD1rmMKd2b6XjYuA2ioaLhJa29as2n+mhlTL1Vl1oT8wuKP7867/7tKsO1+ZSkVt1l89gzXMF
	u1WKbOPiQP1wDKyzDpPvKAdgDJKE3mT4KqfWG8nYmeeySNNsGj3AtfRmVTH9KU3SrinJIw5+8uvnm
	y2DL/RXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vArfe-0000000E6CL-0HR1;
	Mon, 20 Oct 2025 15:19:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vArfb-0000000E6B4-2xg9
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 15:19:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vArfT-0003vB-7G; Mon, 20 Oct 2025 17:19:27 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vArfS-004ZTW-1I;
	Mon, 20 Oct 2025 17:19:26 +0200
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1DBDB48B56C;
	Mon, 20 Oct 2025 15:19:26 +0000 (UTC)
Date: Mon, 20 Oct 2025 17:19:24 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>, 
	Vincent Mailhol <mailhol@kernel.org>, Oliver Hartkopp <socketcan@hartkopp.net>, 
	Stefan =?utf-8?B?TcOkdGpl?= <stefan.maetje@esd.eu>, socketcan@esd.eu, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@pengutronix.de, linux-can@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH can 0/3] can: drivers: drop skb in xmit if device is in
 listen only mode
Message-ID: <20251020-electric-dramatic-cow-e8178b-mkl@pengutronix.de>
References: <20251017-fix-skb-drop-check-v1-0-556665793fa4@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20251017-fix-skb-drop-check-v1-0-556665793fa4@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_081935_738984_5BCB23A0 
X-CRM114-Status: GOOD (  13.40  )
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
Content-Type: multipart/mixed; boundary="===============7912713660145513686=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7912713660145513686==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l5m4fvbx7vmqre5l"
Content-Disposition: inline


--l5m4fvbx7vmqre5l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH can 0/3] can: drivers: drop skb in xmit if device is in
 listen only mode
MIME-Version: 1.0

On 17.10.2025 16:59:58, Marc Kleine-Budde wrote:
> I notived that 3 drivers (bxcan, esd and rockchip) use the function
> can_dropped_invalid_skb(), that doesn't check if the device is in listen
> only mode. This series converts these driver to use the new
> can_dev_dropped_skb() function.
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Applied to linux-can.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--l5m4fvbx7vmqre5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmj2UvgACgkQDHRl3/mQ
kZwysQf7BA83gk3POJDewYtZEMQHNZnob1qHnopUO8DyF+bSAr7qCymLLwpj2R7p
shOie/EQ8QeEeWPeVYQS4u1kjbO5xRtQ8bmQCgDcOnpg6JXX/zZ9/8yGgeJhzMoo
aE7MnZEV1C9jA5MVXNVyfCGtAJizWWPHyf5R8mwDSqAJmm3UlXtx8UEL8b7tCaEB
Hhg/LmIL2BLWZC9l+IS78R8CUFRKVq3RjLK2nyzCb4SYGJfuxXzoF2rQUBGseTL+
MFPb1SW/15f2f2GJzdqPdgW2nhy2S7NxGrWCqs+J27GTySr20aW4poTMBtU7+KvL
U+/LpZDPJ1qd4ljdZ8WxHeUiaWQ++A==
=5pMM
-----END PGP SIGNATURE-----

--l5m4fvbx7vmqre5l--


--===============7912713660145513686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7912713660145513686==--

