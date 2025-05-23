Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 828E1C54EDA
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 08:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s0SxUMg4dq/dWaMwXIXbhfsHzknp27hdEP9Nuu2KcPo=; b=1k5Kk9t+Nf4qhnkQZ6qh+5UZhf
	vUMwlxiPxHR9owufMaDdTmy8L4h5D/hxeawASBwCQ7UVHiB8rW22ZRVOxUKTGp+PvNaTUqGCHVmwh
	oQmovxvdaj4uMhgTCkz280parNtXx/SAkWQZ1XIRh0CVJWjJkidR3L+ALFnXakcQOwGD/u4uKp42l
	s3YST+/wLn+IRJ3lxg88nAU4Df0A6E5SNvbc/zM+vMwbZhpFGtDjf5wG0qEh1U6y7wXteME8DGvym
	yPk0Z7UEtq7daMgSxwoqnmv/BCk1BFngq3UPG+YTNEfu0OTe+vFtQQybtCRQChjCgKfPP1C1GUVQ7
	heSC5GDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO1X-00000003Ke2-0dCi;
	Fri, 23 May 2025 08:45:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINZQ-00000003Hk1-3yV6
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 May 2025 08:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=RjFTQYCih9CGeZnO+hmXcoyW+SdJJ+1DXHbGfsPJbrY=; b=GaSzZT0hrLh1D2s5dJOOQCPhLT
	c4D9RcfPaUdxNutF4vDGwlwlpzXVtWG0A/+4S0Ag/zXmNhAYJ3OaKo7sLhRCx+FCDipYKSV2qjkpj
	gA512dRepLeKBitVJFlmAnBd6GgiiVQh1RFVaN9rKu1+XitzVMH3G5Y6pyNOTLOJic3U4ffLDpBhY
	mmhKF3qligTWrDsVsGP7I7U6qcvtNJ8GLXWs8pWthQ3GKnI7AyfXyxP9BT6IhMnEr9BENi5s0YilI
	UErf8glRI29jxOEd+2zJJcdfGaNXJeiGnpic/1l8e5h5ZlsjPAJiM/bOPd/1XHBkbUsrn7DeObV5O
	Zc5nVtjg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uINZN-00000001Dhs-2jWv
	for linux-rockchip@lists.infradead.org;
	Fri, 23 May 2025 08:15:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uINZE-00048L-H1; Fri, 23 May 2025 10:15:48 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uINZE-000s0g-0C;
	Fri, 23 May 2025 10:15:48 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1562B418169;
	Fri, 23 May 2025 08:15:47 +0000 (UTC)
Date: Fri, 23 May 2025 10:15:46 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 3/4] net: can: rockchip: add can for RK3576 Soc
Message-ID: <20250523-elegant-elite-iguana-8b4116-mkl@pengutronix.de>
References: <20250523075422.4010083-1-zhangqing@rock-chips.com>
 <20250523075422.4010083-4-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250523075422.4010083-4-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_091557_848161_DAFD4846 
X-CRM114-Status: GOOD (  11.91  )
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
Content-Type: multipart/mixed; boundary="===============0725046342095961005=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0725046342095961005==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c5dnlywm7hswlywp"
Content-Disposition: inline


--c5dnlywm7hswlywp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 3/4] net: can: rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 23.05.2025 15:54:21, Elaine Zhang wrote:
> Is new controller, new register layout and Bit position definition:
> Support CAN and CANFD protocol, ISO 11898-1
> Support transmit or receive error count
> Support acceptance filter, more functional
> Support interrupt and all interrupt can be masked
> Support error code check
> Support self test\silent\loop-back mode
> Support auto retransmission mode
> Support auto bus on after bus-off state
> Support 2 transmit buffers
> Support Internal Storage Mode
> Support DMA
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Compiling throws the following error:

| drivers/net/can/rockchip/rockchip_canfd-tx.c:173:18: error: variable 'skb=
' set but not used [-Werror,-Wunused-but-set-variable]
|   173 |         struct sk_buff *skb;
|       |                         ^

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--c5dnlywm7hswlywp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgwLq8ACgkQDHRl3/mQ
kZxFJgf/RJLII4jmWOIO0Kb32Hp9dCsN8hBYODQ+RosNpTkM/rBDuyJtV6a8RjoA
QkGvGiZgji4sv3G5o/kWmggUz4OIY7hbqzKWy4wy3rRVLeotubC/O4Fw7q5tYBCv
uX7C4eiAJKBiJvnnAT7qiQ4jc4foCQqZgh0b73GKu2oUmYoN7kTfl6yF/yICbbSq
sMMteatdKMyTwn5zbgSp3+QnxqWD8rnEU8eDyPOrZBhQ1PVS9Ck5prYF7e5erxEw
OpfsaJRJXfjf0h1ZTZiNbOlKvtqnUWFCDwUV/ScZ/wP94vdiRSrJfWrsKn07KjQa
rljIHYoxSu7aVhIUgk/71QvejRHWOQ==
=egoG
-----END PGP SIGNATURE-----

--c5dnlywm7hswlywp--


--===============0725046342095961005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0725046342095961005==--

