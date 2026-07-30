Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C02BC55162
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 11:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7hF3fZBKw/MN5gARf9K8tCABqgibICAl+F/2Mk6o2hg=; b=UrhmJ2uwp5FlZG2npshHOdBp25
	Zf+z0Ct5IpVKqHsUaq5QYOKZ8AqRHrUmqScln5JIO1PfLA99qijNfd3ryI4pjGNEGDACrZB79yLze
	E8o/L9X1rJtr8xYUOzmQMEIx/XhfYv92ZHBFNpV3JLVclCPt3tbgwLt2oXMzSrZ1csieoDETA7ytD
	P/RehwI4O9xpDx39QjnmI34BJ5uSZyRusB19G4WB6qbdoIlKgyN0XBM2rbl2nLgdCapcNb4/7JeSO
	O7OKsElzvhEVPW7qlrfgpmj/q74rtNtEl+zD8MDeqctHbdFhR5fRdHJw5kGZyegww05BS/uJVJ281
	I67K27HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpP6Q-0000000AMsg-1A5X;
	Thu, 30 Jul 2026 11:39:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpP6L-0000000AMrG-3VFI;
	Thu, 30 Jul 2026 11:39:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7CC41202AE8;
	Thu, 30 Jul 2026 13:38:58 +0200 (CEST)
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1wpP6I-0022Td-1G;
	Thu, 30 Jul 2026 13:38:58 +0200
Received: from pengutronix.de (p4ffb2dc6.dip0.t-ipconnect.de [79.251.45.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1DA1C576EA4;
	Thu, 30 Jul 2026 11:38:58 +0000 (UTC)
Date: Thu, 30 Jul 2026 13:38:57 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Cunhao Lu <1579567540@qq.com>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/3] can: rockchip_canfd: prevent TX stall on echo skb
 failure
Message-ID: <20260730-secret-soft-swallow-4da108-mkl@pengutronix.de>
References: <tencent_D802EB485A801362BF9F54130C0D990C6206@qq.com>
 <tencent_5E44473FC626379A34998A84DF11E6000807@qq.com>
MIME-Version: 1.0
In-Reply-To: <tencent_5E44473FC626379A34998A84DF11E6000807@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_043902_033068_19C721E4 
X-CRM114-Status: GOOD (  22.51  )
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
Content-Type: multipart/mixed; boundary="===============3162871425559036441=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3162871425559036441==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="275kakqmhn4gk3eu"
Content-Disposition: inline


--275kakqmhn4gk3eu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/3] can: rockchip_canfd: prevent TX stall on echo skb
 failure
MIME-Version: 1.0

On 30.07.2026 18:11:46, Cunhao Lu wrote:
> rkcanfd_start_xmit() advances tx_head and requests transmission even when
> can_put_echo_skb() fails. This creates a pending TX entry without the echo
> skb that the RXSTX completion path needs to match the self-received frame.
> The entry cannot be completed, and the netdev TX queue can remain stopped
> after the two-entry software FIFO fills.
>
> Do not advance tx_head or request transmission if the echo skb cannot be
> installed. Account the frame as dropped and report the error. The
> -ENOMEM and -EBUSY paths have already consumed the skb; explicitly free
> it on -EINVAL, where ownership remains with the caller.

Can you update can_put_echo_skb() to always free the skb in the error case?

> Fixes: b6661d73290c ("can: rockchip_canfd: add TX PATH")
> Cc: stable@vger.kernel.org
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  drivers/net/can/rockchip/rockchip_canfd-tx.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/c=
an/rockchip/rockchip_canfd-tx.c
> index 12200dcfd338..d2cbe25c46d6 100644
> --- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
> +++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
> @@ -125,8 +125,18 @@ netdev_tx_t rkcanfd_start_xmit(struct sk_buff *skb, =
struct net_device *ndev)
>
>  	frame_len =3D can_skb_get_frame_len(skb);
>  	err =3D can_put_echo_skb(skb, ndev, tx_head, frame_len);
> -	if (!err)
> -		netdev_sent_queue(priv->ndev, frame_len);
> +	if (err) {
> +		if (err =3D=3D -EINVAL)
> +			dev_kfree_skb_any(skb);
> +
> +		ndev->stats.tx_dropped++;
> +		if (net_ratelimit())
> +			netdev_err(ndev, "%s: failed to put echo skb: %pe\n",
> +				   __func__, ERR_PTR(err));

Is this error message needed? In the -EINVAL case can_put_echo_skb()
already emits an error. If skb allocation I think in -ENOMEM case the
kernel already throws an error, right?

> +
> +		return NETDEV_TX_OK;
> +	}
> +	netdev_sent_queue(priv->ndev, frame_len);
>
>  	WRITE_ONCE(priv->tx_head, priv->tx_head + 1);

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--275kakqmhn4gk3eu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCams3zgAKCRDMOmT6rpmt
0tPFAQDy6JtgZotjJ8v6LUFvroXnCHocuILjVvgcmAvujXv6nAEAhhhtmLqAGAdb
EcHrrOylui+MjrU7+T/Sau//YioFSgc=
=qTFm
-----END PGP SIGNATURE-----

--275kakqmhn4gk3eu--


--===============3162871425559036441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3162871425559036441==--

