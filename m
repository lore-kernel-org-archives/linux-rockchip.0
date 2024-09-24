Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55CBDCF9C6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 12:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gK7Beqj6TGqrrcN6TUQOrX9WYZY+8WVF9p1T4nCdZEc=; b=hG3sEjpCROBTsxdVUUBDKp843S
	WLDivprIriMVHrWVgvNME/xCliqZpQwXhvF2FkoQiLVNC2lqOrZm8B9TvH5EDJ6IdVa+03L9dL1DB
	OacZqnyBcQ8MiEHusHCDaDxyMe3AKfkJF7ZKGkSyTJukLpOfHhYKA9X02TXB4obpe7AOwstQbaFPa
	kSnN37eMst0Nhf7dWXXRfDlYLzrmjruSKit3Uh7/bYAsyusQTNaIxUsYvf/nIZGlMPmF67xe3Ojvf
	0yJ4IGsRkxcSXacLEBQCO/XzhBggdraDckz90XNCh26mJeyAtbwk5bsTpFVifcr+iagG9SOqgKDZt
	+Lg/at0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st4aP-00000002JKG-2YhE;
	Tue, 24 Sep 2024 12:24:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st4TV-00000002IJF-1zXm
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Sep 2024 12:17:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1st4TL-0004Yy-P6; Tue, 24 Sep 2024 14:16:51 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1st4TJ-001CpB-TZ; Tue, 24 Sep 2024 14:16:49 +0200
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 53C90341CA6;
	Tue, 24 Sep 2024 12:16:49 +0000 (UTC)
Date: Tue, 24 Sep 2024 14:16:48 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] can: CAN_ROCKCHIP_CANFD should depend on ARCH_ROCKCHIP
Message-ID: <20240924-portable-spotted-hawk-279a86-mkl@pengutronix.de>
References: <a4b3c8c1cca9515e67adac83af5ba1b1fab2fcbc.1727169288.git.geert+renesas@glider.be>
MIME-Version: 1.0
In-Reply-To: <a4b3c8c1cca9515e67adac83af5ba1b1fab2fcbc.1727169288.git.geert+renesas@glider.be>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_051701_518752_E67B4992 
X-CRM114-Status: GOOD (  12.68  )
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
Content-Type: multipart/mixed; boundary="===============3941297881187829685=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3941297881187829685==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="luiiscxjhx5doxr2"
Content-Disposition: inline


--luiiscxjhx5doxr2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 24.09.2024 11:15:31, Geert Uytterhoeven wrote:
> The Rockchip CAN-FD controller is only present on Rockchip SoCs.  Hence
> add a dependency on ARCH_ROCKCHIP, to prevent asking the user about this
> driver when configuring a kernel without Rockchip platform support.
>=20
> Fixes: ff60bfbaf67f219c ("can: rockchip_canfd: add driver for Rockchip CA=
N-FD controller")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied to linux-can/testing.

Thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--luiiscxjhx5doxr2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbyra0ACgkQKDiiPnot
vG+1PQf/UylvX67IKTMkg7IHv8Andvsu3ca/sqfLejrVeJnVdsG1ObQCbDcBLJDf
Ak+W/ilndcH9Kv6IbNQSslYyukRhS5H+0cbEqO4EAYtthdBJ86CTcYKfJIhOIRxW
QSJGg/MpxxVxf2526VCEJJvc6R/8j3rxsLFGZK2vJrApKKUQJk1vIpv0mMVMa43l
x7T1oGwnkaP8auRQL7gSmA6TWd7Gh+o/6KZow1z/asUYRvdzeg3MDoneraLqNJ3q
Ghn/ZWLz/v2YgEh0tNOjv9K1NNFFJhryOwGmOyGmxiOtfogc+wCYrCqI1kOjxwg9
Jj3LBsk8f6qKjQN88mgvF+GiQPt4Zw==
=ZWHR
-----END PGP SIGNATURE-----

--luiiscxjhx5doxr2--


--===============3941297881187829685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3941297881187829685==--

