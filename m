Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77793C54F30
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 May 2025 16:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CEwjp6cIF5j02aHunvbtSSJKq7g9fc9HSheVTtQg5f0=; b=sh478nyzaamAPNRlYCYnCo0AFh
	kIFDA0rmOUX3b5C9YYCVa0CANTJ4DJGsvBcMCFKDKElkdVzdXGSpl7/gryFRE3+qygqyJBtWOLWPa
	XLEk77xMESHmarCCM38dFHtJpt1BwFkwoXTg5rJNCcKIIVSMdtBtUCoUHOAsvCkHloLaCGNij3t/T
	eTuUheq0TiCUPO5KaJhXe29JGmAMN0Sw0lWX9HB9gV8ySUUfbTiuaNXucoMRpcq8VVPFmPFSj4Mf+
	OTwIuhDChO6Jhk71OiZT9eVVq1wcwjaaXaAo8+agzHO7ZjsXCJpkNJZqau/+0J6VH9saoLnhduei2
	OHD3+PyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJwjI-0000000B6oy-3Sle;
	Tue, 27 May 2025 16:00:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJwh7-0000000B6Oo-2zTE
	for linux-rockchip@lists.infradead.org;
	Tue, 27 May 2025 15:58:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uJwgz-0004eD-Ic; Tue, 27 May 2025 17:58:17 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uJwgx-000Rc3-37;
	Tue, 27 May 2025 17:58:15 +0200
Received: from pengutronix.de (p5b1645f7.dip0.t-ipconnect.de [91.22.69.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 8E8EB41AA8E;
	Tue, 27 May 2025 15:58:15 +0000 (UTC)
Date: Tue, 27 May 2025 17:58:15 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 0/4] rockchip: add can for RK3576 Soc
Message-ID: <20250527-steady-dormouse-of-culture-c45bd6-mkl@pengutronix.de>
References: <20250526062559.2061311-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250526062559.2061311-1-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_085825_745195_9DAAEE31 
X-CRM114-Status: GOOD (  14.28  )
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
Content-Type: multipart/mixed; boundary="===============0161357591430124277=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0161357591430124277==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pckthsx2tg77kzdv"
Content-Disposition: inline


--pckthsx2tg77kzdv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 0/4] rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 26.05.2025 14:25:55, Elaine Zhang wrote:
> rk3576 can is a new controller,new register layout and Bit position
> definition:
> Support CAN and CANFD protocol.
> Support Dma.
>=20
> There are major differences from the previous rk3568.
> All errata on the rk3568 have been fixed and redesigned.

Can you configure the IP core for CAN-2.0 a.k.a. CAN-CC only mode, so
that it only receives CAN-CC frames only and not CAN-FD?

What happens if you configure register RKCAN_STR_CTL, ism_sel to 2'b01:
CAN Fixed and receive a CAN-FD frame?

Is there a more detailed description to "2'b00: Flexible; cover_mode
must disable" and "2'b11: Mixed. cover_mode must disable"?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--pckthsx2tg77kzdv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmg14RQACgkQDHRl3/mQ
kZyZQgf7BB/yyOkv3ry1psGUXvjfa6oVbkh/JVbPbds5HJPB50UhBhjmhbGKPq30
r4BTF8f4ZEPWK+cEbibjbBdW5DXR4VLJ1bMX4C2f53uDNua+5Z3C6TLq1R5IvDoy
PDvwfcRTEba9Oivuu9TNEpsV7hMN9opc4UORUId8yU/2vco4Pt3bQSUlbm9iRgMk
hrWJFWQ+YyEEiJfhVp7V5CarGiEB64ALiK7y8CTESWtc1IWINpFb7raFMF2RvSMW
/oVTymupsa9ltY8nVa+Mz7o4BXe1wG2ReXfn2QIB+S7+nN+ZGF2PMl/V4a1s9ByH
kBPX9qhW+6hvLQgeDJhzgFmF9bYpTQ==
=y8iK
-----END PGP SIGNATURE-----

--pckthsx2tg77kzdv--


--===============0161357591430124277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0161357591430124277==--

