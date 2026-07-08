Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83AB2C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 23:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7F45Ku6owqrsnLIscfyj+lWZ0AR5/UBnUOw4E3UFhA=; b=maMijXg7nwA+iumNYrvoDqJhsX
	wi/r0cHzciEtTa8A4RzhmzqqbdLG0qR9oRF/y6XfMnBsno2ByiOEYpWFDIec/HJA9n1M5bQlqMcHK
	52Wlb4Ughc+90cBGGR8WTzWZGZHYXBfYx9i6u0Uedop2c4Ahq7YWN0DGyj/3ehPRZNLFU0gnUKDyL
	7E5G0zpNV+djZsAxozlKrQVIJnSd1doRvykz3wcROy+s9ubBgT24QoVp2E3xLolIXbkJK+svtTJoc
	GBAex8sBHmVY3cGyqXLFVep+iR9JYPd00PenSTHty/JYOivrkR1ncHI3BKMRPdw+Vuuf7EG8ugXyq
	6CqhITXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whc7v-00000000dle-2lrN;
	Wed, 08 Jul 2026 23:56:27 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whc7s-00000000dl9-2SA3;
	Wed, 08 Jul 2026 23:56:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1783554977; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XFb4GppKjEilY55ygRsHWBLOhnNKpUcm1DkzM5BcMD3KdJ0BG9a2LVDTRquH33zAmRW6wy3en2cJy+R7a4uBEyQaTtKaKnf8L0ym4D0vZnjfts9y7VmDBErGqJYq7mPC5+rVNi+/iR1Qs6HZqPSmYNxmlHAjZ7T1uAa7wua0oqE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1783554977; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=CbB3C9UwRHwJz8l8h3m0DtvM1ARd9imbzXPsvbNCwWY=; 
	b=PS4tCHROjJk2PrBhFzM1Ve3trFDTdtcsasKSNYaZNYXE7Cj+gUoC7ldhlQgFvmAv/2TKwI5G94JhBA2I8Oq58SPfvwm4R4EG6WAuyijiSwFFbpPI09n2iMj8Qfng4sdN2DfbeJu9q2gJqQc7x5AnVZnCXGIxE0eY0y+KP7yzr3I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783554977;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=CbB3C9UwRHwJz8l8h3m0DtvM1ARd9imbzXPsvbNCwWY=;
	b=F2b67eCg2Gk8F9eawFiscCcCs/KpYLYJLV0/6xrQwCWeA9UZc5/1swtcHIKL+fAh
	UxiuKT/3C6m5eTplA6T64ww6m7o3KhjXpsR8sjxNzAyBqGqZXTd/Lmcr4HDFaiOFrsN
	SZ+5e6MJyDfbs4gNMS1UmJ4j8KMHYi6S5F6w4D78=
Received: by mx.zohomail.com with SMTPS id 1783554974300771.8410971279968;
	Wed, 8 Jul 2026 16:56:14 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 2C4631806CA; Thu, 09 Jul 2026 01:56:10 +0200 (CEST)
Date: Thu, 9 Jul 2026 01:56:10 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Dawid Olesinski <dawidro@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S . Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Corentin Labbe <clabbe@baylibre.com>, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add crypto node to
 rk356x-base
Message-ID: <ak7jEYTAGgeDdi1W@venus>
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <20260708175837.1718437-4-dawidro@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260708175837.1718437-4-dawidro@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/283.531.57
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_165624_654380_B2D94123 
X-CRM114-Status: GOOD (  21.47  )
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
Content-Type: multipart/mixed; boundary="===============1579524255398059868=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1579524255398059868==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nchjsrkyo2s4nb4j"
Content-Disposition: inline


--nchjsrkyo2s4nb4j
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add crypto node to
 rk356x-base
MIME-Version: 1.0

Hi,

On Wed, Jul 08, 2026 at 06:58:24PM +0100, Dawid Olesinski wrote:
> Add the device tree node for the V2 cryptographic hardware accelerator
> on RK356x SoCs (RK3566, RK3568).
>=20
> The IP block sits in the non-secure peripheral domain. Its three clocks
> (core, aclk, hclk) and reset line are accessible directly through the
> main non-secure CRU, so no firmware intermediary is required.
>=20
> The node is disabled by default; board files that wish to use hardware
> crypto offload must enable it.

Why is it disabled by default? It doesn't seem to be board specific
at all to me (the same question applies to the RK3588 DT).

Greetings,

-- Sebastian

>=20
> Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk356x-base.dtsi
> index a5832895bd39..9de7e7487ca1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1112,6 +1112,18 @@ sdhci: mmc@fe310000 {
>  		status =3D "disabled";
>  	};
> =20
> +	crypto: crypto@fe380000 {
> +		compatible =3D "rockchip,rk3568-crypto";
> +		reg =3D <0x0 0xfe380000 0x0 0x2000>;
> +		interrupts =3D <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks =3D <&cru CLK_CRYPTO_NS_CORE>, <&cru ACLK_CRYPTO_NS>,
> +			 <&cru HCLK_CRYPTO_NS>;
> +		clock-names =3D "core", "aclk", "hclk";
> +		resets =3D <&cru SRST_CRYPTO_NS_CORE>;
> +		reset-names =3D "core";
> +		status =3D "disabled";
> +	};
> +
>  	/*
>  	 * Testing showed that the HWRNG found in RK3566 produces unacceptably
>  	 * low quality of random data, so the HWRNG isn't enabled for all RK356x
> --=20
> 2.47.3
>=20
>=20

--nchjsrkyo2s4nb4j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpO45kACgkQ2O7X88g7
+pqdGhAAnuYg7zLjumByWrVauxAbYdeNH1NJ0MFQCIsxYyhDCl9PVKc27oFP6/Ev
Xtwp8RQDB0Aq1AHuGPnmhy9UOTBwOi0I6uaOtdRjPKT/pEOATJY5UvpdGsHe9c+/
/HFlMJdEykULZjzULWjyFNAxON/gc5qGAfPKaaMKryJgRKVBu2girSp1ky+YSoAx
GeWAf2WvTf0jrSbrrxcCbRrUVVs5Ni9TMTgijp2rNNKEW98MiJSj8FnWYmmhfbIO
WRJz/r5/NgGZwXiL/FE50wV8p+p5s2OvFER4NBcuKao6rVDyrBtuxX0Nfgq68qqU
DqJXzfHTBSn9zq/Wxp1VTGDm0IYShRFQ6qDHPWzEl817WBs8JDy+9i5qCSDtVXli
lLwZOKqEiuYJj1IKSLJcePomtilj8v+VJr2CJM5TezKaTAZN82rruqr7PX16ubdC
oV96WMMqeEYOObrN2tfzCGjq+cF7MciSGnvMNVSmCxF5laD7AQXihQo/fxhw1P/c
MZnz8K1lFD1qUU9Yx7T0zjmvFVvmfY8/mrp/gcGtYQ53f+U9Lfe3B4sK50kEyBdS
bcgaWJL1R+X/DDdH0AUqAs+jLPwXYDk93DqV4F/PPwUUlvFJVnFs5wsk6wtawIXn
P2wdhmkYnCwD5DBgk1MVyWFGCMfS8ur91pGWCctlXLRWkwIAJiw=
=xw6V
-----END PGP SIGNATURE-----

--nchjsrkyo2s4nb4j--


--===============1579524255398059868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1579524255398059868==--

