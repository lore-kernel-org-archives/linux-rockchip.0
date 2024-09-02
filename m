Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBC4CCD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 08:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WMlIE+FnJj9WXE/EJnsPmBYPzRx2bkt11TjwEBsGJmg=; b=hZ3MT+HG4kdgjC2TkTs2Vh+/6Y
	jkdOjOVaYaKZY+rXs1yHtBGMIyp5diOGUdPT206PW415hUu+rYgSVJlOX7ng4lbeKu7u4/uXhGS9+
	o9EyvdH5FMtKfuTdXsOFo6kJpy8EWdRNd19TyeHF0/5ecuuolKoIzzDXysQ11hIq/QEn4W2ROu5CO
	1UpiKpVWqnvXvkrKohoBJhhmrq1tdfzCoh04Yw5fbhqq54NDM1Oaz72TES1uB6Us72mCANEIvprMI
	FrFo7gJbW5qAmXXANZpLqPpMxDBbB+qtB07NLylYFX1oCjvugo3lzR331EzJ5w1tIcugXKz6U5RyF
	4/p1hhOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2Go-0000000DTCx-1gqO;
	Mon, 02 Sep 2024 08:18:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2Gl-0000000DTCB-11lZ
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 08:18:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sl2Gj-0000Gn-U3; Mon, 02 Sep 2024 10:18:37 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sl2Gj-004rAb-CO; Mon, 02 Sep 2024 10:18:37 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id BB0E53302AD;
	Mon, 02 Sep 2024 07:41:57 +0000 (UTC)
Date: Mon, 2 Sep 2024 09:41:57 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: linux-can@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [can-next,v3,00/20] can: rockchip_canfd: add support for CAN-FD
 IP core found on Rockchip RK3568
Message-ID: <20240902-fast-cream-magpie-6d5cea-mkl@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <20240902073116.1620038-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240902073116.1620038-1-a1ba.omarov@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_011839_308230_635F855D 
X-CRM114-Status: GOOD (  15.85  )
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
Content-Type: multipart/mixed; boundary="===============7582985778663394075=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7582985778663394075==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vvj5dzyb7qvxxin6"
Content-Disposition: inline


--vvj5dzyb7qvxxin6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 02.09.2024 10:31:17, Alibek Omarov wrote:
> Resent to include linux-can@vger.kernel.org by Marc's request.
>=20
> >This series adds support for the CAN-FD IP core found on the Rockchip
> >RK3568.
>=20
> >The IP core is a bit complicated and has several documented errata.
> >The driver is added in several stages, first the base driver including
> >the RX-path. Then several workarounds for errata and the TX-path, and
> >finally features like hardware time stamping, loop-back mode and
> >bus error reporting.
>=20
> We've tried this on v2 patch set, with a custom board with Radxa CM3I
> connected and it's even more stable than BSP driver we backported ourselv=
es.
>=20
> Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>

The difference between the v2 and v3 patch set was changes in DT
bindings and the yaml, so I added your Tested-by the upcoming v4.

Thanks again,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--vvj5dzyb7qvxxin6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbVbEEACgkQKDiiPnot
vG/KsQf9GgcaVWqZu6MOKeNuM/fGIBrk3aNeuKZ9D+yGwdifGqa58/+//WfPR9Jw
/c0+WiCtXiiY1WwU4ulQmfluf9ADF62Vwd7Ep84mvqdgyGuIt+k+QGMga+uJf8uH
c6WYe+7jj1UMfXmuYzl1Rvog5rxhmz/26YHDRdmxnrl0a4JfnmXFHuosANmvNosu
GxxFZ2BQ2lq5UUXP70Z8c6dRRE90h2A7PExDD7f2zNX/PDpENggHZO2g+b0lJUBg
zPgSV3cI1L3DqNbdFh7SzpdzeceFsYz0BlnhDjmOVQuKfehLePHuYmXQuZF2mY9g
um1GuR0blObbLKYe2N+1GMbwSyK7TQ==
=yvUl
-----END PGP SIGNATURE-----

--vvj5dzyb7qvxxin6--


--===============7582985778663394075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7582985778663394075==--

