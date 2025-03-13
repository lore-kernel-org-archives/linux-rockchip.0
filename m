Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79936C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 08:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6p/HaPAa+TNfZcBqXDW06HbXmqZX6Fb61McxI1zIyAU=; b=mDs2AK8VKtrpJBlNO1hEehUSZL
	fVrydwlcUh1AImf9IlnBEkFm/vTtK/QLCKUvRtQZltMeRcHS/UVGcOHwGN+PCXhDghpgh1tHz3+/I
	F2eIuePgNB/y7dd1uqmMQ3TmxWeFr+zHH/9Eqzguwh0mFqQHyyXEt0YECytQkxIEstgVoSBVT3xlZ
	PgW87Gwve8Sr7kNej5DGmgzh4VGYTpaximCec04r7wOTLtl5Wo9ILe5dDkUvhOktZ34PZ2IWv6Ojw
	T1BF9ZiGCRMb+lywtGUOAPYdJfPD3UgVfSjZyq9sSw/JpJG9GNJ6JlD2qKTbFQdLATMVFsMdgb+Cn
	/lorMqYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdom-0000000AX0D-1J58;
	Thu, 13 Mar 2025 08:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdn6-0000000AWk4-2C8K
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Mar 2025 08:19:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tsdn3-0005SZ-8X; Thu, 13 Mar 2025 09:19:41 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tsdn1-005VJV-2Z;
	Thu, 13 Mar 2025 09:19:39 +0100
Received: from pengutronix.de (p5b1645f7.dip0.t-ipconnect.de [91.22.69.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1CD723D9534;
	Thu, 13 Mar 2025 07:12:07 +0000 (UTC)
Date: Thu, 13 Mar 2025 08:12:06 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Chenyuan Yang <chenyuan0y@gmail.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, heiko@sntech.de, 
	linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] can: rockchip: bail out if skb cannot be allocated
Message-ID: <20250313-urban-bat-of-cubism-bf5a4a-mkl@pengutronix.de>
References: <20250313011506.3132295-1-chenyuan0y@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250313011506.3132295-1-chenyuan0y@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_011944_568111_CBD73DFF 
X-CRM114-Status: GOOD (  19.57  )
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
Content-Type: multipart/mixed; boundary="===============6183691136236513625=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6183691136236513625==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hi4c7kylwypwmzkk"
Content-Disposition: inline


--hi4c7kylwypwmzkk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] can: rockchip: bail out if skb cannot be allocated
MIME-Version: 1.0

Hello Chenyuan Yang,

thanks for your contribution.

On 12.03.2025 20:15:05, Chenyuan Yang wrote:
> Add NULL pointer check in rkcanfd_handle_error_int() to
> bail out if skb cannot be allocated.

If the skb cannot be allocated, the cf is also NULL.

regards,
Marc

> This is similar to the commit f7f0adfe64de
> ("can: rockchip: rkcanfd_handle_rx_fifo_overflow_int(): bail out if skb c=
annot be allocated").
>=20
> Signed-off-by: Chenyuan Yang <chenyuan0y@gmail.com>
> ---
>  drivers/net/can/rockchip/rockchip_canfd-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net=
/can/rockchip/rockchip_canfd-core.c
> index d9a937ba126c..90395cbdaab9 100644
> --- a/drivers/net/can/rockchip/rockchip_canfd-core.c
> +++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
> @@ -551,7 +551,7 @@ static int rkcanfd_handle_error_int(struct rkcanfd_pr=
iv *priv)
> =20
>  	rkcanfd_handle_error_int_reg_ec(priv, cf, reg_ec);
> =20
> -	if (!cf)
> +	if (!cf || !skb)
>  		return 0;
> =20
>  	err =3D can_rx_offload_queue_timestamp(&priv->offload, skb, timestamp);
> --=20
> 2.34.1
>=20
>=20

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--hi4c7kylwypwmzkk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmfShUIACgkQDHRl3/mQ
kZw+Vgf+Opaq2kYtMPX9Sc52f+TJg+T4rZBFr2HjmKx59vTMbPeQwECyTkMiZRyG
+KKA5CF5MTLZoS0+mi5Jh2Ju7iUVfH+PON/Yzk7bI1tGkGJ0T1WU5O6q2wrVx1rs
MXLa/FNPQbCGvJQsIVpylRq3cw2Ny0kXv9vEMrdCa3RWKDEU/jZxgnYiAc49wyZV
WlJ6RwNXJLO4fwr03+o8l/YUstsQ2vk/SqRB9/r10a2cduWUORBg7TWKPXy7sEoa
TvrcPdFFKhHB8hScGokd367/9wL2VjPPojL3k1d76maZobHNaYZ9doXv2O4zoAC8
aAghWiucEJKt71ZqaqKf47d8494AwA==
=TqR1
-----END PGP SIGNATURE-----

--hi4c7kylwypwmzkk--


--===============6183691136236513625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6183691136236513625==--

