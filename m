Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0715EC54756
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 09:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dsv/3A3o/5Neapf4dmA63cZuzWs0rox2h1iaKU1Fi2Q=; b=ooIfJhthjHPF3s8YWtJ0j1rKrZ
	la4GmpHzohXv9q6uJvuksWaRpyndZ+YnGLZJEdeJypNlWjambGmk96NnctuiO4aFmcIdCzN2tuK5x
	XGt5rXKRpXiwHpmyFdLt7ITEL9GdlDI+96T/Tz3H9Nebv6o6RxgeVIu19DTtGB+q5C20uEw724VfW
	WclcUcvFhgl6oKGqmoREtAYDjQaqPiBS07hWpOIOLIYGPDKXDtK+m26l44YtFqFMpHcioZXM3C/ok
	b9OD56KqcDmLzMmMV46OjsqIKjkZllZvUmeWDfktQsC6/znuaNEr2OrB9HA75ypg8OkeOISwb+//b
	aJtRI11w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1sD-00000000QHl-0jQg;
	Thu, 22 May 2025 09:05:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1pC-00000000PaU-0raL
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 09:02:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI1p5-0003f4-CQ; Thu, 22 May 2025 11:02:43 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI1p5-000huU-0F;
	Thu, 22 May 2025 11:02:43 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 2264D4175E8;
	Thu, 22 May 2025 09:02:42 +0000 (UTC)
Date: Thu, 22 May 2025 11:02:41 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: rk3576: add can dts nodes
Message-ID: <20250522-poetic-sloth-of-memory-3c2e33-mkl@pengutronix.de>
References: <20250522063232.2197432-1-zhangqing@rock-chips.com>
 <20250522063232.2197432-4-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250522063232.2197432-4-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_020250_235335_2EA25DC7 
X-CRM114-Status: GOOD (  11.52  )
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
Content-Type: multipart/mixed; boundary="===============2894139336579592922=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2894139336579592922==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t63acjbvqvulm4br"
Content-Disposition: inline


--t63acjbvqvulm4br
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: rk3576: add can dts nodes
MIME-Version: 1.0

On 22.05.2025 14:32:32, Elaine Zhang wrote:
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)

Please upstream the dtsi changes via the rockchip soc tree, once the
yaml changes are in net-next/main.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--t63acjbvqvulm4br
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgu6C4ACgkQDHRl3/mQ
kZyRDwf/WT5jFUA6f9sJPzL/R7UCu5fTOaxRuiSdEflm/vzbTA5jgKIwjp1GV2E7
BtTYgX5bKQ5f4jUlt9OYozeFVHpXcuxvGHaCHV8tdIq2jDZI+RXazlNOMouRWgxw
+SKGlXbV5sCVxa5DObzCjvZsgZhaEsXm+vYGuuWZfYVbfnn/oqMcoZrGe+DvdpR3
glDLQA7Ikz6JFh1HwlShFnW3EvB9f7NkRelHm/DGigbLxtx+FEFENtW7/xFmEeML
rMkNT3XcFMq6y6MhtssU78OWaJod6LvAfwR2xcYJY68jACl6oGr8uzVOpZcPnPIn
WtU9JbU0AsDZntgGtlbiTH+uBxLPAA==
=ku/M
-----END PGP SIGNATURE-----

--t63acjbvqvulm4br--


--===============2894139336579592922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2894139336579592922==--

