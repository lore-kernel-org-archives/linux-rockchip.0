Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26CE1C54F30
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 11:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lcHCOGkhwRq31r75Ht53d+b6b333r+GyJkzty3ZP9Wo=; b=o4a3+oxRmUKwIOpxy6CTb4HyrB
	1tva7MMDQrnPF4GxqfUWAHg0/qQMtoyM3TqieXSc1nvvVPrtqzPKR8IpAHFTpUHSE/wkhqUPm5xwu
	aGqDa8NkI6zlEl9axi1r86HJsekHy7xw1wwLom4dZht1JjHdTibtGwXXa7b7KLYPxumXMUKzbG30u
	AKbO6Y6Qvs8tH4db3pjh3lka6l9v2DjZL6SYru1EMHkf1OPmrzLaEfyW/Br+//cAME/m+cvM/BoMz
	UkP7z9tWFcdwlBcDenYsW4W2j4YvsLxYtV24ehU8VPRWOYLbEO14XkYRtpTxrx+4Ha/mHcqloT/jx
	H4lvVIxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIQUl-00000003hG0-0PdF;
	Fri, 23 May 2025 11:23:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIOQX-00000003PEv-1MLE
	for linux-rockchip@lists.infradead.org;
	Fri, 23 May 2025 09:10:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uIOQI-0005Zj-48; Fri, 23 May 2025 11:10:38 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uIOQH-000sRD-1o;
	Fri, 23 May 2025 11:10:37 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 840C141822A;
	Fri, 23 May 2025 09:10:36 +0000 (UTC)
Date: Fri, 23 May 2025 11:10:33 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 4/4] net: can: rockchip: support dma for rk3576 rx
Message-ID: <20250523-shrewd-berserk-sheep-315ac5-mkl@pengutronix.de>
References: <20250523075422.4010083-1-zhangqing@rock-chips.com>
 <20250523075422.4010083-5-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250523075422.4010083-5-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_021053_355735_389FA5A8 
X-CRM114-Status: GOOD (  10.25  )
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
Content-Type: multipart/mixed; boundary="===============1380732189204327004=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1380732189204327004==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="el4f565f524arurf"
Content-Disposition: inline


--el4f565f524arurf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 4/4] net: can: rockchip: support dma for rk3576 rx
MIME-Version: 1.0

On 23.05.2025 15:54:22, Elaine Zhang wrote:
> The new can controller of rk3576 supports rx dma.

| drivers/net/can/rockchip/rockchip_canfd-rx.c:297:47: warning: incorrect t=
ype in argument 1 (different address spaces)
| drivers/net/can/rockchip/rockchip_canfd-rx.c:297:47:    expected void con=
st volatile [noderef] __iomem *addr
| drivers/net/can/rockchip/rockchip_canfd-rx.c:297:47:    got unsigned int =
[usertype] *
| drivers/net/can/rockchip/rockchip_canfd-rx.c:299:44: warning: incorrect t=
ype in argument 1 (different address spaces)
| drivers/net/can/rockchip/rockchip_canfd-rx.c:299:44:    expected void con=
st volatile [noderef] __iomem *addr
| drivers/net/can/rockchip/rockchip_canfd-rx.c:299:44:    got unsigned int =
[usertype] *
| drivers/net/can/rockchip/rockchip_canfd-rx.c:302:58: warning: incorrect t=
ype in argument 1 (different address spaces)
| drivers/net/can/rockchip/rockchip_canfd-rx.c:302:58:    expected void con=
st volatile [noderef] __iomem *addr
| drivers/net/can/rockchip/rockchip_canfd-rx.c:302:58:    got unsigned int =
[usertype] *

Install "sparse" and compile with C=3D1.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--el4f565f524arurf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgwO4UACgkQDHRl3/mQ
kZz30Af/SIdkXHiO0CuLJro2DVr7juoDO/LnF1KqldXc/haDI6pxWfU2dx8oBmQm
x1wOLu5MWD0dvDB/R8ZBirZ87apAG+9QHJuaUHtiYAcwTzR4WWnRFPaqwonwNd7H
x4b/Rs5FcRhd+zeisoHMz9siFjTtTI7I5n6w/1jW5u6Tr/6xxLOhbWbhaNM74G+n
pSczJTP7HSSR/umMuVMEV53owHa3pK05izJCdENRzg2iLSrBR2/51jBW3IpRwq5f
3VvSodv67x1rpip453K0NUU43qqoqa04E/XPH5WP4Lt5llHVNqbh/1f8F0TMMe2p
KoEaxA4D3GmHFgFUM+0BIPa2aFFhGA==
=e387
-----END PGP SIGNATURE-----

--el4f565f524arurf--


--===============1380732189204327004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1380732189204327004==--

