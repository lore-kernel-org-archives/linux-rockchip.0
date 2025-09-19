Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA656CAC59A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Sep 2025 19:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0NtcVe2EeoKBF73IRGF+x8MD3PzlnbrC5pkGZDngWUM=; b=3m4C4M9oplI2xZc6hXhAWsBF5f
	2BqERh+oVlcOJSmdQ3+6IdRMgJ14yaD2dW1/6S9dK1DvJFnY9GSK1rj2qdAUB5cElHZbMI6HNDUL5
	GEZt70SMhzB83euxNCzopgNQ+NifWNHZIiout6dtYMdQeW/v4SsxqBqwS5xWR6+ku4Rm7QSB5Dtfx
	qt5tC1hxpNgscGyQ1bK4+rh2udR+TBV46MOVbWRkxgoE6cwxt1lZIzukcPxs7dxL608wql3uqsiFN
	/SrIwX9UL6xSWMsDtvwUrhTaOteyrU8tpRGugh0DJ7k+lbLI0zXR51WEhl8z0Vo2YK6Ubsa1gjuwH
	dF6sgv8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzgOu-00000003rBc-3LZ9;
	Fri, 19 Sep 2025 19:04:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzgOr-00000003r9t-2Z4D
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Sep 2025 19:04:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uzgOp-00026Z-CN; Fri, 19 Sep 2025 21:04:03 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uzgOn-0029YZ-1s;
	Fri, 19 Sep 2025 21:04:01 +0200
Received: from pengutronix.de (ip-185-104-138-125.ptr.icomera.net [185.104.138.125])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A27B74751DB;
	Fri, 19 Sep 2025 19:04:00 +0000 (UTC)
Date: Fri, 19 Sep 2025 21:03:59 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Andrea Daoud <andreadaoud6@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: Possible race condition of the rockchip_canfd driver
Message-ID: <20250919-lurking-agama-of-genius-96b832-mkl@pengutronix.de>
References: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_120405_642903_8815528F 
X-CRM114-Status: GOOD (  20.38  )
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
Content-Type: multipart/mixed; boundary="===============8655820571882576945=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8655820571882576945==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gge37mtwq6wtzjdu"
Content-Disposition: inline


--gge37mtwq6wtzjdu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Possible race condition of the rockchip_canfd driver
MIME-Version: 1.0

Hello,

On 18.09.2025 20:58:33, Andrea Daoud wrote:
> I'm using the rockchip_canfd driver on an RK3568. When under high bus
> load, I get
> the following logs [1] in rkcanfd_tx_tail_is_eff, and the CAN bus is unab=
le to
> communicate properly under this condition. The exact cause is currently n=
ot
> entirely clear, and it's not reliably reproducible.

Our customer is using a v3 silicon revision of the chip, which doesn't
this workaround.

> In the logs we can spot some strange points:
>=20
> 1. Line 24, tx_head =3D=3D tx_tail. This should have been rejected by the=
 if
> (!rkcanfd_get_tx_pending) clause.
>=20
> 2. Line 26, the last bit of priv->tx_tail (0x0185dbb3) is 1. This means t=
hat the
> tx_tail should be 1, because rkcanfd_get_tx_tail is essentially mod the
> priv->tx_tail by two. But the printed tx_tail is 0.
>=20
> I believe these problems could mean that the code is suffering from some =
race
> condition. It seems that, in the whole IRQ processing chain of the driver,
> there's no lock protection. Maybe some IRQ happens within the execution of
> rkcanfd_tx_tail_is_eff, and touches the state of the tx_head and tx_tail?
>=20
> Could you please have a look at the code, and check if some locking is ne=
eded?

My time for community support is currently a bit limited. I think this
has to wait a bit, apologies :/

regards,
Marc=20

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--gge37mtwq6wtzjdu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmjNqRoACgkQDHRl3/mQ
kZyo+Qf/T3m3vtjMMPeAzZSo9sBY5Ua+T7LYK3oU4OfY2FXjMwtwj7KG1YlMzZfB
EnKx8YEiYzxOsDhgPPMATwByRfx4MDXOTmpP/VkU6+bQJsNbJ5uox/LR56/Ss8wU
kiB1pcPpvnqaxLiVGStJ1Hy/LyKACHaKsXsFiBiUDCCovrz6Ogk1NTp9s5sa5HZC
piCOg4cdZqaNlC7P2tBa1hU9HrkdUn/bP+VYqdzzk85Z0DFsCi3WpdMkN/Dhymf+
eOoJ7pRSoKbUAiO+OMoGtxYgjtNKHW1GYhg3Q6BuLn+OFoNhigDhoeF62IJpGofO
lJKKMXeaO9WXM4ryfvXl6ra4MYxvSg==
=R78M
-----END PGP SIGNATURE-----

--gge37mtwq6wtzjdu--


--===============8655820571882576945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8655820571882576945==--

