Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE4BCAC5A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 07:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=erLdtMCYAId3POCE4JT+nDMRhtclMZPqwmT8JRWRhIE=; b=BneAqdo9iTk4rg3xtfHfvP4atN
	yBLOVF3UV80asNGMSSkDESWyKzNc7cRgZk+VgfyylAVxtbaEKRzIa2zhEM0H2G0Omo+ZAeCp5l44A
	4BoJ/W78/c0zu3m0TnTbPk1BoWnN8mbdJk/in5PfxRwHLWBMSqiBdZt0XyUele8zrZNE0ZQPEz7OA
	Ggpvz7dZH9tI3IpcuTGQNDhXsIS28xn++fJy5gjRuB3ry1P1O9stbV6Z2bERQf3KV9Ervjq5UZprg
	EPreBWtwNynih0sLWT5ZX/AdWqeiqAl0sdY/kLDeZKeSBRF6SazLnChuHKtufQzMy4fNYcDcIOeER
	LX+7KwjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0xfz-0000000CiS8-0YIU;
	Tue, 23 Sep 2025 07:43:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0xfw-0000000CiQj-0GIR
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 07:43:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1v0xfh-0003cg-Dt; Tue, 23 Sep 2025 09:42:45 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1v0xff-0003NS-2V;
	Tue, 23 Sep 2025 09:42:43 +0200
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 24ABF4779C9;
	Tue, 23 Sep 2025 06:57:17 +0000 (UTC)
Date: Tue, 23 Sep 2025 08:57:14 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 0/4] rockchip: add can for RK3576 Soc
Message-ID: <20250922-charming-resourceful-caterpillar-d47761-mkl@pengutronix.de>
References: <20250922071543.73923-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250922071543.73923-1-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_004300_107757_4A39BB99 
X-CRM114-Status: GOOD (  12.17  )
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
Content-Type: multipart/mixed; boundary="===============2307150234852121617=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2307150234852121617==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="as43upblxqmnobgv"
Content-Disposition: inline


--as43upblxqmnobgv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 0/4] rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 22.09.2025 15:15:39, Elaine Zhang wrote:
> rk3576 can is a new controller,new register layout and Bit position
> definition:
> Support CAN and CANFD protocol.
> Support Dma.
>=20
> There are major differences from the previous rk3568.
> All errata on the rk3568 have been fixed and redesigned.

=E2=97=8F 9550057c4efe: net: can: rockchip: add can for RK3576 Soc
  =E2=97=8F checkpatch.pl: drivers/net/can/rockchip/rockchip_canfd-core.c:2=
92: WARNING: void function return statements are not generally useful

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--as43upblxqmnobgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmjSRMUACgkQDHRl3/mQ
kZwilwgAhBRQy2zPv/I02Kws1RfbW8BIiG7My+w4HUDEO2nxf6mBsMyGVqg6JCs2
fXbbzIGaI463/UBdj8EWwZvd11i99LIzikSvrFir7eEGr92tJ6YvdcKDzs40p8Wp
w16+ULDgSrcDO6z5Q8tHwid2gy4W+ZBOC0AD5Ckp5RMbX0lwUWSy1ilXaKetSQMT
qj6KsySbfgfwDeZDSWMc+6ReB2bMjFXFxTpLCDb5j6m9HaVrhWpj+tekJQO+AX0g
is3jh6G+VB7Prr/VI2312a/9bMnIInEYLcjiITUgk2eTR3klze4C4XPuv4kcSEkA
ijb+dmG2vzdoPZpxSzAM0+04TDg/UA==
=vfsm
-----END PGP SIGNATURE-----

--as43upblxqmnobgv--


--===============2307150234852121617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2307150234852121617==--

