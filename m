Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91814C54756
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 09:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xcg723IhTevsY6U+vjnb3/VHNf840+tMhNYy+/aVIj4=; b=PCUGZ430+j1SmCYXPHDFlMwavQ
	l0NTalvO/s/grgZA5ifT3xi38RFo9vAtvuE82CTYkIXTJepbKWR182IyTPoBB5UqdBx7NpuzXtP+o
	uOCtMCCm28EdXKU11ldGnvyC7w2EJIJbrpv8D3veNBS2mx71DKHbgbZIBMRO1+Xl372tPfssfxE7I
	BBi5aujWcl7MhVYQe7gEBv4P4qyi48IDhKnfxc4+6nREGmO8/0LHFmZ75l4Vvix2agPCKd9itvGyX
	udOCAPBc07MEm6c7TKOy3pWB+ayyAfz94Cgs36P1kfxxurmKw+RtOFeQv1BahfPJeFUu6RLFDEXry
	Ozyv4REw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1q9-00000000PsF-2mLa;
	Thu, 22 May 2025 09:03:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1m2-00000000OcV-3VWP
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 08:59:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI1lv-0002vJ-Hh; Thu, 22 May 2025 10:59:27 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI1lu-000huF-01;
	Thu, 22 May 2025 10:59:26 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1844F4175DB;
	Thu, 22 May 2025 08:59:25 +0000 (UTC)
Date: Thu, 22 May 2025 10:59:22 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/3] rockchip: add can for RK3576 Soc
Message-ID: <20250522-idealistic-khaki-tuna-91290d-mkl@pengutronix.de>
References: <20250522074616.3115348-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250522074616.3115348-1-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_015934_866589_361FE1A8 
X-CRM114-Status: GOOD (  12.64  )
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
Content-Type: multipart/mixed; boundary="===============7608259752182213129=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7608259752182213129==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sa6ejazolcmnr6ge"
Content-Disposition: inline


--sa6ejazolcmnr6ge
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 0/3] rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 22.05.2025 15:46:13, Elaine Zhang wrote:
> rk3576 can is a new controller:
> Support CAN and CANFD protocol.
> Support Dma.
>=20
> There are major differences from the previous rk3568. All errata on the
> rk3568 have been fixed and redesigned.

Which tree does this series apply to? Please rebase to
linux-can-next-for-6.16-20250522

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--sa6ejazolcmnr6ge
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgu52cACgkQDHRl3/mQ
kZwdfgf/d8vv4Y+eCOIDpy04JenmxN8n8PZDriO0bTQAcrysrzSwWUfkouJA9sI5
avJL3hLCOVrSRzmvh/lkkW4voCfIfki7FI/STC/LeEpri85JOxOQfYLw1FgZ1Oeu
/b70nkM8d5A06HIVBB6WpUuj9B3B06p58KMlvSySaiK1EtfyIzZZ5O8LPmvzGLBZ
Nn9dbaH7KmSHboVpsx21zOyAIu1yAeu1Shl62nWBuFCBT1RYIpOWAKUX7cLpH4Dd
WTzeBnQxhzNKvLV91+pM/W0t89/tH5L7UfyhOHH3F1y4owdA2InWkOkYj22yTFiL
rNz898AB9XRisrl8I6jjG3Xp/yVvMA==
=7M2p
-----END PGP SIGNATURE-----

--sa6ejazolcmnr6ge--


--===============7608259752182213129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7608259752182213129==--

