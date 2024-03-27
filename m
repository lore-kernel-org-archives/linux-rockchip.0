Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 033DEC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 17:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=psSzayLFHeFJDo921SXWnshSY75Lpbm6uDCE5lx4tTE=; b=qCit9dq7fc+NoCFJBsf0ZlUsKx
	2z8hDHVlekzvNHlTx+kPT342DNN2066D87ZQPX2UeoF+HjLbxtEOpuSEN+D3m+Evhf3cN6OSRKypn
	csRESyY8Qjc4DJP0X4VSexc4E0b6KDqdUefR72oO6JdUaIrZN0bFNXxBZF6vzIvWbyuE0DCghED/H
	MZrOO+p/xs0M4HknuNsp7mhdhAwtdWusfY+A47uuOedafoJ+uO89IBg18tFsrI/GT8u1cZ6jHHv3f
	ROTSTEvUIP8JGXRU+VI+If8WNhuaYaqNYAEa4ZHD7u9PCyqfZE0CoG6uGYXLnKg56x9C8CCup5vDP
	fWfXj0ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXKo-0000000ALjd-0pSs;
	Wed, 27 Mar 2024 17:45:10 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXKl-0000000ALgs-04B9;
	Wed, 27 Mar 2024 17:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711561505;
	bh=hX7ksftxhBPlKhJ3ORnpry5arh/EO7LHpHr3IuMRQ5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WNRsxrqfn2miKOO53mLdXP1QMBa+zq+Nx417t3L9yo31ttM6hnd2stHiOZbwOuoAo
	 1TwXsmMscpUYceSUY3+JW123Uf2L+Ws9Bgc/SoCwwVqBFuwF88tluSSUbm6EZejEpM
	 o1T+2ugLFOU8BGn4VvYMixfllU4I5Bqw2Z3Vs01WHGH9C7Iv0gqHzMH1X1cLQ0kjNX
	 o7Fv5ewsSuc9C9k6ewJaMLXXfM2u8NP3islICr4+cHuqNyIHKJ6K61HSjrgfKA4sUx
	 TahG9HxXwWaQ6JtKrWej69c+VC56vP5Qr+T/OjQ4pu4e0K3fGFq86+I6EUW/+Y77Wa
	 JinYBHFNovDDQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 06A7B3780C13;
	Wed, 27 Mar 2024 17:45:05 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id A3CED10608D9; Wed, 27 Mar 2024 18:45:04 +0100 (CET)
Date: Wed, 27 Mar 2024 18:45:04 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Dragan Simic <dsimic@manjaro.org>, Shreeya Patel <shreeya.patel@collabora.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add VEPU121 to rk3588
Message-ID: <b3gjngpu4sszth3ajyowbplqsvu2su3hgktpf3cffopbrawz4y@ddcnnwnlecvq>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
 <20240327134115.424846-3-linkmauve@linkmauve.fr>
MIME-Version: 1.0
In-Reply-To: <20240327134115.424846-3-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_104507_213650_8E37C7CE 
X-CRM114-Status: GOOD (  16.90  )
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
Content-Type: multipart/mixed; boundary="===============8893255139897140740=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8893255139897140740==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3n3gcsm6jabdcoyz"
Content-Disposition: inline


--3n3gcsm6jabdcoyz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 27, 2024 at 02:41:12PM +0100, Emmanuel Gil Peyrot wrote:
> The TRM (version 1.0 page 385) lists five VEPU121 cores, but only four
> interrupts are listed (on page 24), so I=E2=80=99ve only enabled four of =
them
> for now.
>=20
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 80 +++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 87b83c87bd55..510ed3db9d01 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -2488,6 +2488,86 @@ gpio4: gpio@fec50000 {
>  		};
>  	};
> =20
> +	jpeg_enc0: video-codec@fdba0000 {
> +		compatible =3D "rockchip,rk3588-vepu121", "rockchip,rk3568-vepu";
> +		reg =3D <0x0 0xfdba0000 0x0 0x800>;
> +		interrupts =3D <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
> +		clock-names =3D "aclk", "hclk";
> +		iommus =3D <&jpeg_enc0_mmu>;
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +	};
> +
> +	jpeg_enc0_mmu: iommu@fdba0800 {
> +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg =3D <0x0 0xfdba0800 0x0 0x40>;
> +		interrupts =3D <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
> +		clock-names =3D "aclk", "iface";
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +		#iommu-cells =3D <0>;
> +	};
> +
> +	jpeg_enc1: video-codec@fdba4000 {
> +		compatible =3D "rockchip,rk3588-vepu121", "rockchip,rk3568-vepu";
> +		reg =3D <0x0 0xfdba4000 0x0 0x800>;
> +		interrupts =3D <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER1>, <&cru HCLK_JPEG_ENCODER1>;
> +		clock-names =3D "aclk", "hclk";
> +		iommus =3D <&jpeg_enc1_mmu>;
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +	};
> +
> +	jpeg_enc1_mmu: iommu@fdba4800 {
> +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg =3D <0x0 0xfdba4800 0x0 0x40>;
> +		interrupts =3D <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER1>, <&cru HCLK_JPEG_ENCODER1>;
> +		clock-names =3D "aclk", "iface";
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +		#iommu-cells =3D <0>;
> +	};
> +
> +	jpeg_enc2: video-codec@fdba8000 {
> +		compatible =3D "rockchip,rk3588-vepu121", "rockchip,rk3568-vepu";
> +		reg =3D <0x0 0xfdba8000 0x0 0x800>;
> +		interrupts =3D <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER2>, <&cru HCLK_JPEG_ENCODER2>;
> +		clock-names =3D "aclk", "hclk";
> +		iommus =3D <&jpeg_enc2_mmu>;
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +	};
> +
> +	jpeg_enc2_mmu: iommu@fdba8800 {
> +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg =3D <0x0 0xfdba8800 0x0 0x40>;
> +		interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER2>, <&cru HCLK_JPEG_ENCODER2>;
> +		clock-names =3D "aclk", "iface";
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +		#iommu-cells =3D <0>;
> +	};
> +
> +	jpeg_enc3: video-codec@fdbac000 {
> +		compatible =3D "rockchip,rk3588-vepu121", "rockchip,rk3568-vepu";
> +		reg =3D <0x0 0xfdbac000 0x0 0x800>;
> +		interrupts =3D <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER3>, <&cru HCLK_JPEG_ENCODER3>;
> +		clock-names =3D "aclk", "hclk";
> +		iommus =3D <&jpeg_enc3_mmu>;
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +	};
> +
> +	jpeg_enc3_mmu: iommu@fdbac800 {
> +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg =3D <0x0 0xfdbac800 0x0 0x40>;
> +		interrupts =3D <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru ACLK_JPEG_ENCODER3>, <&cru HCLK_JPEG_ENCODER3>;
> +		clock-names =3D "aclk", "iface";
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +		#iommu-cells =3D <0>;
> +	};
> +
>  	av1d: video-codec@fdc70000 {
>  		compatible =3D "rockchip,rk3588-av1-vpu";
>  		reg =3D <0x0 0xfdc70000 0x0 0x800>;
> --=20
> 2.44.0
>=20

--3n3gcsm6jabdcoyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYEWyAACgkQ2O7X88g7
+pp64g//VuBdzDZqo0tjZDv6WWUacbktDLhSTLzmhgvHqXd4ANQlWsPWHs9MxVD2
Q5llAWFD7WNAXQSAaoUNSCXyC1akYQanSqZMJrDFHbeTFw5lSDVkZZ57TsEchhJv
CUwulPRlu+zv1gDf3kQNtd7QvWBPimS5gdJf4KnP5rtiLn/ZUZQm7c7XbbNdCxtL
wwUAHb4JN/DDWlwXhnbdvEfOG7/ejqY2xwxNDPjUxftdVh1w0OZLksUCxYwqfUvd
dzxry+uCLv94IwLQyOs31vmIy858r0pHo6H6mNfG4dTmp/A1L7MaxXaMy/bO+huk
obWVHt7AYio8cu4WWWXYN7relACBX8Ktrojo40TQAs1Te581x4vfLMWLu8X6vp/y
dgsDAQjcrjmfVaFyWStn+5HaUBQNG0IGcvdQ3yWiFCi1qoSMkmLM0lZEJZ/Syq8r
VKcjw5fkYPxkncvcEIzGsRZ/PUK8zS6ezTUv5+SRBg3PzUNEnS7+Y805VIHczcWy
+/0GN5ufEIj8yV78Y+L1q2Y7QPteEtAIts+aCGCyXONZeMM2C6MCfr/4CiAEGT99
rlqUBIqZA11cyyykCtx3FVk1yR8iWeahExJSOrkNxWG9TIRYFPX3BhMWWJDMCgEC
yPi57J8vQF0ZQS2YE+NBqUuGO+tFJDO/yyCYMMstDV9qJNSAugI=
=GOki
-----END PGP SIGNATURE-----

--3n3gcsm6jabdcoyz--


--===============8893255139897140740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8893255139897140740==--

