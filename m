Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F1DAC83F26
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 15:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ZdmUVSSN9k+JBVEaERgZ76qxdTgLgYa5qAO/ICHQK4=; b=iPqBDJeVgGIFrW7oB/v9Pbb3Vw
	FXGDV1EyiEjD4jno1ZyeBw0yDus3iEecYSKAYD3DDzRRaVB+Vx3yXaxSwt+smWYKm0YmU5D7FwjJJ
	RaPWH8wmI21rUC0kbRyc88PqSu0GV8ZVAhxEVkfTrdprIClJ+TjJDL+V2wVmx8IUmQJSFxeynmWNm
	zqDH1Dpqkynbz5ciZKbxWmiLMLDEZZRpQOMN2UxKdOfC4IU3Y048KHTfGERAB/ASV5LBGaZYEahXe
	ZzukPjguy6o+FWnE8ueBbmd9GffHsgL13T6iXiQXZijz7Qw75x+Pd4aFuqB/jCDWQhLl0jREs3HE8
	yMxxsleg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugm15-0000000H7bJ-3Kij;
	Tue, 29 Jul 2025 15:13:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uglyc-0000000H3bi-34Hs;
	Tue, 29 Jul 2025 15:10:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1753801834; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kQC7J9GanX8bXeG6wzmtZOl0/iZacsJi9WJmcmQUjXkRaC7zB7GNPP5qgqywT5fta6vpcd9zOx8NqV6oH8SN1bFWVPJ/IsKIY7Ld14jwVYFB9O37fvBzUk3ma8Zi7Eqok0rSyNSA5yZJLr9K9l6BUFb+DxnbfjfF5SYz1EKA45w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1753801834; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kylslLamo4bv/qyU/KRTsw98sD9Xqpc7zl8o58lklJo=; 
	b=l06appq1KmReXO+dI/RskkckkrOOkA7L+yNV4qA8gH4igou9qfX3+Xn7P5lXHBYhFp1SkXBE0hp6LWSQcfHLt39Q6tK2dkNpJvNUe0NtwiZzdgNuLER+rSSshSp+L4z9YffDEWDEE/92M9IBDDLGUUsDu2UTiY/49kC3TExHh78=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1753801834;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=kylslLamo4bv/qyU/KRTsw98sD9Xqpc7zl8o58lklJo=;
	b=ZQjgMv1YElgegvAfb0lwHXidUeK2hfoAfNfuhKmRQz918pISIcmtUWLf1JCg2aS6
	H/QvpVjxGYJL6zWSGU4gy0CVQ6ZbynJiA5KC3b6GaGASQdc3dwJlO03FTCJfkgK+kfe
	8wuszfUpjHfh33diiZW8Vr1zqd+MnCTBB0fAWjEc=
Received: by mx.zohomail.com with SMTPS id 1753801832283975.8602234119677;
	Tue, 29 Jul 2025 08:10:32 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 069A0180F0B; Tue, 29 Jul 2025 17:10:27 +0200 (CEST)
Date: Tue, 29 Jul 2025 17:10:26 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v6 07/10] arm64: dts: rockchip: Add DP0 for rk3588
Message-ID: <dnc7coqlkgkukfg5awzrjmr7oi22lcrpucf7kdr4rfabkymbjn@ax6gjebpymkt>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-8-andyshrk@163.com>
MIME-Version: 1.0
In-Reply-To: <20250728082846.3811429-8-andyshrk@163.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/253.35.66
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_081050_812149_7845A2C8 
X-CRM114-Status: GOOD (  15.69  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, heiko@sntech.de, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6758888923075805632=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6758888923075805632==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="koxpk43i6ze3fl3a"
Content-Disposition: inline


--koxpk43i6ze3fl3a
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 07/10] arm64: dts: rockchip: Add DP0 for rk3588
MIME-Version: 1.0

Hi,

On Mon, Jul 28, 2025 at 04:28:32PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>=20
> The DP0 is compliant with the DisplayPort Specification
> Version 1.4, and share the USBDP combo PHY0 with USB 3.1
> HOST0 controller.
>=20
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

The description matches the TRM:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>=20
> (no changes since v1)
>=20
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index 51f11b9c414aa..4a54389c89d75 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -1536,6 +1536,36 @@ dsi1_out: port@1 {
>  		};
>  	};
> =20
> +	dp0: dp@fde50000 {
> +		compatible =3D "rockchip,rk3588-dp";
> +		reg =3D <0x0 0xfde50000 0x0 0x4000>;
> +		interrupts =3D <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru PCLK_DP0>, <&cru CLK_AUX16M_0>,
> +			 <&cru CLK_DP0>, <&cru MCLK_I2S4_8CH_TX>,
> +			 <&cru MCLK_SPDIF2_DP0>;
> +		clock-names =3D "apb", "aux", "hdcp", "i2s", "spdif";
> +		assigned-clocks =3D <&cru CLK_AUX16M_0>;
> +		assigned-clock-rates =3D <16000000>;
> +		resets =3D <&cru SRST_DP0>;
> +		phys =3D <&usbdp_phy0 PHY_TYPE_DP>;
> +		power-domains =3D <&power RK3588_PD_VO0>;
> +		#sound-dai-cells =3D <0>;
> +		status =3D "disabled";
> +
> +		ports {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			dp0_in: port@0 {
> +				reg =3D <0>;
> +			};
> +
> +			dp0_out: port@1 {
> +				reg =3D <1>;
> +			};
> +		};
> +	};
> +
>  	hdmi0: hdmi@fde80000 {
>  		compatible =3D "rockchip,rk3588-dw-hdmi-qp";
>  		reg =3D <0x0 0xfde80000 0x0 0x20000>;
> --=20
> 2.43.0
>=20

--koxpk43i6ze3fl3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmiI5F8ACgkQ2O7X88g7
+prSdRAAg5kIsE9+nUZ/8nYgzYkMCOnRLL0//U80oop91T9hLmq/bCfIhgxycbFO
fd58Vzp/EZrvhSTHXAoR2OBg8nDDRJLlk84WxGi9kaQHzuCWFRssoflRu3vWIzMV
BqMZRW/pHHjOPeT7uO4fJKUl2KE8g/+02aMFod37ORkiTOyRGa1RpvagMMcsqzWZ
ejlXba1ByMIKTVsPO78SOQ+1qXHdP4sMS4zKhWV90rHYLtSNWC2ZadexoZhz3FF5
truZM1iakrpg4SnIF1ITQRMhX1n7robQ2AEbE4DOMETLjrohkYohNFgIEdS7X4tR
DAKchs05AtnYXRZc5j9248UczdcffYOMqh9An1VgyrFOnhEVeFfrCdSd2X5Cpuq8
ojtcrUeiBrQbljFCtefG01gGBWScR6w9SUW9jHA1h4QNHzEln/1n29+n//syePnb
VoENqcEnsoJ1Xypv9GKVt8qSwktzBiYYOiD3+CtWBBBOVyHfD+b/reSwDMX5N8Js
zTJaPqDdmD74h/xCClcuZczRFR+TlrYTB9XEGF6Sl7Dl7OY1prpqLzDLDKY4RRUd
X1BD7+FwH45YCW83gdt2D72xblR7v01p81dcKs7xB1UoA0/J4H4yLAuwssoltWPs
pVeWr2X5yluAh+8i/SbrfoxUufzzuXHDqI/VSvPFx2+/wBvh8Qo=
=9EXr
-----END PGP SIGNATURE-----

--koxpk43i6ze3fl3a--


--===============6758888923075805632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6758888923075805632==--

