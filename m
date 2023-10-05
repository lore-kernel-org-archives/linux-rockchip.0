Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C0BE92706
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 15:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BAOhQf7qD+WYzqv3l5eP7LjVC2yiIFj2OAo+Ia+0Odo=; b=JlzxYITRvje+MCAglrPSafvGax
	ZDre8ubC0cO3srThwS9zNi0ztY61v4y63iFM4CKUb5iGc04nKOGxNdzPg2+M5PxS0VHqvqr4HrrYX
	zMzgvlxgYQuztKF9gj5Ecw8F4EiikW6w2dQQx3E0HK4yiQLBhbfB+HatIUZH2gZj3tTTKvIc3Rywo
	j/6BvxquMOQdIDPQQV0tu/RYtm+T74mDd9aVDDQcMRDKcy6bn984uiyulCI7kP1yoK/FcIyjq82e4
	e3Ew8vj7WERsq4IDr93DgGOis6iTamIcU97iz4l19StPs7pEfk/ieRVUBkAnVh7BD65/qjnOWh0vX
	5usA3L0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQ1T-003r9F-0Y;
	Thu, 05 Oct 2023 15:12:19 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQ1O-003r6E-0g;
	Thu, 05 Oct 2023 15:12:16 +0000
Received: from mercury (dyndsl-091-248-132-024.ewe-ip-backbone.de [91.248.132.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BD63F660732E;
	Thu,  5 Oct 2023 16:12:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696518732;
	bh=7HcjV56Wdx2jVQo6+tXHe5Jd8Cre7FRGtAeizbopYJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TYndyPL+Ng1u7wjEJau3B+Q4BS0YIB3UgoXrE5AEDcaSWWziEOoC2H2ZUN3wKBV+a
	 yUYI3bBjgk+9ZypyfVsm/zj3SEdxWIMTtvbkusSi88kQpyCF+84XYvAJat5tvLWRfT
	 dr3tt0WEeK/QQeWtoVLudG13HPG/7CJrOgOTpP4VRJsp9KW/z2WuYO3pco49iNa4aP
	 8G3uT7IPDRTeNhAnTEuEqa+06TGlcuzb1rnhLwgeEhXwjpdC0cTUtwsNuqClqfAFII
	 xUKw2kb81rjuoFD0arxMkxF2OXev/l6rUG/km44eS6Scn1bE3hnX65wClseBSV9rGe
	 yen69inaH2wzQ==
Received: by mercury (Postfix, from userid 1000)
	id 7B5F6106045C; Thu,  5 Oct 2023 17:12:10 +0200 (CEST)
Date: Thu, 5 Oct 2023 17:12:10 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
Message-ID: <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
References: <20231005145420.169594-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20231005145420.169594-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_081214_390748_9F74630E 
X-CRM114-Status: GOOD (  17.12  )
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
Content-Type: multipart/mixed; boundary="===============8684933703056356325=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8684933703056356325==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ceanalih5k4ck3c7"
Content-Disposition: inline


--ceanalih5k4ck3c7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 05, 2023 at 04:54:20PM +0200, Benjamin Gaignard wrote:
> Add node for AV1 video decoder.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

No need for my SoB. Instead have this one:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Also worth mentioning, that this Patch needs one small fix in the DT
binding (adding "resets") and one small fix in the driver for out of
the box AV1 support:

https://lore.kernel.org/all/20231005144934.169356-1-benjamin.gaignard@colla=
bora.com/
https://lore.kernel.org/all/20231005145116.169411-1-benjamin.gaignard@colla=
bora.com/

Greetings,

-- Sebastian

> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff4..835e66d85d5f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -2304,6 +2304,20 @@ gpio4: gpio@fec50000 {
>  			#interrupt-cells =3D <2>;
>  		};
>  	};
> +
> +	av1d: av1d@fdc70000 {
> +		compatible =3D "rockchip,rk3588-av1-vpu";
> +		reg =3D <0x0 0xfdc70000 0x0 0x800>;
> +		interrupts =3D <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names =3D "vdpu";
> +		clocks =3D <&cru ACLK_AV1>, <&cru PCLK_AV1>;
> +		clock-names =3D "aclk", "hclk";
> +		assigned-clocks =3D <&cru ACLK_AV1>, <&cru PCLK_AV1>;
> +		assigned-clock-rates =3D <400000000>, <400000000>;
> +		resets =3D <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>=
, <&cru SRST_P_AV1_BIU>;
> +		power-domains =3D <&power RK3588_PD_AV1>;
> +		status =3D "okay";
> +	};
>  };
> =20
>  #include "rk3588s-pinctrl.dtsi"
> --=20
> 2.39.2
>=20

--ceanalih5k4ck3c7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUe0j0ACgkQ2O7X88g7
+po6gA//Wb0enkCVGQ9jtP43nB3ooBioMqf6NhopmzyPxzdF59vsIcVnW3Qh/jsP
5UQq2N9Kx+xXWbGnqpsOxIRqkQi3I6D4LavSPkU1PhO97VIX6VucCR6rRQ9ZyTEo
/MhIOziVQ3Nb71q9EIN7t+1losh4WwT3aP48oXq/igPgpYnYfeCPPkGF3W61McqK
U4ifjucb0EZ9wF6nLTpCBqrODSpzJxdAjc15wFQGM2srZTsVTLQGq/xVfkXe/fH8
s8WFgwi9DwM1Kv2tZe4QuW80rmklW85f9HVf1aPTS9yOX8RqvxMbKih7GcJYe+v/
SnlCpxfZl8b+74+9yHAs6ZwT6yD25vY8IArtKyuyw6gRexJHcqkRiGGX6JRbimT3
P35OfmAO41PjZTm+Xiwtj/DJ/8LQvXp0TWIWSYq4lPc0yNvT8XlgDwJt5GFgZyZI
gQjNx4z2F4airWowri0EUPzkiW+BdSRIvZ53/n4qmR0HpfZGtM1wYlkHnTJYE2yA
Qhyfp+bujHDcMnSicFZyUwB7Y+774XdGJrcKiaY5E5mrboBDwiQJpMvnpcWn+CkJ
6/Gv+5Q18CLj3JB1xyexvVNr8nWRbhbtVZOPkgxILGfoyLZ1h9FnqfDXT+bCIEqP
5HiVa3OCcD5e+uVaVga71Vdc0LIk0D14XRXxEtqkHIASZtx0NnI=
=Kfpg
-----END PGP SIGNATURE-----

--ceanalih5k4ck3c7--


--===============8684933703056356325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8684933703056356325==--

