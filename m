Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 944D8E7716A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 08:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Mefw9IAhirayXHOYfX32XLRR6JlUfVaE9JjgD0sgMM=; b=OXkrkBo+SOwKhRQdr1uMYON7hi
	kFp5RBTfpFoHNM3dqN0tLtNrNWpEUsCdZCkqV8i+chLbwYGGo4lPMRfHPDm3dzj76RCBijCUVnqjq
	lREwUvypnFuK5DZIP4b7ZQDMemNKeoL6iXJX3ucqMrSS80/o6W4SGclBJhKso78hF44cH8zZ6t06w
	IFWWsT/G0z/oJUEBXllDBvOmOzpY/3RLG/3iJHbP0GG7y5G9VqesI6rm+6VGA2US1UKFRDXemJtKt
	r3U3cdg/KgF0o2ACKn1TbBI5GZMe0RMidfU/7yIX0Fm0ioIxpyT3EO9JxJavYg7OAOqNP3QrMcDWM
	wCuyoc5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNTBh-0000000CkLV-0Wrx;
	Tue, 17 Dec 2024 08:44:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNTAg-0000000Ck45-01Hj
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 08:43:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tNTAd-0005l6-Ch; Tue, 17 Dec 2024 09:43:11 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tNTAa-003ppe-2q;
	Tue, 17 Dec 2024 09:43:09 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 50E76390462;
	Tue, 17 Dec 2024 08:43:09 +0000 (UTC)
Date: Tue, 17 Dec 2024 09:43:09 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, heiko@sntech.de, 
	cl@rock-chips.com, kever.yang@rock-chips.com, linux-can@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] rockchip: add can for RK3576 Soc
Message-ID: <20241217-hallowed-adder-of-swiftness-3cd239-mkl@pengutronix.de>
References: <20241217023908.1292999-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241217023908.1292999-1-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_004314_054011_BB258DC7 
X-CRM114-Status: GOOD (  13.81  )
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
Content-Type: multipart/mixed; boundary="===============5246836419195332455=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5246836419195332455==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vve2bzd3aa25xn66"
Content-Disposition: inline


--vve2bzd3aa25xn66
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/2] rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 17.12.2024 10:39:06, Elaine Zhang wrote:
> rk3576 can is a new controller:
> Support CAN and CANFD protocol.
> Support DMA
>=20
> There are major differences from the previous rk3568. All errata on the
> rk3568 have been fixed and redesigned.

I'm not convinced that we need a second driver for the hardware that has
the erratas fixed. The mainline driver has quirks that allow you to
specify if the IP core needs workarounds for the errata or not.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--vve2bzd3aa25xn66
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmdhOZkACgkQKDiiPnot
vG8uLgf8DNFQnbIdm22IWWzF8IzCAqTetUPNQLvfWtU1jnilBjENPk/efnIkyMG6
u5TksLnIqSMTaNhzExvc6KSqXln8V8FwaF09sJjmuNCfEpz0iZ9b7bhGl/M0LmdI
Y1Ok4GG+xmmuPlVGHcH1VdvmWoBlUCLCi4gY2wqH/SEG5slkx2cc+BOrpW/rcjG0
LXkigIlUNA3Dcn26L6NIoAqlfvfVqEMnV6xWylLZmkHQHN951eK3uer+guo0SBEF
pmp3L0wtOilSGjShaVGwdC7+2JoBe3nG/qsT5/Rt11cEwtMvhpC14LX6tJnW3IPi
LHQJxloBBFW88K6sjHjC/Plz4+4vJw==
=O3qF
-----END PGP SIGNATURE-----

--vve2bzd3aa25xn66--


--===============5246836419195332455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5246836419195332455==--

