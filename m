Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F04CAC592
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Sep 2025 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KMx3G98yVZpfDNBW7SCelOng7ikMsbiVDBC5PI4uJtY=; b=xRJ3cNnDXEM8eEZhPrmUvUdzjs
	uSVgsQfMEiNMZAOa41OVfdPiM/Zm37CF3nUmNSp62cAO7zhby4j1/HFE2Q56kYNyBPhPTlA3+oqSO
	xb1QX05iFni5uV5WBHOF6xXhXdt38xrkHoSsHdx5UaGAMGclBedRA5kUbsvPSTJN8ET4wKl4fsN12
	1vGlIfnAs4o/rNqhulcZf5NY9yVC/1Ncp2MEYP616arGXXIIVizC6OGCJV8p52CtJNNMjoqRhqTkB
	4kr255JI00FYI7QZDT/2kynGFZosvCA3pLhg+45oK9sS8F9pQ11JRCrSJf6oR9lh1KzEST1jnIg58
	jIv1Ru+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0gLh-0000000ARAH-1wru;
	Mon, 22 Sep 2025 13:12:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0gLg-0000000AR8w-1271
	for linux-rockchip@bombadil.infradead.org;
	Mon, 22 Sep 2025 13:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=q7pqyN+Z24wldmlTOpFZF0TNsqoEvnNHZvrjYMilkQ4=; b=Qj2rxdd1fRb6T6XP/TL4qevXcQ
	vzrmfjTsYqS6pujUTTPSGegeLAM96vXTglOJHVuvSqpusG8cBybYeIkvUWjeyrRZjnNnGgP4+zmKn
	6VSX4chdZ88/2CFQ9E7TsnBJ1gfIzK4gMey5PsT1Hm5aslosNZSRzGo0iNlN3cROwMWj4q5QwpWcU
	b7CPSO3O3wm4wTI89t1SyiqTmmc1SjGvtxuPetMo71F33n3J/MdUhGYLjICnB4ZQc4eLPnZokP6px
	VfRvOA20T/YUUU57CTVA+zxz7ILNGXtiC5dCoZ8ccd/hmW7EPFXxzB9lIdKyRsNZQyLAWqQ6rKr5A
	e0owKFXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0gLc-00000008I78-37Zp
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Sep 2025 13:12:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1v0gLU-0003pc-1P; Mon, 22 Sep 2025 15:12:44 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1v0gLS-002bMp-1J;
	Mon, 22 Sep 2025 15:12:42 +0200
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 06C7C477022;
	Mon, 22 Sep 2025 13:12:42 +0000 (UTC)
Date: Mon, 22 Sep 2025 15:12:40 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/4] dt-bindings: can: rockchip_canfd: add rk3576
 CAN-FD controller
Message-ID: <20250922-secret-visionary-macaque-4f52a7-mkl@pengutronix.de>
References: <20250922071543.73923-1-zhangqing@rock-chips.com>
 <20250922071543.73923-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250922071543.73923-2-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_141253_029561_0F52962C 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2006568629704617246=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2006568629704617246==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ta3ykn3sqrxc7f3w"
Content-Disposition: inline


--ta3ykn3sqrxc7f3w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 1/4] dt-bindings: can: rockchip_canfd: add rk3576
 CAN-FD controller
MIME-Version: 1.0

On 22.09.2025 15:15:40, Elaine Zhang wrote:
> Add documentation for the rockchip rk3576 CAN-FD controller.

Please make DMA optional, I'm not convinced that it brings any benefit
for the system.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--ta3ykn3sqrxc7f3w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmjRS0QACgkQDHRl3/mQ
kZzmYgf/XGDJsCLS4h1r22LbETIcTtzkKskRIg8uS4VtJ6+B3fpEpeSdiurlbgLJ
H2Uk60UC2qwtfCGX34k3W/KUZAcMiWUF0uSwIey54+V/47Z57T7tyF+qlLXavAJg
EvMzEqQBXo/HF7qKjn5zwGt/cfJzkaZ0gQurGnuGcVfQCtVh6yyjRK7zA3az9tso
9aeJjgqJxCR2Eu41e1X5ch1iFULgtRXPhzeUi1ApANoiqWy10XR1GpCRvOlMYxQo
d4Ss493hcO5HefbgwTXnJ12waxg3YZSOSfV9iRdiZoSdgeGZyYKd+Ffeyps8Ep34
DZMvjmPilwpExGCnFVr7LJBfrco1Ww==
=/ET9
-----END PGP SIGNATURE-----

--ta3ykn3sqrxc7f3w--


--===============2006568629704617246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2006568629704617246==--

