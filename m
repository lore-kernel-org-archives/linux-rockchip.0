Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ACE7C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 22:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=woZNX9T8DbRz79iUY6OwvGYQo0J6HuXtQ5msSpxGcY8=; b=Tdyy8WdrGYo3L2HCvDZQiitzk2
	89iWrhTM0AfKSU6eVrtV6IDyxadEoGKJumA4ZMZjH8T5P938JehpTVEG+CXqS1+LURScPTpR4QOxP
	qXvo9Aq90Me/P99/SeYjuuXh7LyU/iz6Fymr/stMoBVm6MlL9xaSbvTl0IlyGRFFb1mW+joiikLGQ
	VDIInhi+Ni8xsC76/h6wnR7G/UITqB+ffla+ilPdknmvXP+PzccU4wHl15B/8z6nYIo1kTKXY+AcK
	7LppLi7262B89w3ehUS975NDW0cWIO9eC19KtHNeB9Vqwel3hIlcM/suZFYbeo7DRTBqc7zaKa7BC
	EfvZYPag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIcOl-00Fbd5-0y;
	Wed, 27 Dec 2023 22:29:11 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIcOh-00FbbP-1h;
	Wed, 27 Dec 2023 22:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703715541;
	bh=z8eZsp2cV/exfGxrLfpi8YcMzQaNbZFVtD++JCFlJVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UIVy/KYJZ3kjGZ8K+Fz6Ilqx7X4kZ5A00xIIQCm0Ulz8tqzzf4mJpwzir37e3Eu8h
	 jbRD8VO0cS8xzSew3O2mXE25r55XQdIcf87rNi8xsb0UAlw1nXIBmpErllPAOInoDA
	 EaECBzW0OC1EL/5tg9m0T6qnUa5TilFTiXZENbUCxsQD4BWfST/RqE/sKeLprIbwMI
	 Jyb+DxH+EGTQw1GJHveRuu7o7BOhUEBDuxFqHaRYLcn9NBe8hN1DXXIUjRwBAhpob/
	 wEuXQHwudxZGriTtKR4AAAEDr/UrhyEZEYIFf6L6fln69pC8B8vd3Eqx0q/KJEwRaB
	 eZgmPjgDkTSpA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 42ED7378107D;
	Wed, 27 Dec 2023 22:19:01 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 2EB24106CE37; Wed, 27 Dec 2023 01:16:51 +0100 (CET)
Date: Wed, 27 Dec 2023 01:16:51 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: John Clark <inindev@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Thomas McKahan <tmckahan@singleboardsolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Message-ID: <i3gvn6inzgeg257s7l254rfxvdvpdtmybdswjafz3w6gm3wki4@6fvx6pqfbgvp>
References: <20231225222859.17153-1-inindev@gmail.com>
 <20231225222859.17153-2-inindev@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231225222859.17153-2-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_142907_698340_2DCB47C7 
X-CRM114-Status: GOOD (  18.78  )
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
Content-Type: multipart/mixed; boundary="===============4444905465055455303=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4444905465055455303==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bd74nyxregwgyfxr"
Content-Disposition: inline


--bd74nyxregwgyfxr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 25, 2023 at 10:28:20PM +0000, John Clark wrote:
> Both rk806_dvs1_null and rk806_dvs2_null duplicate gpio_pwrctrl2 and
> gpio_pwrctrl1 is not set. This patch sets gpio_pwrctrl1.
>=20
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
> Changes since v1:
>  - added commit message with additional patch detail
>=20
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index dc7b88f29172..a0e303c3a1dc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -448,7 +448,7 @@ pmic@0 {
>  		#gpio-cells =3D <2>;
> =20
>  		rk806_dvs1_null: dvs1-null-pins {
> -			pins =3D "gpio_pwrctrl2";
> +			pins =3D "gpio_pwrctrl1";
>  			function =3D "pin_fun0";
>  		};
> =20
> --=20
> 2.43.0
>=20
>=20

--bd74nyxregwgyfxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmWLbPIACgkQ2O7X88g7
+ppiuA/8DRwn018AVHXWWwvd3yuX7AGXzrD0kyS8kfQ/jcxAHO3rl7sRtOzZgQ/+
UBqM1vvFGjcGAbMfWBnlKrgJf2AfiISPbitQkpwPnMWD5yN1U2lEJ7BPOB+oZ5rD
E06z2UloY4Fwl7v9OdhZ9Uy7GoiDrgQ5mDRG/5xtyRfLmjXOjokZz9y6ubIJ/ivr
T/b1fDPY2rFbTsvzuBABepgYdH/3/RakJREZBVZoQQp8Zct90EOn2ZxSuN6Ci2CO
PLQRkgNSqIOHxtg7Y6Emw/ENBXBeb4mFjlCp6C2pZMEIrJRYr9ah86Poq1tkVMM7
oeVAgsWSiIXjOMk8QYBEkmDsyaMA8dGlDhYv4ec75w9G6IoYK4UNutgAYngchOTP
aJUPiKRI3lfZcL26aGhBklSZ5hlpXkfdOssLLCPTMixVu8RFYDGqkgcUdiywh5YG
l7lQMQpqVCwiIwEeM9mbzr21G/LiIbzElV/i4z4TmR/dbcSdaIwCcrXGeChfdDW4
qkN9yIcHz/QeV0rmT0+rhq6n99em6yQMbYWtwVtiHeokUUJZJ1cy41BcdRQbFdEe
RmGmtThC+f9GNpg4up9kd0vqGqXM2lL6rXfjUsGO7vm2pmy5Jn1P9UPlboaNgYpi
90y8S0pr7UfAXe8mLLE1VKwShLDamPywTcU1vmzlgVDIoNJQ5+8=
=lqVR
-----END PGP SIGNATURE-----

--bd74nyxregwgyfxr--


--===============4444905465055455303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4444905465055455303==--

