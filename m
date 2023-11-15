Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE65EC072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=amEvRmnpHRxg5acoILh4BAN3UwdBdzQ3kQ52wdTh/vM=; b=E8HXdKu5627V10B4dzZc++bQah
	szOfFJInXwVQj78XtzHz1KyZyn98v9Pqa6T3GcMV6J9yuuFO2UASVj4cXhtl6u3sbaM/wrKF3su8B
	q2GMFI+mIfHaov/4z6g23GPOJtVAUVjlsBCqTKZ2rEGt2BJ3LNUeIB7JnnODbCwmHIXdRHKSr5It1
	+XL7l4qWwGobjNffz8OrhRBUyhAQLZ65xtw0l8z26Ik3ClhjL6/sgtnCRvCDxX8LYBIr1ZczYPh7d
	zMFKg9sprOvHwPcCl17my/altTlhrInXBB26Z56cok+oTmbdsDESHfduo+NIpTF/h+XAijs/rCeD8
	KuWyBCjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Nsw-001oLa-08;
	Wed, 15 Nov 2023 21:57:22 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Nss-001oKt-19;
	Wed, 15 Nov 2023 21:57:19 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 91A3C66072F7;
	Wed, 15 Nov 2023 21:57:15 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700085435;
	bh=8BTs9yx4JAS070rqw8IXxHKIzy22Gc1HzQDYLoQjwWo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WDkwmptRFdAft+Nlah2v3hD4hnSPJS4Qfx7kSjHBHoKYXvYjayWsegPL0q4Ee23xZ
	 k9DdRdZ3YJXxypOtp9xgBm+igu3EplvUMdpO9BP4ELu1GneELZe9CFncC22sS4TGRP
	 XHII9PMIGdPgJbfX1vq+cCWSyGy8orLCNsidTFjtUKp6xyVlnFD/37/5+jHfqMbscK
	 XmWcH6zq706PZY2AUgEJfdIF68Yb57fUsFf9nZUIOpzu51s0lZlh6LrlUOeIp8dpHC
	 +hIFM/Be3weRwcKV2ne+J4safTYqDyNr8Bf59FNqKRivHNAVtmQk5pKWrMZAvqgFz5
	 x+hx6lKSC1Tkw==
Received: by mercury (Postfix, from userid 1000)
	id 94D1F1062B52; Wed, 15 Nov 2023 22:57:12 +0100 (CET)
Date: Wed, 15 Nov 2023 22:57:12 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk356x pcie msg interrupt name
Message-ID: <20231115215712.ha6asalk6iiakfsr@mercury.elektranox.org>
References: <20231114153834.934978-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20231114153834.934978-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_135718_572850_96B72260 
X-CRM114-Status: GOOD (  18.81  )
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
Content-Type: multipart/mixed; boundary="===============0982693790949786135=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0982693790949786135==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qnoje2wmiy5nuuru"
Content-Disposition: inline


--qnoje2wmiy5nuuru
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 14, 2023 at 04:38:34PM +0100, Heiko Stuebner wrote:
> The expected name by the binding at this position is "msg" and the SoC's
> manual also calls the interrupt in question "msg", so fix the rk356x dtsi
> to use the correct name.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk356x.dtsi
> index 0964761e3ce9..c19c0f1b3778 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -977,7 +977,7 @@ pcie2x1: pcie@fe260000 {
>  			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
>  			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
>  			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names =3D "sys", "pmc", "msi", "legacy", "err";
> +		interrupt-names =3D "sys", "pmc", "msg", "legacy", "err";
>  		bus-range =3D <0x0 0xf>;
>  		clocks =3D <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
>  			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
> --=20
> 2.39.2
>=20

--qnoje2wmiy5nuuru
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmVVPqsACgkQ2O7X88g7
+ppTIA//YaQ/isC2OXwvph8tPd3dtAScGgFrUUFmG+p89QSblLWHkB9GVKhzUWbO
poiajuCHtNY/ggiCeuP1kXgAHfGFSAamqezz6d28Anm8bS9kj4o/kp5Yz60THyPG
XVVj4oIqX2z9aTyguQRw03Cn882uRf8kG1VqXgcPR6D/oXg6W8KdIY0T3qtvfX4g
XN9cfQDq+qEMVdFZ9XAUSAJCLRSdg4JfVVA3gb8WlSxb32zUMUQ9smqAcfppoF9H
0xqRKRJOJgkiGjzLBF8mPSfl/dXRYgK7dIpgoXeMO3qw6EloQggczxOV6XN59ACb
tJfXNJ6IXPc+Zbenp0/LVnvgL4H/XIzeJOvHqIWJ3I7h0y6+OnDx2sLgfvJ7OZJX
vP5kNRAp3D7GjG/PtIvMPulafkcd080CASQMh4DhosHnIplQSmpdAEZB826mRKLf
63mpzMvbRB9z0bIrEWGI+jInde3etqsoNYVugte/I7/BD6a9AINk3ZonCpTcjgKW
GyUNWe6EOT95JGwhxyhvLk39xSuj2Il27zwgveenbZTGJVgUuZXZg1L5nIuZC+jz
a9R8vOVVZn/uECJr4Nx80QyD8UfecY83V8pEVvGd3XwUJ8prLYy8cUtBkdWg1XBf
Bm1F79rg7zTcWXa8C5T2trGYJ6/W6B6mdxBkLjhShXWv7YYb724=
=zvfq
-----END PGP SIGNATURE-----

--qnoje2wmiy5nuuru--


--===============0982693790949786135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0982693790949786135==--

