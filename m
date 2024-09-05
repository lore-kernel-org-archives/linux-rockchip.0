Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 902FDCD5BC7
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 13:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k/MOWqoooGv9eanb0MoHFsVPZIWfZS350f84RuyQagk=; b=1Lc8Bax6KeWjuuaXoBlVQf9aBG
	K6LXIBu3U4/QSjJc5tIoYR7CfitGmK22TwKAZSrozKtTj0yTqlFUKSjlchDQlaMlJ++holOPiy5pH
	gc1ebHKcB6FJtgyl8lOJyrXXnB57u0FZC8943OBPktUWdPszmXGFZB4LxTDZBcoCyfpejm/75TT6P
	DqRfOmnEEY7J/PvZbmv8Z67APGhip8O+yCPvps0ZbLmbCUfwzB41eppIxYmoreU3f5EK0RY2Nmhta
	OTMDAi932W22gfIJOUheVIM9J1yfUWGLnneFuTukJoUsSN1qxp6qYs7dZBE/fj9ZLzeZE4QWnlQHG
	4nITSHGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCWo-00000008XBp-2Vhz;
	Thu, 05 Sep 2024 13:28:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCTx-00000008WaQ-2YhU
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Sep 2024 13:25:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1smCTY-0003eO-E5; Thu, 05 Sep 2024 15:24:40 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1smCTV-005iOY-Fj; Thu, 05 Sep 2024 15:24:37 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 031D4333683;
	Thu, 05 Sep 2024 13:24:37 +0000 (UTC)
Date: Thu, 5 Sep 2024 15:24:36 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	David Jander <david.jander@protonic.nl>, Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <20240905-thoughtful-gerbil-of-growth-28f014-mkl@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <86274585.BzKH3j3Lxt@diego>
 <20240904-imposing-determined-mayfly-ba6402-mkl@pengutronix.de>
 <4091366.iTQEcLzFEP@diego>
 <20240905-galago-of-unmatched-development-cc97ac-mkl@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20240905-galago-of-unmatched-development-cc97ac-mkl@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_062505_669274_DB0BBDE1 
X-CRM114-Status: GOOD (  20.27  )
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
Content-Type: multipart/mixed; boundary="===============7801139803258471661=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7801139803258471661==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z26o4qqv53ya5nl6"
Content-Disposition: inline


--z26o4qqv53ya5nl6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 05.09.2024 08:19:10, Marc Kleine-Budde wrote:
> On 04.09.2024 18:43:52, Heiko St=C3=BCbner wrote:
> > Am Mittwoch, 4. September 2024, 17:10:08 CEST schrieb Marc Kleine-Budde:
> > > On 04.09.2024 10:55:21, Heiko St=C3=BCbner wrote:
> > > [...]
> > > > How/when are you planning on applying stuff?
> > > >=20
> > > > I.e. if you're going to apply things still for 6.12, you could simp=
ly take
> > > > the whole series if the dts patches still apply to your tree ;-)
> > >=20
> > > The DTS changes should not go via any driver subsystem upstream, so
> > > here's a dedicated PR:
> > >=20
> > > https://patch.msgid.link/20240904-rk3568-canfd-v1-0-73bda5fb4e03@peng=
utronix.de
> >=20
> > I wasn't on Cc for the pull-request so I'll probably not get a notifica=
tion
> > when it gets merged?
> >=20
> > So if you see your PR with the binding and driver getting merged to
> > next-next, can you provide a ping please?
>   ^^^^^^^^^
>   net-next?
>=20
> Will do.

The driver reached net-next/main:

https://lore.kernel.org/all/172554243626.1687913.5623663966016175191.git-pa=
tchwork-notify@kernel.org/

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--z26o4qqv53ya5nl6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbZsREACgkQKDiiPnot
vG/JvAf/XoO+j2bRaV/OIKVKmVBLZH5kRJnidPSorqD9aB1pbIDk0+hNkyuHTghI
sZIvHzuNJYf+y93aEiK2M3k8++YM0bEMLbkVOOJEK/CaMHCf1jIyFgOATkffElPC
yOjaUlOuwyJwZt2idPGQIRqdoCO1PtkPTs6mki1ZY3y8pO7y1HXsoGJy4sKLnXxp
BTZpdvAUZmdGeLEUefKaxiRH1NHMjh3jAb1TEst2IWdB/13IjNTw3jeALqer28nq
1eJflTIXAs24J4CxUruHRl1YttaaTgyets+Qu0jTZnBZSnzlbm7qh+t8qrAoPyQx
+2os847WP91NL5CRSbE0eMGZBR8A+w==
=DLSm
-----END PGP SIGNATURE-----

--z26o4qqv53ya5nl6--


--===============7801139803258471661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7801139803258471661==--

