Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A9ACA1002
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 10:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:Cc:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AI3WhNxfQ6T719xwVkq64cYeAs9b+UZy+Li5oHkaMWY=; b=Fk2TxBcxwFxSU+qIqtitQeB6LG
	Uu2J6hD83giiL1RsDWhTfTYTrKAhF6eB0iqHQhPNo9aIVluohGLy9v/HsBcCTx8vceP7iPI5jZHX9
	dPgOY77hCHmPejwxj3HSZeFM5epwhHqEOF5t9cyFmjBxBk7uIHyjZV1rTwZyiWG2cd0vr4pfyfpPz
	CbKkLWbmpmEhwZLMe4lIaGfPXFPp1FZDJ/5+nLy09IrnNIoXvo9toT1zkEqesF31LMtAjLdMBoGQi
	K+krumHqxyLwd6tPr9wUXHP3AboJgTJpiMlBM+1Ch3d1+l5oXbl1ESsbheP6RQGliu80GiNEuuKnJ
	lbEi8Ang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuqQA-00000007Y2q-4AUo;
	Sat, 06 Sep 2025 10:45:27 +0000
Received: from out-177.mta0.migadu.com ([2001:41d0:1004:224b::b1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuqQ6-00000007Y1K-3eTR
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Sep 2025 10:45:25 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1757155517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KWcMbbpWIN+FZp/dqVtxO/yiBkqQjBf3ubyVT6lX0jE=;
	b=g5Xe0hbOmiJ+4Tjxwyrb9wHVFPZAeIvFOXNm43tHbO9XszKd6RANE7DdKnW8nWJM056AFd
	52Oq41xklhYtBjFGPBR4A5dLBH3YXP7mgm0Kca9iEzzAXGwvkiryhMvIc5+qFmJe5bgi3m
	IaTNf49fsmKuOSFX11WOvIvOslV4O7NqZWHkrIE+1KF6Dp73q6dW64Mo3Yg52xyuYiIyOo
	eHWPcpE0cIFdpYZJGAVPAB6GpIEr+sL/l9ZkH6CU1aATXErZb5Ut+rq8BP5y7HKcZiabN7
	s9D4VrcRZPXEMjmOSjYZE9CXrDAxGLnqoT9ghw76EWam51aeK7giff7jWUSUuw==
Date: Sat, 06 Sep 2025 12:45:08 +0200
Message-Id: <DCLNN4LYO8CS.1BHUZRHOVX9IA@cknow.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add GPU powerdomain, opps,
 and cooling to rk3328
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, "Alex
 Bee" <knaerzche@gmail.com>
To: "Christian Hewitt" <christianshewitt@gmail.com>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250830115135.3549305-1-christianshewitt@gmail.com>
In-Reply-To: <20250830115135.3549305-1-christianshewitt@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_034523_710847_17DBA135 
X-CRM114-Status: GOOD (  15.78  )
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
Content-Type: multipart/mixed; boundary="===============1033277552290363107=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1033277552290363107==
Content-Type: multipart/signed;
 boundary=aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Christian,

On Sat Aug 30, 2025 at 1:51 PM CEST, Christian Hewitt wrote:
> From: Alex Bee <knaerzche@gmail.com>
>
> Add GPU powerdomain, opp-table, and cooling map nodes for the Mali
> GPU on the RK3328 SoC. Opp-table frequencies are sourced from the

I very recently saw a patch somewhere with these changes and wondered
why it wouldn't be sent upstream, so thanks for doing exactly that!

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 +++++++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3328.dtsi
> index 7d992c3c01ce..b99c78ecc4a9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -331,6 +331,11 @@ power: power-controller {
>  			#address-cells =3D <1>;
>  			#size-cells =3D <0>;
> =20
> +			power-domain@RK3328_PD_GPU {
> +				reg =3D <RK3328_PD_GPU>;
> +				clocks =3D <&cru ACLK_GPU>;
> +				#power-domain-cells =3D <0>;
> +			};
>  			power-domain@RK3328_PD_HEVC {
>  				reg =3D <RK3328_PD_HEVC>;
>  				clocks =3D <&cru SCLK_VENC_CORE>;
> @@ -570,9 +575,13 @@ map0 {
>  							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>  					contribution =3D <4096>;
>  				};
> +				map1 {
> +					trip =3D <&target>;
> +					cooling-device =3D <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					contribution =3D <4096>;
> +				};
>  			};
>  		};
> -
>  	};
> =20
>  	tsadc: tsadc@ff250000 {
> @@ -651,7 +660,35 @@ gpu: gpu@ff300000 {
>  				  "ppmmu1";
>  		clocks =3D <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>  		clock-names =3D "bus", "core";
> +		operating-points-v2 =3D <&gpu_opp_table>;
> +		power-domains =3D <&power RK3328_PD_GPU>;
>  		resets =3D <&cru SRST_GPU_A>;
> +		#cooling-cells =3D <2>;
> +	};
> +
> +	gpu_opp_table: gpu-opp-table {

As noticed by Rob's bot, this node name is incorrect.
If you do ``s/gpu-opp-table/opp-table-gpu/`` and move it to above the
'pinctrl' node, then DTB validation succeeds.

Cheers,
  Diederik

> +		compatible =3D "operating-points-v2";
> +		opp-200000000 {
> +			opp-hz =3D /bits/ 64 <200000000>;
> +			opp-microvolt =3D <1075000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz =3D /bits/ 64 <300000000>;
> +			opp-microvolt =3D <1075000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz =3D /bits/ 64 <400000000>;
> +			opp-microvolt =3D <1075000>;
> +		};
> +
> +		opp-500000000 {
> +			/* causes stability issues */
> +			opp-hz =3D /bits/ 64 <500000000>;
> +			opp-microvolt =3D <1150000>;
> +			status =3D "disabled";
> +		};
>  	};
> =20
>  	h265e_mmu: iommu@ff330200 {


--aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaLwQtgAKCRDXblvOeH7b
btXoAP4/UMRYf+nXwetnS1zQ9fI3fAREyIDXC4JH8ippVgrJ5wEA9miNplHhC+yJ
G40zy0Diz9zovrvVlpTv1lv02bOUwws=
=GMNc
-----END PGP SIGNATURE-----

--aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1--


--===============1033277552290363107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1033277552290363107==--

