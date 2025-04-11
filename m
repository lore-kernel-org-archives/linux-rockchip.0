Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C163FC36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 12:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zTn4KKEl48EidLsNlDMMHDi87wY9oyr0KsnLPkEHdSg=; b=lAkQNe46lwrVzENa00MyOEhTDM
	Dr7b0rsMZSLzdE2YTdr1FwVeX5FsxA+DdVrGBCugyYezbfJ3pOZCiWPnAoR6hkQhMAEc+eP0l7Nxp
	eULEdnoTx4Kxe/BfpVEbAZ1genExYJsX2ednSfuLyoPe9fgZkG+fn6p3BAz6tgOTYitlzoepAcMHT
	20XLPIPAhzf78C0U+N/SkdTMKmW3F8VIJFXQl0ipBa18uv75lHfPMky5IvYiz3cUEPwdLCWOhtiuB
	RKUwKIgrnn7cPVOQL22ilDWti0EKJoHL/95ruWVyuzFqlII4rwQBj6XfbusZ23OjSTNQ/kJKoWaUq
	ao0BsZSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DcO-0000000DlCZ-3O8P;
	Fri, 11 Apr 2025 12:36:24 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DaZ-0000000Dl00-1cZI;
	Fri, 11 Apr 2025 12:34:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1744374853; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=J12NbyA007YxzZNPY2TSEROLBTteBHzZKrib0FiKJ+sAN3PegqHrru9IZwDEUFjLz/Ue9v/U6ht0GoC78IAVlqDN5Pid0huBXItrgIzgcWLoUjBBC3vPd5upnYo1emCXhzzqHdEvpqf4cXJlH1Ix5mC1vR3HTUi6dCsCFSfa1So=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1744374853; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=bzczYYuZcL7JZL80mwvPXP+/D/Quzt4oc+nptJFLHjA=; 
	b=F46fsv5k1hSnhCSTwpj/f5vukORYVK64vgFeNlnEB3ODiPbkuQRbtkBFGNUon+O7AeirdBStM6+/oC/HmcF5pLaJKCCLEn++e80cnXw2efLoNUmnihI2ImeiC2uD0Be1mfecJzr1C8onkRHnPvVLSqYXF4UdZdcfpQyO7CRcONI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1744374853;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=bzczYYuZcL7JZL80mwvPXP+/D/Quzt4oc+nptJFLHjA=;
	b=VRhWPrxEYf/sPBQZvQ/8wIN9Ns/rvZ3q7x8o0z+nD1vMmU0uG+7i4BkwbyzYrslW
	ilPkjF+P+GswFM6AIqNQy5W62oCg3IT1J8rv/DmNKr2Wpe/vHjbpyTsnhgzmygvXziO
	TCRjvFwtWaU//XpFd0wzUJfOMSHfSf8H+1/rOq24=
Received: by mx.zohomail.com with SMTPS id 174437484240762.90746457848559;
	Fri, 11 Apr 2025 05:34:02 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id AD25C1801EB; Fri, 11 Apr 2025 14:33:56 +0200 (CEST)
Date: Fri, 11 Apr 2025 14:33:56 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dse@thaumatec.com, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 1/3] arm64: dts: rockchip: add mipi dcphy nodes to
 rk3588
Message-ID: <lvn74g6bcw2bxd3ciizso6pfvhp3ulxhmqrxm67zjcdx674fnv@3sxsqwsv5bin>
References: <20250226140942.3825223-1-heiko@sntech.de>
 <20250226140942.3825223-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250226140942.3825223-2-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.2/244.237.79
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_053431_492305_AC1D8426 
X-CRM114-Status: GOOD (  17.01  )
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
Content-Type: multipart/mixed; boundary="===============7326838454113265836=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7326838454113265836==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fjxkfmf5zvl4ht2g"
Content-Disposition: inline


--fjxkfmf5zvl4ht2g
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 1/3] arm64: dts: rockchip: add mipi dcphy nodes to
 rk3588
MIME-Version: 1.0

Hi,

On Wed, Feb 26, 2025 at 03:09:40PM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> Add the two MIPI-DC-phy nodes to the RK3588, that will be used by the
> DSI2 controllers and hopefully in some future also for camera input.
>=20
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com> # RK3588 EVB1

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index 8b497eb5da16..5535d5d905f6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -574,6 +574,16 @@ sys_grf: syscon@fd58c000 {
>  		reg =3D <0x0 0xfd58c000 0x0 0x1000>;
>  	};
> =20
> +	mipidcphy0_grf: syscon@fd5e8000 {
> +		compatible =3D "rockchip,rk3588-dcphy-grf", "syscon";
> +		reg =3D <0x0 0xfd5e8000 0x0 0x4000>;
> +	};
> +
> +	mipidcphy1_grf: syscon@fd5ec000 {
> +		compatible =3D "rockchip,rk3588-dcphy-grf", "syscon";
> +		reg =3D <0x0 0xfd5ec000 0x0 0x4000>;
> +	};
> +
>  	vop_grf: syscon@fd5a4000 {
>  		compatible =3D "rockchip,rk3588-vop-grf", "syscon";
>  		reg =3D <0x0 0xfd5a4000 0x0 0x2000>;
> @@ -2915,6 +2925,38 @@ usbdp_phy0: phy@fed80000 {
>  		status =3D "disabled";
>  	};
> =20
> +	mipidcphy0: phy@feda0000 {
> +		compatible =3D "rockchip,rk3588-mipi-dcphy";
> +		reg =3D <0x0 0xfeda0000 0x0 0x10000>;
> +		rockchip,grf =3D <&mipidcphy0_grf>;
> +		clocks =3D <&cru PCLK_MIPI_DCPHY0>,
> +			 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +		clock-names =3D "pclk", "ref";
> +		resets =3D <&cru SRST_M_MIPI_DCPHY0>,
> +			 <&cru SRST_P_MIPI_DCPHY0>,
> +			 <&cru SRST_P_MIPI_DCPHY0_GRF>,
> +			 <&cru SRST_S_MIPI_DCPHY0>;
> +		reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +		#phy-cells =3D <1>;
> +		status =3D "disabled";
> +	};
> +
> +	mipidcphy1: phy@fedb0000 {
> +		compatible =3D "rockchip,rk3588-mipi-dcphy";
> +		reg =3D <0x0 0xfedb0000 0x0 0x10000>;
> +		rockchip,grf =3D <&mipidcphy1_grf>;
> +		clocks =3D <&cru PCLK_MIPI_DCPHY1>,
> +			 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +		clock-names =3D "pclk", "ref";
> +		resets =3D <&cru SRST_M_MIPI_DCPHY1>,
> +			 <&cru SRST_P_MIPI_DCPHY1>,
> +			 <&cru SRST_P_MIPI_DCPHY1_GRF>,
> +			 <&cru SRST_S_MIPI_DCPHY1>;
> +		reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +		#phy-cells =3D <1>;
> +		status =3D "disabled";
> +	};
> +
>  	combphy0_ps: phy@fee00000 {
>  		compatible =3D "rockchip,rk3588-naneng-combphy";
>  		reg =3D <0x0 0xfee00000 0x0 0x100>;
> --=20
> 2.47.2
>=20
>=20

--fjxkfmf5zvl4ht2g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmf5DC0ACgkQ2O7X88g7
+prdKg/8D+e/PQmWiaPq92NTiX3x04IaNL3q23gGelMcchdHm/Cc52ZmqdQsq/PB
oZqOK0fOxforJ/MWJy4bFr9HevB1RhTXQoWbiE7UcoFJZlnqMEckH3VT0r8f1DcF
kKAZQ2fYjZx6JeKbTJOOYU0uhiUAEvzkMeBm34DnTxN9NL5uBRrJGGfxKP6s9uTx
uWWTPHqC1SV+8huJJwTv2vEZ+COqGzE+oqZ7s7GuUZB3HpjWeWr5FnRrI9dYfSVW
8YEaZM7h9tTlifNBvy1ice13Fn2xccgoEgbsVwsbLAmnzffwq+Aofyb2nB3FLZ6g
GRnhtsci0N+NNgwH2b8Mf56U1nJIsWaVmiSrQsBAMiRYxmXbq3J4heUcjOO3RVOM
dRThE7H04NH5suras3f30pAxLjV3gJZ+V4Pip2b3CHcmQWmXG+6AHMKuEjSWvvw+
KlgyFEs+IJZeJs1RcV3AHD0EiFu5YwOOoC+Z3MLYMIT06fWw/6jiChgCCk3hREmz
Jgx5vdaOGn6siQW1mmJEoNEr7GJVWH1hfr06s4SI9prShXocUMjcQHW4VM+1liPe
x05epWEG9+gag+dtkbiC+KvBzhcjuVeUQ89aR9fh5jqe/zmSs/ZQ/fT66CUzgCjj
3ZPdXgf9lzSJLMB0kfpMdfuXk2spNB0/IIS2FYguINZNnybWY6Q=
=pywf
-----END PGP SIGNATURE-----

--fjxkfmf5zvl4ht2g--


--===============7326838454113265836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7326838454113265836==--

