Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52DDAE77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 12:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tzt+/qFjFz6L3XKWHxstUnU1JjjwQ6RBB8nAlJERicw=; b=EklxWv15m/Z2FrXnfRt4d7LWjB
	5H87QTI//VGp+9NLQYcp2QG/rUs68+lmKBZjM4NiC/7EMdd6G+ud9E6cUfvnR9WdNMJR2z3v15iuB
	CD9YI7QGAPY67xn06p7QJIrskvW7iYiNk1+nkIB/+zI4gnpft3eB0DW7FHUaJxMo4WdxxOMknZ/9x
	qZPRPAXm458baCQESiSHPbX9heQA6QaNRfEO7URhcKQ9XuZoljFdcWVxp/qnh62bJOtwYn2cNMP2s
	8m9YSDUW5x2rbxK7SbUwyCBOnt+eFxXGoeqjmYxYzzS/W25HUlQGMTAob8Cl+DCMrqwTvUog0KSVI
	mb96WYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tObmv-00000004rCO-05NL;
	Fri, 20 Dec 2024 12:07:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tObll-00000004r6o-1LqG
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 12:06:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tObli-0008UH-Kf; Fri, 20 Dec 2024 13:06:10 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tOblg-004Mzd-0v;
	Fri, 20 Dec 2024 13:06:09 +0100
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 2E122392EF0;
	Fri, 20 Dec 2024 12:06:06 +0000 (UTC)
Date: Fri, 20 Dec 2024 13:06:01 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, heiko@sntech.de, 
	cl@rock-chips.com, kever.yang@rock-chips.com, linux-can@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] net: can: rockchip: add can for RK3576 Soc
Message-ID: <20241219-sapphire-vicugna-of-opposition-be748f-mkl@pengutronix.de>
References: <20241219011159.3357530-1-zhangqing@rock-chips.com>
 <20241219011159.3357530-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241219011159.3357530-2-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_040613_355582_22286D13 
X-CRM114-Status: GOOD (  17.29  )
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
Content-Type: multipart/mixed; boundary="===============2881393500559462926=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2881393500559462926==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eudui3nm55akuurq"
Content-Disposition: inline


--eudui3nm55akuurq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] net: can: rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 19.12.2024 09:11:58, Elaine Zhang wrote:
> Is new controller:
> Support CAN and CANFD protocol.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Thanks for porting the rk3576 to the mainline driver. Looking at subtle
differences between the IP cores I'm not sure if you want to add it to
the existing driver or have a dedicated driver. But we can decide on
this later. At least the mainline driver has a better structure than
your original downstream driver.

Why was the timestamp register removed from the registers? Previously
the driver supported hardware timestamping. :(

Some general comments here, a more detailed review will follow.

Why have bits been removed from several registers and the remaining ones
moved? That doesn't make it easier for driver developers to cover new IP
cores. :(

Please use FIELD_GET(), FIELD_PREP() macros instead of open coding shift
and mask operations. See rest of the driver.

Have you actually tested this code in both RX and TX direction? I don't
see rkcanfd_handle_tx_int() being called?

What's the purpose of "rockchip,rx-max-data"?

Why do you add "rx_fifo_depth" to "struct rkcanfd_priv"? It's not used
outside of rkcanfd_probe().

Can you configure the IP core for CAN-2.0 only mode, so that it only
receives CAN-2.0 frames only?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--eudui3nm55akuurq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmdlXZAACgkQKDiiPnot
vG83mQf/f6DaBGVIT5WusxNppsrY5LvjB2UCWh8j3u0AGBRxOL5ktwa/cZna9O4L
BH0KOBH+K6mUQ6ssME6tH0EYz17DUbaaFnhPjVTRDGAQu0qktLXoFf0cRjiTo4vV
xLLVVPn9++OTYFUQmN+SxWih0MHBK5+HhIUd+HZTw5GGWdt5V+Wh5kkS048slc9E
mP2tspwcyzJaOAXz9zsdxOc540tcT4cfgI8GgzSIFiVtZWoliAEvgHFzNcp6ZZts
GWRSK2Lf/sf6+mmbHNpa0GhG7M6zqu+nC6oVgVuWY23RO6laQvUTSktw0Ek9nq2f
EtgEcqjYtJiSK62wZQ8ijhtgtX6D+Q==
=AKwc
-----END PGP SIGNATURE-----

--eudui3nm55akuurq--


--===============2881393500559462926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2881393500559462926==--

