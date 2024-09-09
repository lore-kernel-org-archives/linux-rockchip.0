Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20DCEECE57B
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PMm60KEFNO2NE9jVyvwoj3/ntzbEpzVuCOWxIUG9W1Y=; b=a1pTHpk4/MzpfM11+uhCso6OWd
	zcaG3jvrp4craKdqEaclkoX9w9b3VdNAC+pR7oWhiw/fw1EYsiJ9glOge7dlJVnib2TK8dxkGxBjR
	Ng7NSK+LHeWZ6B6nwCeFbJUxqt19n5tPGT4UtDBsKfVIWToqOb+Y4lTxkr0wHjIl3dzsMpBIE/Nia
	kz9f38iF+2v98oqxaFkPiX5kgce8OindYc+PAxM0z9T14eW6HyXLAOnoamq9XLV1nitmF7JlpT92n
	dPBMr+7A5/nxY0jw/03bBjwo7C7h//AzSkKKIqzZcCEdIxboVVt0dY1kH8dKwGB/3e+k6wEBP2ONz
	mByE+tYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snaE2-00000001D3P-2KbF;
	Mon, 09 Sep 2024 08:58:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snaD1-00000001Cz2-4Ayr
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 08:57:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1snaCq-0004Ic-JM; Mon, 09 Sep 2024 10:57:08 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1snaCo-006btk-VB; Mon, 09 Sep 2024 10:57:06 +0200
Received: from pengutronix.de (pd9e595f8.dip0.t-ipconnect.de [217.229.149.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 97BCB3366D4;
	Mon, 09 Sep 2024 08:57:06 +0000 (UTC)
Date: Mon, 9 Sep 2024 10:57:06 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Simon Horman <horms@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, kernel@pengutronix.de, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, llvm@lists.linux.dev, patches@lists.linux.dev
Subject: Re: [PATCH] can: rockchip_canfd: fix return type of
 rkcanfd_start_xmit()
Message-ID: <20240909-arcane-practical-petrel-015d24-mkl@pengutronix.de>
References: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
 <20240909084448.GU2097826@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240909084448.GU2097826@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_015720_041458_0B723F39 
X-CRM114-Status: GOOD (  21.89  )
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
Content-Type: multipart/mixed; boundary="===============2028127812368156867=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2028127812368156867==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fuepnusvih4poru2"
Content-Disposition: inline


--fuepnusvih4poru2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09.09.2024 09:44:48, Simon Horman wrote:
> On Fri, Sep 06, 2024 at 01:26:41PM -0700, Nathan Chancellor wrote:
> > With clang's kernel control flow integrity (kCFI, CONFIG_CFI_CLANG),
> > indirect call targets are validated against the expected function
> > pointer prototype to make sure the call target is valid to help mitigate
> > ROP attacks. If they are not identical, there is a failure at run time,
> > which manifests as either a kernel panic or thread getting killed. A
> > warning in clang aims to catch these at compile time, which reveals:
> >=20
> >   drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: incompa=
tible function pointer types initializing 'netdev_tx_t (*)(struct sk_buff *=
, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, struct n=
et_device *)') with an expression of type 'int (struct sk_buff *, struct ne=
t_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
> >     770 |         .ndo_start_xmit =3D rkcanfd_start_xmit,
> >         |                           ^~~~~~~~~~~~~~~~~~
> >=20
> > ->ndo_start_xmit() in 'struct net_device_ops' expects a return type of
> > 'netdev_tx_t', not 'int' (although the types are ABI compatible). Adjust
> > the return type of rkcanfd_start_xmit() to match the prototype's to
> > resolve the warning.
> >=20
> > Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-=
FD controller")
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>=20
> Thanks, I was able to reproduce this problem at build time
> and that your patch addresses it.

FTR: the default clang in Debian unstable, clang-16.0.6 doesn't support
this. With clang-20 from experimental it works, haven't checked older
versions, though.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--fuepnusvih4poru2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbeuF8ACgkQKDiiPnot
vG+3gQf+MluezEfY084GfE16SOshu37NwV1Ignu8Goqy9G7jmMndcoundvwxiosq
9Hd/6ILhI4GzWIF4a7UKOP6e+QPHz3eJ4V2Mgbs13QYtoLDf1nT+h+14MkiIMipK
s6z9Ee31ptiZbn2raC7J6f8Z72+F0iysurkx39ZT8vt7Okq70pBQUN+HzPgH4Ryv
MPcMpvh6mRaSQyC3zUuTnO1fW6hTMQGhOjJ4/TH5yaQvSo2N4qJExjM05X6Zz7lx
uXt78y+/LA7U3Ew4fXyEhStgIxPlFalFcR47lXQzuVBmIRiV3Z44PONYJHPjsS8m
lUd5S51lrVQG5sCik6LNGoQvZst9Yg==
=JBly
-----END PGP SIGNATURE-----

--fuepnusvih4poru2--


--===============2028127812368156867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2028127812368156867==--

