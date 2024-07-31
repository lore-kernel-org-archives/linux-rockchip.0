Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8516C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 08:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Los08mD9235rhZtwgBwKUTLsidUHdwD02QKj4lQSe6Y=; b=jgOwg2JP8Fv/dR1kj1vfRJLy62
	jrj5mvCajfnzvo6NHhccDlAAR7NAb+Og8A48pjcywwkwwiYlUdmVw96ChXR99mza0MOgN5qWL/cuN
	bw57PjjQdloES21OatDIvpPalHvqZOVfySxRMspemW590ZgB1FKY1RmiHjFVIsnu3VFoc9QJcmwaL
	VMFhyccimhhIZ48yh2M/GWd321pK5zWtiqJD4zSBztt4b8f10o6ru7s6hOewZyqIrVDZHw8GMuUHG
	8F3p7nVa50lWSXLA5OUsLzMSuXi7qoEAWA4AJ3I2UHdo+cFsrKaMHOM2X51hcpiwPW2ShLSgZdPx0
	r7rAqdhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ht-00000000EKk-0Dez;
	Wed, 31 Jul 2024 08:02:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4HO-00000000EAN-0JOI
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 08:01:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ4HC-0002st-NQ; Wed, 31 Jul 2024 10:01:38 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ4HC-003Tbs-6H; Wed, 31 Jul 2024 10:01:38 +0200
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id B91A5312689;
	Wed, 31 Jul 2024 08:01:36 +0000 (UTC)
Date: Wed, 31 Jul 2024 10:01:36 +0200
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
Subject: Re: [PATCH can-next 12/21] can: rockchip_canfd: add TX PATH
Message-ID: <20240731-berserk-wandering-lemming-5abd7e-mkl@pengutronix.de>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-12-fa1250fd6be3@pengutronix.de>
 <20240730164401.GD1967603@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240730164401.GD1967603@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_010150_144190_ED326CB6 
X-CRM114-Status: GOOD (  21.92  )
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
Content-Type: multipart/mixed; boundary="===============3653776654671473108=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3653776654671473108==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qjjxgu7e523drimg"
Content-Disposition: inline


--qjjxgu7e523drimg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 30.07.2024 17:44:01, Simon Horman wrote:
> On Mon, Jul 29, 2024 at 03:05:43PM +0200, Marc Kleine-Budde wrote:
> > The IP core has a TX event FIFO. In other IP cores, this type of FIFO
> > normally contains the event that a CAN frame has been successfully
> > sent. However, the IP core on the rk3568v2 the FIFO also holds events
> > of unsuccessful transmission attempts.
> >=20
> > It turned out that the best way to work around this problem is to set
> > the IP core to self-receive mode (RXSTX), filter out the self-received
> > frames and insert them into the complete TX path.
> >=20
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> ...
>=20
> > diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net=
/can/rockchip/rockchip_canfd-tx.c
>=20
> ...
>=20
> > +void rkcanfd_handle_tx_done_one(struct rkcanfd_priv *priv, const u32 t=
s,
> > +				unsigned int *frame_len_p)
> > +{
> > +	struct net_device_stats *stats =3D &priv->ndev->stats;
> > +	unsigned int tx_tail;
> > +	struct sk_buff *skb;
> > +
> > +	tx_tail =3D rkcanfd_get_tx_tail(priv);
> > +	skb =3D priv->can.echo_skb[tx_tail];
>=20
> nit: skb is set but otherwise unused in this function.

Moved into the appropriate patch.

Thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--qjjxgu7e523drimg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmap710ACgkQKDiiPnot
vG88YQgAg+dwmK2wbxGVd7we6a2Cm07aRjhauJAkwCiRHZAO+KZFaTb2E43AhhSE
MwD/uba8v7zETenTpLeWSqLQlDnwAxRitVnloLZJLuKHPbpnxxC8Wjqx32d8ZQ0o
HLgF72DO1nW+fkyjOVV9r8OWKyFi9e709yJ7ZajbJ6mAFi5vxt17B6lhWsY7+6Oc
7ziCvHbdbpKwG2ys0ce5wlALqglcfwVpXQ3a30A4DPysKX9IZpWaBALjSd/E2h8d
f1EoInEKm4yAdrUTgKF+MAZ86SqZWm8M7ns7chmZvVqydr7XShTBlKNwDRZugXwn
O4h2ggdIU5YnzeB9u3uPkbYvHJqDHw==
=ge4Q
-----END PGP SIGNATURE-----

--qjjxgu7e523drimg--


--===============3653776654671473108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3653776654671473108==--

