Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C26FCE7A8A
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Sep 2023 22:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zn7nvs4Mk55KPqkf6bQKYecv+6+Qrzke4pWPGUQl+3Y=; b=0wkHraEhzeF9Yx9iZ+B8Ifd7gK
	1lMvZRhBs1gaX/t3mG5XeetDAPrwnYghOtT+JfFdmGO28fmj9XFG0Qwd3ucqdKqpNHAsCtLC1h6+T
	6LPYvjyRzKKnDA33Z3oyQScPrESlbdu7E+0sYGKy+rmtn2A24YSkez/tAPlgmE5U/q3kvnJBM9u6o
	oe1dWYBCU3iCemETqVV3Rz93v2LTqIfCP6fyDcPYP7aRSZ7NTIqGqV0cl1boQ8ACbflg8VqQvQewO
	/AcULliWyN8v0jpogMznH2+bDShMDPmVLewSRqk+hZGkg/HW/1uAiTjfBHyQmXR8k3nXeBH2V+hbo
	x0jK4JNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkXFZ-00CucI-2Q;
	Sun, 24 Sep 2023 22:06:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkXFV-00CubF-0l;
	Sun, 24 Sep 2023 22:06:47 +0000
Received: from mercury (cust-west-par-46-193-56-210.cust.wifirst.net [46.193.56.210])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8990D66072E5;
	Sun, 24 Sep 2023 23:06:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695593201;
	bh=sFjeHHLZbZiPI+RXlBUmPi02ydOBLFaAfIzsmR0k31c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iLQjZrQVEQGKVRB84GXjFrXvdnlXmDcST9nC9kN1YIOADkTZNxLoJeT5XVNmjOTYj
	 WwBCXglGUVUQeN6825yUXOjeqe0z93vDIDy7dr6SupIzDUnoGKFJwhkzHpZpGll7uZ
	 MLl1fRTwvCnRwEalfyw7eXp4uSScphzO18mwVmkOLl+CYjd+6er1Q90LtmQUJuQ+Hj
	 pfb8ZiwmXqwdLZY6eL4XPlgyPvX8oZNbCIM5dn2uU+0qMCaOuci1jQJeUDK9xRjJg5
	 FzKMYPiA7gMZoPrsUj/5lJYoqDgDUjOKBVzm1JacXyhR6wlfTqmVo2XAzJBIXXeJUl
	 MhXPpPMdT4S7g==
Received: by mercury (Postfix, from userid 1000)
	id D63E410611D9; Mon, 25 Sep 2023 00:06:39 +0200 (CEST)
Date: Mon, 25 Sep 2023 00:06:39 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>, Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdio node to rock-5b
Message-ID: <20230924220639.pmlm2ivktxqtvk55@mercury.elektranox.org>
References: <20230924203740.65744-1-tszucs@protonmail.ch>
MIME-Version: 1.0
In-Reply-To: <20230924203740.65744-1-tszucs@protonmail.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_150645_922551_CFBB9355 
X-CRM114-Status: GOOD (  20.15  )
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
Content-Type: multipart/mixed; boundary="===============5077964252434808785=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5077964252434808785==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="evd46iowas6r6r5v"
Content-Disposition: inline


--evd46iowas6r6r5v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Sep 24, 2023 at 08:37:45PM +0000, Tam=C3=A1s Sz=C5=B1cs wrote:
> Enable SDIO on Radxa ROCK 5 Model B M.2 Key E. Add sdio node and alias as=
 mmc2.
> Add regulator for the 3.3 V rail bringing it up during boot. Make sure EK=
EY_EN
> is muxed as GPIO.
>=20
> Signed-off-by: Tam=C3=A1s Sz=C5=B1cs <tszucs@protonmail.ch>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index 8ab60968f275..d1c3f9e10b3d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -12,6 +12,7 @@ / {
>  	aliases {
>  		mmc0 =3D &sdhci;
>  		mmc1 =3D &sdmmc;
> +		mmc2 =3D &sdio;
>  		serial2 =3D &uart2;
>  	};
> =20
> @@ -76,6 +77,21 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
>  		regulator-max-microvolt =3D <1100000>;
>  		vin-supply =3D <&vcc5v0_sys>;
>  	};
> +
> +	vcc3v3_wf: vcc3v3-wf-regulator {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc3v3_wf";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		enable-active-high;
> +		gpios =3D <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&vcc3v3_wf_en>;
> +		startup-delay-us =3D <50000>;
> +		vin-supply =3D <&vcc5v0_sys>;
> +	};
>  };
> =20
>  &cpu_b0 {
> @@ -222,6 +238,12 @@ vcc5v0_host_en: vcc5v0-host-en {
>  			rockchip,pins =3D <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	m2e {
> +		vcc3v3_wf_en: vcc3v3-wf-en {
> +			rockchip,pins =3D <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
>  };
> =20
>  &pwm1 {
> @@ -258,6 +280,27 @@ &sdmmc {
>  	status =3D "okay";
>  };
> =20
> +&sdio {
> +	max-frequency =3D <200000000>;
> +	no-sd;
> +	no-mmc;
> +	non-removable;
> +	bus-width =3D <4>;
> +	cap-sdio-irq;
> +	disable-wp;
> +	keep-power-in-suspend;
> +	wakeup-source;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	vmmc-supply =3D <&vcc3v3_wf>;
> +	vqmmc-supply =3D <&vcc_1v8_s3>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&sdiom0_pins>;
> +	status =3D "okay";
> +};
> +
>  &spi2 {
>  	status =3D "okay";
>  	assigned-clocks =3D <&cru CLK_SPI2>;
> --=20
> 2.40.1
>=20
>=20

--evd46iowas6r6r5v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUQsuwACgkQ2O7X88g7
+po7tA/9GVojHnrT4ofeu/2nOa8IG0Szx1UBwyUgqqMqHi9AVyZWWAFv0Z2lm/T+
dh12mhSaIMYoCnq997/QGbnZOmnTxp2hZpoDb+Fostz/BvF8LARLaU375lEKWfxK
ufCYe54vI0mGArwPb/U99G1eIxFT0FxuzgOIqrLXHXVE+tHYqHI6hscuvVwwVhA3
ls9mfjeH8cYRkF+9ZWiASkioLFhbnkfnbN5coAPiBotQn6O36eIVfmmvxqvvRUOs
doDnR9qruAYeiYBvOFGlCDVe8hmQvCoZ1G1e2pEs/2P8Wxv6JtejiRSOEJmj4Nnf
TSpEKk506x8bFV4utcGDmjqa5LtKtXr6PvaWU1vKt5cUS6Co4/7DgEooJszeYpF/
KsILtnXmKvnSWvh6Awnx+lsZh4J4RqQRToQm3RuwG3Dpa5CBWS9z+s5CB5bbUOI2
pgevywuhaiwrS6j9WxjHDyI7+n6YHpvtBqsvOK1hxfTFfPiJEfYq/UO0gsz+0H/P
kzAPDcTA0+hSPnSR6FScMHlm7UKOTPKXStN3MEvWyS1DLRdhhXS325uVBE/LayND
ZNGn/gmXjETjGWzw3jHf0oPnk1++tGgXpOQ+PyHuVhiqmShCnMnBiWoKkRKRh4Im
LXYOG1hNIYSCqAfzXJlDuSViL4Hxv0IpbmLWHQ6Sa3nvBuuN5tM=
=Qg0D
-----END PGP SIGNATURE-----

--evd46iowas6r6r5v--


--===============5077964252434808785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5077964252434808785==--

