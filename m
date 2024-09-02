Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F572CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 07:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cu4VkKjTTtw7vUT+GU0VNrmcd9f86UZByd4GQTim6a0=; b=X+2CJn/4DtXpHssY48ELQdm4OT
	GMe/cTZqbBOCkcfKWLx4UqfPmWHmTfy5+RVa+lme9IPepfSo/jNuj727jdHByqpI6scieCxGSNY+v
	uOq4FSLopayQCG7s5M/Hu5iHGc7H7I/y4YZ+m328gQvSep5GvYGXH2+FahacxCT8fd03jtGeFKOug
	n0ZBRpN3scVZ7JWOFwSOtsLcAwhRck8YJtH0fUX7SLWiDNpj423hCt9EVaSl4bqDTcbOvosxA6gyJ
	6EPee65EQS1cKWdI6UhWYrlopptxmzdZL1yzyjqqaqzpZ18in3kOm7fCq95VHk3kyP7qhxvBL0K9b
	piwXZlRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl15x-0000000DDRw-3pXB;
	Mon, 02 Sep 2024 07:03:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl15g-0000000DDQ8-3bgE
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 07:03:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sl15d-0000B0-JI; Mon, 02 Sep 2024 09:03:05 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sl15d-004qDp-0E; Mon, 02 Sep 2024 09:03:05 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 336FF32F1A0;
	Mon, 02 Sep 2024 07:01:40 +0000 (UTC)
Date: Mon, 2 Sep 2024 09:01:37 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-can@vger.kernel.org
Subject: Re: [can-next,v3,00/20] can: rockchip_canfd: add support for CAN-FD
 IP core found on Rockchip RK3568
Message-ID: <20240902-aspiring-amphibian-swan-f65506-mkl@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <20240902032837.1513090-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240902032837.1513090-1-a1ba.omarov@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_000308_916968_22CE3B77 
X-CRM114-Status: GOOD (  14.77  )
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
Content-Type: multipart/mixed; boundary="===============7923736747811641755=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7923736747811641755==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mqo32kt2tutemk2n"
Content-Disposition: inline


--mqo32kt2tutemk2n
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 02.09.2024 06:28:37, Alibek Omarov wrote:
> >The IP core is a bit complicated and has several documented errata.
> >The driver is added in several stages, first the base driver including
> >the RX-path. Then several workarounds for errata and the TX-path, and
> >finally features like hardware time stamping, loop-back mode and
> >bus error reporting.
>=20
> We've tried this on v2, with a custom board with Radxa CM3I connected and
> it's even more stable than BSP driver we backported ourselves.
>=20
> Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>

Thanks for testing.

Are you using the CAN in production devices? The driver runs quite good
on a v3 chip, but still not stable on the v2. But as our customer now
only uses v3, I don't have any more time left to fix v2 issues. Drop me
a note, if you have issues with the v2 chip.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--mqo32kt2tutemk2n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbVYswACgkQKDiiPnot
vG/4pwf/XqsOn5T2gw6QPjXP5lu6vQUNgtmPrw2YFTTqxzcvJYQWrrf3TmJnzl2Z
AWzG8QH4W2HtSj0yPJlA4w3bUlbrU6mF7onnLWds+vssC2RkI0hrIqIkATsu1BKf
rWUT+Kpmq0xiRKkuXFMLBlb7yjPutpYV0NPyatTyVD1bwPE3uZ/KsYKsv8DFmvsB
EgAZ1kst0ZmBgDHdZSgcSg+WS+BfYa2piMFgWNmZ00Kni25rlFYE2fP+EE5WROqS
YhFuCqBLJqF4fvmyUTeKivnqEadLnHgG4QiDV5zziaKNcTs9/nMhxKV9E0GMCHDb
dn+UesNKwCdHe+hD9l3J/+gE5ATCYg==
=WTd/
-----END PGP SIGNATURE-----

--mqo32kt2tutemk2n--


--===============7923736747811641755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7923736747811641755==--

