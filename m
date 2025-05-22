Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F0A0C54E65
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 08:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GteobmORpadccDoGb288RUN5Xw2E31OwpubnBJBeKzI=; b=2dT/YurJQMJ14npCVhnVD1BvZA
	yGH/QTItaMVHzE25H/G0SXK7q1sQVEEchqnFMJsoYVRCXDokRMyIk3htl1GnYF50CehkE1/1a8NsQ
	9Pxaz5eNs7+7NVQzjLfyr9qgEZvVh+T2qwD8b+2ezRFnLTUdz8EjS30ugv5zfmg/OLFzxjEgRbvWh
	XyXSPF8ecJ4xIP0Vskyxn7RyhuSPdaWB2JyEf87XLhpDqHb/NfYpAYZojp2OOo126XvKixB95xO9f
	pMAkuCjnOEXprlmzDBikBzkr+kw50gMhSuE6TRW7u41SyIA5FC6JsCSihHufRuQfASE1TOElzyLrI
	StdIF60g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1DK-00000000GlH-0s1c;
	Thu, 22 May 2025 08:23:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0qT-00000000DJR-1Y2W
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 08:00:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI0qN-0004uV-1S; Thu, 22 May 2025 09:59:59 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI0qL-000hFi-0P;
	Thu, 22 May 2025 09:59:57 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1A403417179;
	Thu, 22 May 2025 07:59:56 +0000 (UTC)
Date: Thu, 22 May 2025 09:59:55 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	cl@rock-chips.com, kever.yang@rock-chips.com, linux-can@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/3] net: can: rockchip: add can for RK3576 Soc
Message-ID: <20250522-delightful-lean-chachalaca-4950e0-mkl@pengutronix.de>
References: <20250522063232.2197432-1-zhangqing@rock-chips.com>
 <20250522063232.2197432-3-zhangqing@rock-chips.com>
 <CAMZ6RqJzR6ucRnCHFq8ZFRnznRsFYq6BMQY24aaROJMLWigU4A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMZ6RqJzR6ucRnCHFq8ZFRnznRsFYq6BMQY24aaROJMLWigU4A@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_010005_401626_6087DDD5 
X-CRM114-Status: GOOD (  18.53  )
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
Content-Type: multipart/mixed; boundary="===============2524635221810178192=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2524635221810178192==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lpmlapbweec4lyva"
Content-Disposition: inline


--lpmlapbweec4lyva
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/3] net: can: rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 22.05.2025 16:51:40, Vincent Mailhol wrote:
> On Thu. 22 May 2025 at 15:38, Elaine Zhang <zhangqing@rock-chips.com> wro=
te:
> >
> > Is new controller:
> > Support CAN and CANFD protocol.
> > Support Dma.
>=20
> Please write a more verbose description with proper sentences.
>=20
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>=20
> You need to break this into several patches and several files.
>=20
> You can not put everything in rockchip_canfd-core.c. Create a
> rockchip_rk3568.c in which you will move all the already existing
> rk3568 specific functions. Then, in another patch, create a
> rockchip_rk3576.c that will contain all the new code. Also adjust the
> headers accordingly.

I think the first patch modifying driver code should be to add the
callbacks to rockchip_canfd-core.c and move the rk3568 code to it. The
second patch to add the rk3576 without DMA and then add DMA mode. Maybe
even split more. Have a look at the series where I added the original
driver for an idea how to add the support incremental.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--lpmlapbweec4lyva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgu2XgACgkQDHRl3/mQ
kZzQJAgApXCC8s2c2+CiMrRCtKvYLVoAutalwYhghaYH2BXfFWc/d+28zc2+kk2x
A0KBEBHsHyNacv50PzO6Cd4sbbvsPUUHEYBHoqFP4rU/v2ume72v4R6vlnGe5wq4
ARFfylPB108a4IQ/rFrJK00fBPA0QEL+xLFhs5qhIC4ULpkFZA2gQ3pvOSaBAC/1
1Lpp8qjNt1Clk2JlI255nJylV04Xe8qcTNq490v1Tj4Cj++vZh414SFvmHBWrbb2
ui2ptgp7K6tqo+GnUu2aFQf1o3GAGoXCEE0AcQCIBuq1d8Rf2lrVM1Koo0cAgNQ1
B2NARj0eLbE2aIKJayqbaBmLHYDzrw==
=uXC8
-----END PGP SIGNATURE-----

--lpmlapbweec4lyva--


--===============2524635221810178192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2524635221810178192==--

