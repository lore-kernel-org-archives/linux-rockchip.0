Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE1B2CF2567
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 19:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xaKOENtciXTxwQxM6GmcX21OBK+qt6bxAfGtKtWJo/Q=; b=aPTvfLokk4To1mEKgDrdbWxKNE
	Oks8jyIXvPG6iXZnW6HO0r+BAu5GJYO43RuxfmDggK3L3vZ+q1mfMi18JVp5z/97xu35Uq70GgR5z
	kP8WtJXnNkeaWzDmupmEt6pqJB1tdu94hosBFZpin9a7VQsBUDQmoSqXdaHEZ7a2nrbaxdqR3V8Ko
	wGJJGeySxAeT1iVCgYF/KWwFqpkdDgiEJjKCJ3KKayC9RKMiTIt82aCG+PSjJ9DZzeQJzytaU/av4
	bO7tXoGIXD1fL8b7Nv7496gemR0bEtAMABOB9Nn3E0RNIfsqHzbV0mKtO97L7HbAu/T0Ihb6tbnjZ
	9FWB+jBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szhm7-00000001ioZ-3w6D;
	Sat, 12 Oct 2024 19:27:39 +0000
Received: from out-177.mta0.migadu.com ([91.218.175.177])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szhm3-00000001inp-2oTc
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 19:27:38 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728761249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bujrQMHu5eqJ7ou03hpDUMEsTeDy5i9ppr3HwnSleTY=;
	b=kOU0k4rvuMUbQ+pEacsgUS923FabL+2SsWQMWGwGZxRtkIZeY8F1UIKmL0LZbvMnZycliJ
	wv6NN/6+RV5tmsyVCeQWColxmscVDeoGnwABP28bE6AozIbQ6KqfLB5zsdIE/JeQB89rGt
	Cr7hYTMRPRmm6N2c8wTfUVRl2CQpD3FSatEhgg3vDtSppOyRYljG2aQMDDp9NoFLYiHRhM
	O1USVJ0+sEsu1+0Ui8RAZjVAJd9UvywYAKra96u/TRtNiieCrCyq5MWMvJ0gPwKM49fbCD
	Na2OdvakhwVYNwPX3Yf+z5QUS/ySeit0luLeQK2Wv9zRFVjGtV9/QK7+QAoahg==
Date: Sat, 12 Oct 2024 21:27:16 +0200
Message-Id: <D4U2PO4VF4ST.9SBVKYF6095M@cknow.org>
Cc: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Update CPU OPP voltages in
 RK356x SoC dtsi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <2e1e100284b1edb470d6e7fde021a0f1779336c8.1728752527.git.dsimic@manjaro.org>
In-Reply-To: <2e1e100284b1edb470d6e7fde021a0f1779336c8.1728752527.git.dsimic@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_122736_547793_9B5B3378 
X-CRM114-Status: GOOD (  16.64  )
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
Content-Type: multipart/mixed; boundary="===============8076250765329858488=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8076250765329858488==
Content-Type: multipart/signed;
 boundary=612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Dragan,

On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
> Update the lower/upper voltage limits and the exact voltages for the Rock=
chip
> RK356x CPU OPPs, using the most conservative values (i.e. the highest per=
-OPP
> voltages) found in the vendor kernel source. [1]
>
> Using the most conservative per-OPP voltages ensures reliable CPU operati=
on
> regardless of the actual CPU binning, with the downside of possibly using
> a bit more power for the CPU cores than absolutely needed.
>
> Additionally, fill in the missing "clock-latency-ns" CPU OPP properties, =
using
> the values found in the vendor kernel source. [1]
>
> [1] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed=
561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>
> Related-to: eb665b1c06bc ("arm64: dts: rockchip: Update GPU OPP voltages =
in RK356x SoC dtsi")
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  1 +
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 18 ++++++++++++------
>  2 files changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3568.dtsi
> index 0946310e8c12..5c54898f6ed1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -273,6 +273,7 @@ &cpu0_opp_table {
>  	opp-1992000000 {
>  		opp-hz =3D /bits/ 64 <1992000000>;
>  		opp-microvolt =3D <1150000 1150000 1150000>;
> +		clock-latency-ns =3D <40000>;
>  	};
>  };
> =20
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk356x.dtsi
> index 0ee0ada6f0ab..534593f2ed0b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -134,39 +134,45 @@ cpu0_opp_table: opp-table-0 {
> =20
>  		opp-408000000 {
>  			opp-hz =3D /bits/ 64 <408000000>;
> -			opp-microvolt =3D <900000 900000 1150000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
>  			clock-latency-ns =3D <40000>;
>  		};
> =20
>  		opp-600000000 {
>  			opp-hz =3D /bits/ 64 <600000000>;
> -			opp-microvolt =3D <900000 900000 1150000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
>  		};
> =20
>  		opp-816000000 {
>  			opp-hz =3D /bits/ 64 <816000000>;
> -			opp-microvolt =3D <900000 900000 1150000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
>  			opp-suspend;
>  		};

While it felt a bit much to send a patch just to remove the blank lines
between the opp nodes, this sounds like an excellent opportunity to make
it consistent with the opp list in other DT files?

Cheers,
  Diederik

--612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwrNmgAKCRDXblvOeH7b
biZ5AQCk8eE/SBHvOmxyKoThrXIzVKJWtgfKhOownzNqeMgT3wEA0SQCyymQQ/nZ
fuymSUIvicdEH1WptzV7GJlEF6/TaAQ=
=QmNY
-----END PGP SIGNATURE-----

--612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b--


--===============8076250765329858488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8076250765329858488==--

