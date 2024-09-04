Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C556CD4853
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 15:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tRnhP4uoBmRERDNyQ6Vy2hmT9aYe1YwbJwHb0fEWKzU=; b=fetK29YIjlBE81EGUanR/GJsFa
	OdKzh1Zg4phq70W6zNlw9dgHEME7qqXZSbGRKzAbOUQYoQG15en42p4Q1MNI/4iHzGR4SBLYp5/qB
	iHPedJB0DXyO/M+ADho4N9TUuBNa3Gt3f1AFsHuwVmpIZCQARlKJVnfSxNAZ25kf5RJN/ar4jPkJE
	V9Mzj6LlBASpew6qgJQCuv7dq+HaB5c+b09ZBXgGqZx8f7AwdnP29R2nm1m6y3TemZvIEPhMjMJXX
	fnfoMLkcj0IJTmiARxnJ4kbFayqyQNVwRlTVQx5ssj5/DR8zBeKzrF0SA5P/81jsS5nSCqyCOUXJ/
	uDosQRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slrfL-00000004wah-03Mn;
	Wed, 04 Sep 2024 15:11:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slrf4-00000004wWn-0fgL
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Sep 2024 15:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=5cNzc8pxd2HoYOG8sEHavMMlv9cZxQLWudz41TjULl0=; b=jg1gvBCaXPFIkfxgQHHjzytWrK
	0X2oSI8zlngOXqD3iHJ1b2dc/hIzGRNkCFyozbf3tBnad2kdTfbYKSpBOsUqmHcu6uuSCAlL1ACqH
	siZE6KWJqI8snW8TEc7T4a5wzvQ7ZSw4VDG6JXKF3MsnZ14CmUyTaxkXHAw3oaKWbkuxCVsJ/8B6E
	RVdJ6HfvjdkWiU56kVKXUdRCfZCaDhpo+epxdeagLWPN80CaMZ5fu0rACplKDRCOR7+1Ijv70CQxy
	YuHIbQm2QbeghsJJhCtHXufZML9j9TLZm4O6pcKN1mtSNENj4d+2Ksdkmn0Ruc8smfZsQHc0l4Qab
	kCxB+dWQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slreQ-00000000Gzf-3F9g
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 15:10:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slre8-0005tl-7h; Wed, 04 Sep 2024 17:10:12 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slre4-005TzF-TK; Wed, 04 Sep 2024 17:10:08 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6C417332A4A;
	Wed, 04 Sep 2024 15:10:08 +0000 (UTC)
Date: Wed, 4 Sep 2024 17:10:08 +0200
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
Message-ID: <20240904-imposing-determined-mayfly-ba6402-mkl@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <86274585.BzKH3j3Lxt@diego>
MIME-Version: 1.0
In-Reply-To: <86274585.BzKH3j3Lxt@diego>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_161045_128203_1102F6F2 
X-CRM114-Status: GOOD (  13.63  )
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
Content-Type: multipart/mixed; boundary="===============2234377429195156227=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2234377429195156227==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="izku447zxf4ptlhk"
Content-Disposition: inline


--izku447zxf4ptlhk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04.09.2024 10:55:21, Heiko St=C3=BCbner wrote:
[...]
> How/when are you planning on applying stuff?
>=20
> I.e. if you're going to apply things still for 6.12, you could simply take
> the whole series if the dts patches still apply to your tree ;-)

The DTS changes should not go via any driver subsystem upstream, so
here's a dedicated PR:

https://patch.msgid.link/20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutroni=
x.de

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--izku447zxf4ptlhk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbYeE0ACgkQKDiiPnot
vG/NCggAhHZEOGnOwc1rPZrwVIaf2Vk/TKCuDRfTsGiUyyxbdDW+wuoYfftH2EBc
oHFMu3yMYRK83BqZJkyoXOoqdJaxbYnn5Km4uAx6/6mZBRDVecl+NzZajLFOd8Zr
4jAn4NyJobWCkbYqTUF10RKpQXPOMqvP3DmZ0Mo+6Z1fSYRKKCYUXXBkQ/nOyo+7
Kk4ZhppEJA5EPKCn8uflLkypS/y9VqAY22LhIX3t/PlJKU1/H2wuHxOZxsMSac+x
+VZEdQPeqCYzmkZH0Fab6GLhBWQJcRpubtTMFm28J/DjSg3RI+SiOuQjLgwsjIAu
JdlEyGYVRhVLmtPifpYaHUK1YMdLkA==
=o39j
-----END PGP SIGNATURE-----

--izku447zxf4ptlhk--


--===============2234377429195156227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2234377429195156227==--

