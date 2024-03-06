Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2511DC54E49
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Mar 2024 00:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93lcnbTrFP/Gv87yYZFC76MKqwrqP4bLB6RDp92RBgU=; b=wphpRkedistP7Tk2kWtPyIF74E
	YOWiCxJOBA79WCqXwLZS9jwdZ28lmskLh3nfQTJFajlG0cZBB5MLdt5zQbQHWr55cbxzPk16iyfW7
	+x4pKvuM+4j3REvCgaPJmVh/fXO3+Sj+NwCIzgTK97BulIlrXUu/yCwWpVFgYdOSo09qGg7WT0g3B
	JQUEw6ZmcaLeqnsZZ8TvNFD6ZiMyzh/G9qhknRcIlmDAJubBIFbXh8r8Uzfb9SIxjrUjjRz4eNAEN
	tNBp6JIPYuiAXiT7OX41HFLz6r69Gcw6LKergoRJInkNgnz3I4PmV+1UyU1AYQcoN0twqgW4QuurW
	iQCLYHtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhel2-0000000Fhiu-2bI6;
	Wed, 06 Mar 2024 00:03:40 +0000
Received: from out-187.mta1.migadu.com ([2001:41d0:203:375::bb])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhekx-0000000Fhha-21Ii
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Mar 2024 00:03:37 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709683408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F0lEomRDVYpUwlEa/jFZCA/xqAS5OcKSK+D4gIRDum8=;
	b=l4t4B25yF+XWCF24YnTlAbjxESkywJPk4ooKwjajJl7qU5wccGUUD2ayDyxuF7jwh82wNz
	wkE0c+LBSY2gAdWbxvPAcBsGTR//FP1/QQROqCEIU7ugSaanRMzRmfWSOT9pMrOrW9qBy+
	czTjKDfV7Bw4kKkSZY+BUlaVTB6P97VStFRohtcYr49PQYPneH2JMoa2XdVX3URQMa8ZRG
	G4mj+z6izayx1iPXTznyHOarzzDG2EaaLtUp73QVPk0X1SX0VjCY3OUtopBrJzE1jaaICf
	T028P5DAoo9t0z4xWKidGk8gMAKmBxHpFt0xT/nVo+FFeEGqoVTcecVVKUD5/w==
From: Diederik de Haas <didi.debian@cknow.org>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Chen-Yu Tsai <wens@kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Wed, 06 Mar 2024 01:03:14 +0100
Message-ID: <3640614.1ifTrbWeP9@bagend>
Organization: Connecting Knowledge
In-Reply-To: <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
References: <20240304084612.711678-2-ukleinek@debian.org> <2662566.GSV3oLgti5@bagend>
 <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_160335_938475_17C472C2 
X-CRM114-Status: GOOD (  19.23  )
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
Content-Type: multipart/mixed; boundary="===============5525473060339943483=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5525473060339943483==
Content-Type: multipart/signed; boundary="nextPart2871586.EqBmKDtIha";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2871586.EqBmKDtIha
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 06 Mar 2024 01:03:14 +0100
Message-ID: <3640614.1ifTrbWeP9@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Monday, 4 March 2024 23:44:48 CET Uwe Kleine-K=F6nig wrote:
> > That was because it's actually a bug report (wrt Quartz64 A and B), but
> > especially your remark made all the pieces I found earlier fall into
> > place.
> > Therefor I 'abused' this thread/patch to report it.
> >=20
> > I'm happy to test patches, but I lack the knowledge to come up with one
> > myself.
>=20
> I guess that would be:
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts index
> 59843a7a199c..f4d1deba3110 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -269,7 +269,7 @@ &gmac1 {
>         assigned-clock-parents =3D <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru
> SCLK_GMAC1>, <&gmac1_clkin>; clock_in_out =3D "input";
>         phy-supply =3D <&vcc_3v3>;
> -       phy-mode =3D "rgmii";
> +       phy-mode =3D "rgmii-id";
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&gmac1m0_miim
>                      &gmac1m0_tx_bus2
> @@ -281,8 +281,6 @@ &gmac1m0_clkinout
>         snps,reset-active-low;
>         /* Reset time is 20ms, 100ms for rtl8211f */
>         snps,reset-delays-us =3D <0 20000 100000>;
> -       tx_delay =3D <0x30>;
> -       rx_delay =3D <0x10>;
>         phy-handle =3D <&rgmii_phy1>;
>         status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts index
> 2d92713be2a0..ec1351a171d4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -176,7 +176,7 @@ &gmac1 {
>         assigned-clocks =3D <&cru SCLK_GMAC1_RX_TX>, <&cru
> SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>; assigned-clock-parents =3D <&=
cru
> SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>; clock_in_out =
=3D
> "input";
> -       phy-mode =3D "rgmii";
> +       phy-mode =3D "rgmii-id";
>         phy-supply =3D <&vcc_3v3>;
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&gmac1m1_miim
> @@ -189,8 +189,6 @@ &gmac1m1_clkinout
>         snps,reset-active-low;
>         /* Reset time is 20ms, 100ms for rtl8211f, also works well here */
>         snps,reset-delays-us =3D <0 20000 100000>;
> -       tx_delay =3D <0x4f>;
> -       rx_delay =3D <0x24>;
>         phy-handle =3D <&rgmii_phy1>;
>         status =3D "okay";
>  };

It turns out my research was incomplete. I already felt uneasy when I reali=
zed=20
that 'pgwipeout' had set it to rgmii and while I wasn't able to track the=20
conversation down, I did have a vague recollection of there being a discuss=
ion=20
wrt rgmii vs rgmii-id. IOW: he must have set it to rgmii deliberately.

And then I found this:
https://lore.kernel.org/all/20220606163023.3677147-1-pgwipeout@gmail.com/

=46or Model B it was initially set to rgmii-id, but was later changed to rg=
mii=20
due to compatibility issues on the production Model B.
I'm going to assume that it was (initially) set to rgmii on Model A for=20
similar reasons.

Cheers,
  Diederik
--nextPart2871586.EqBmKDtIha
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeeywgAKCRDXblvOeH7b
bn44AQCusxtYWH7F674MckmTfw3+1/4K8VVZMEJB10NYR/R/BAEA/XIREPYtRY3Z
oV+m0owJaGzI6IumbIb9O5+OZWLJdAY=
=tznc
-----END PGP SIGNATURE-----

--nextPart2871586.EqBmKDtIha--





--===============5525473060339943483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5525473060339943483==--




