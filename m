Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B2A7C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 08:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0wabP4pXsQ/iFiiV5YhPL3anvQVaXl0Cy7NwiwMo/NE=; b=RVyMAXVfNSzHkKwqja1t08+Vmu
	jyn+lw+cMQZzWzzUXVPYcKKAUbACq+b8lmn8H9mHbYyq+wFkD7qfddqRmInlNghfR9ux215vElOsn
	plyxO3DrmHIVseHHgatbgdMHPRGA1vIh7g48mp5/zvOhYQ6GBEWhZ5EWADQVvpTbJnkKrDXLj8873
	6tZh928UW5oTVbG6/UFvCxrccCHtNUjPS/u3QPeNUkr+yeQYhJTG6vXSG5TDMPFQN6iaPmG/puNjt
	5+Jq6F21OMailAIpLrQsUu63EGLczQ8Y4Yd7NaUsdC6dBE0HF790M6EB4N62yo+Ez5dJfhPaN5VNk
	FWIOAMbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Il-00000000EhC-2GAG;
	Wed, 31 Jul 2024 08:03:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4I9-00000000ER0-0JIA
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 08:02:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ4Hy-0003Hb-De; Wed, 31 Jul 2024 10:02:26 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ4Hx-003Tck-SV; Wed, 31 Jul 2024 10:02:25 +0200
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6582D312695;
	Wed, 31 Jul 2024 08:02:24 +0000 (UTC)
Date: Wed, 31 Jul 2024 10:02:23 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Simon Horman <horms@kernel.org>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>, 
	linux-can@vger.kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next 04/21] can: rockchip_canfd: add driver for
 Rockchip CAN-FD controller
Message-ID: <20240731-viridian-chimpanzee-of-opportunity-be6bfb-mkl@pengutronix.de>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-4-fa1250fd6be3@pengutronix.de>
 <20240730163439.GA1967603@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240730163439.GA1967603@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_010237_150963_F4086B2F 
X-CRM114-Status: GOOD (  21.60  )
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
Content-Type: multipart/mixed; boundary="===============1358389217586057149=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1358389217586057149==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2smo7pdiqnolmwei"
Content-Disposition: inline


--2smo7pdiqnolmwei
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 30.07.2024 17:34:39, Simon Horman wrote:
> On Mon, Jul 29, 2024 at 03:05:35PM +0200, Marc Kleine-Budde wrote:
> > Add driver for the Rockchip CAN-FD controller.
> >=20
> > The IP core on the rk3568v2 SoC has 12 documented errata. Corrections
> > for these errata will be added in the upcoming patches.
> >=20
> > Since several workarounds are required for the TX path, only add the
> > base driver that only implements the RX path.
> >=20
> > Although the RX path implements CAN-FD support, it's not activated in
> > ctrlmode_supported, as the IP core in the rk3568v2 has problems with
> > receiving or sending certain CAN-FD frames.
> >=20
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> ...
>=20
> > +static void rkcanfd_get_berr_counter_raw(struct rkcanfd_priv *priv,
> > +					 struct can_berr_counter *bec)
> > +{
> > +	struct can_berr_counter bec_raw;
> > +
> > +	bec->rxerr =3D rkcanfd_read(priv, RKCANFD_REG_RXERRORCNT);
> > +	bec->txerr =3D rkcanfd_read(priv, RKCANFD_REG_TXERRORCNT);
> > +	bec_raw =3D *bec;
>=20
> nit: bec_raw is assigned but otherwise unused
>      although this is addressed in patch 15 of this series.

Moved there.

Thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--2smo7pdiqnolmwei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmap74wACgkQKDiiPnot
vG+JOAf/emfb6nH2Azb5hIEwHO7Ec6NiZHFJ4fxltDUrlhvntd6uusXl6Fhi0m+K
/d62RTxIAGKmqclchzSUmco9PBQzM+qvKzS4pEJIy9x94/8d9zN4UWu958fzvbtf
ODwyBm0kENT3b3eeqHjO9UtE+Z84BTX45DE0CRdfX4Qg+skvoJUqAUL1Y96Yqe3M
W4FTwtV0YCNzy/K8UCv84h7p2iSV2oXZDIQy41Z/P1EjK1K1cQV2TJfDUYusX8qs
aKmfWKTqART2puRBVfIcZ4Jj55lWEzqRS5olGH8PtS938tDt76W9GqukIZzaApZJ
AXdreEG7Q0UW3XENcL+XLOzhtoyPaw==
=hCaX
-----END PGP SIGNATURE-----

--2smo7pdiqnolmwei--


--===============1358389217586057149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1358389217586057149==--

