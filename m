Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FCA5C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5n326IWfwvpRk14Ju2o0ZsXFS38fkgbglJBdw60bKy0=; b=jZjPJgFANn4iK8nUTRAG2us8Tb
	DkKQ0nd1NTvTDOXlHfL2xAS6oB7ZcbQG5njDhPnEYylBZS5lzmny5mYkl1KiYkhUiIZeQfLczUC06
	akuGreMIqse3nngqa6iFP1jB+mm0ottXeeO2w/7Ewa9rQzan9y3gUXglUMQ3whjDDFciq7A+T0ZVT
	fE61AYiGKE0UOZ4LE6dSpM47tH/7ECHuyQsiBDcFh55U5DGbAa+89GpyOrbiTi7vCwi8Ozi628iG6
	DFK8WkLykU+zcLpPJcgzNii+OdcY2kGrCBpc0rz5Igi514wZRzMKffDJ0BZm81t55qcuQybr4MQOH
	9cw07GVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCsa-00000006Dbz-3PYd;
	Tue, 26 Mar 2024 19:54:40 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCsW-00000006Day-0KZL;
	Tue, 26 Mar 2024 19:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711482872;
	bh=l2Uqx7wrA6NoUxQ4rJTc5pIIxLEtsRzqWRIYJT+Ma08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fFVw0o79eIaWlD03wcbtDVuqaM2fT86wyggWSzLP5JOc8LeMOSRHlFogkIEfG/LP/
	 9O5pb7PYt4dBcQ+rh6r8CphFrXSlMRzIzHmz8gAjFzvxNnzWQlaNaf2UVdhsfMxd8L
	 WWl+9LT/RtHsUSmDowy3BDw2HuJH/4btYykTnPi4dbLd3TrkkFg8ZQvD3Q9I9lG4pp
	 VNcU+OLBcZHUcoNl7KkHHQ7JzjYzBIodazSwr6u5Pai/tDaIfyskbfhmZv+MUwnBti
	 UM8Hc9/Hgyg/MjYPKg0WaiwAEfiPphHojG3ByKXW1Tp4uJO+7mk20FKcpaKATTaigf
	 PyQX4EntyNBTw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6205D37802F2;
	Tue, 26 Mar 2024 19:54:32 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id C7FED10608D9; Tue, 26 Mar 2024 20:54:31 +0100 (CET)
Date: Tue, 26 Mar 2024 20:54:31 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, boris.brezillon@collabora.com, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
Message-ID: <jbyqey5y5ngr7mkrrmdxrwyw5ogd7rq56af6mrmhsckboanvyp@tcaav2tridos>
References: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_125436_431373_495F5EE7 
X-CRM114-Status: GOOD (  21.49  )
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
Content-Type: multipart/mixed; boundary="===============1733554220184340197=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1733554220184340197==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vy7v7ft7rt4enblx"
Content-Disposition: inline


--vy7v7ft7rt4enblx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 25, 2024 at 05:19:04PM +0100, Dragan Simic wrote:
> Following the approach used to enable the Mali GPU on the rk3588-evb1, [1]
> do the same for the Pine64 QuartzPro64, which uses nearly identical hardw=
are
> design as the RK3588 EVB1.
>=20
> The slight disadvantage is that the regulator coupling logic requires the
> regulators to be always on, which is also noted in the comments.  This is
> obviously something to be improved at some point in the future, but should
> be fine for now, especially because the QuartzPro64 isn't a battery-power=
ed
> board, so low power consumption isn't paramount.
>=20
> [1] https://lore.kernel.org/linux-rockchip/20240325153850.189128-5-sebast=
ian.reichel@collabora.com/
>=20
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---

FWIW

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/a=
rm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> index 67414d72e2b6..68d432c61ea5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> @@ -285,6 +285,12 @@ &gmac0_rgmii_clk
>  	status =3D "okay";
>  };
> =20
> +&gpu {
> +	mali-supply =3D <&vdd_gpu_s0>;
> +	sram-supply =3D <&vdd_gpu_mem_s0>;
> +	status =3D "okay";
> +};
> +
>  &i2c2 {
>  	status =3D "okay";
> =20
> @@ -491,11 +497,15 @@ rk806_dvs3_null: dvs3-null-pins {
>  		regulators {
>  			vdd_gpu_s0: dcdc-reg1 {
>  				regulator-name =3D "vdd_gpu_s0";
> +				/* regulator coupling requires always-on */
> +				regulator-always-on;
>  				regulator-boot-on;
>  				regulator-enable-ramp-delay =3D <400>;
>  				regulator-min-microvolt =3D <550000>;
>  				regulator-max-microvolt =3D <950000>;
>  				regulator-ramp-delay =3D <12500>;
> +				regulator-coupled-with =3D <&vdd_gpu_mem_s0>;
> +				regulator-coupled-max-spread =3D <10000>;
> =20
>  				regulator-state-mem {
>  					regulator-off-in-suspend;
> @@ -545,11 +555,15 @@ regulator-state-mem {
> =20
>  			vdd_gpu_mem_s0: dcdc-reg5 {
>  				regulator-name =3D "vdd_gpu_mem_s0";
> +				/* regulator coupling requires always-on */
> +				regulator-always-on;
>  				regulator-boot-on;
>  				regulator-enable-ramp-delay =3D <400>;
>  				regulator-min-microvolt =3D <675000>;
>  				regulator-max-microvolt =3D <950000>;
>  				regulator-ramp-delay =3D <12500>;
> +				regulator-coupled-with =3D <&vdd_gpu_s0>;
> +				regulator-coupled-max-spread =3D <10000>;
> =20
>  				regulator-state-mem {
>  					regulator-off-in-suspend;

--vy7v7ft7rt4enblx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYDJ/MACgkQ2O7X88g7
+prAXw//VFNyf9UpzEvJ2gmtgoAy+Uuxc8F9f3S6P58m/22P+THFPE3nNh1KnLZ4
1uhZc3Gj2sf0nvXTr2Zl6fdV0Sr0xEKUlQGnXAcxH33nZ/TGWhjFu3ivzF59L98T
RwXbIIQWKQyBjcyrwF1ssq9zdt9ywbTAGUcjnt7NzuJ+S8+W3eoyvJzEXT7ij+fa
rShpniZV50t8DeqNLKgbSyOybguQRRo7cgKwrgQGeoNxb1IXkmkOzhmZ07fd84i0
cusDkWNh2sk0wIL0xw9HRKuay2lY8PiPnS+th+hNf6SC5oF/CQfXjtXE//fNHhkI
0L9xLtdPKt3zeKSSe9kB2xZMC4UO1Q1bxPAOT2hzoF/vHb5Tp8mO4usGTrGNHspc
OiAtZt+V+4JblDIiVGSc2KLuERFxEvsQMkKilCOQbNDoWwsC/E9aGbcgt0lkaRKi
AE4i79EE3uHiIR1q8dg28P4JZpt1LjjZIq7QjUWSIqOwXWGOY8d6yflJn9z1bQZm
YfukUZ3IyYfJxHHt2zL7qIAXTj3oMzr69XYnAvVuZbZkzYOQ1wcduuSC7tr+AN0Q
ZuJ152h5AtoviSvADObkhjzYoH5NTd2ep2/MMy2qdtkPt4i5kTmtt7VMpl2szzhk
AS0FfOoWCSS5Uj6y7k0SyE1B72dYHej+raY8jySawgt+kQV4cyU=
=tY+0
-----END PGP SIGNATURE-----

--vy7v7ft7rt4enblx--


--===============1733554220184340197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1733554220184340197==--

