Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED38BCF257A
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 19:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mXfP5OWWh73cEYkZl7Gls/pxMgsv21E28BgAw0XnoZg=; b=1Gd2S2mb3cGNvorr2yQb6Vk0KS
	v47tFTa9DGXxwTLBxOJMTedNzLwmSpfDa8XyQ0qKuLkNCMhSpmiYZd2e8B2D9EK1kZWGDUU3baFVG
	/1BBFobuyUdfpNCyFOgLSmENIt2+voc7FBcnScqd4yGmu+w/Ta+6A2TzmE3r2zJcqEjtINYSzSwd8
	gQ9JaSmW0WoCzN1sOiT9wmRYVYBTsXjw6GPIgbyHY/Ne4MEnDGbckEN4sCsHXXdHo+Di7K7s1HyuF
	4q5lLQz8cgm65L6kw1JSsdifv9gAqJdOrlB+1sLMN4fs2lCITZDOV2pUHwLo1AAr9JpGYl/TgkWeL
	dXalEYcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szi0x-00000001kwT-0t2j;
	Sat, 12 Oct 2024 19:42:59 +0000
Received: from out-189.mta1.migadu.com ([2001:41d0:203:375::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szi0u-00000001kmR-0Mgw
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 19:42:58 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728762173;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b64LRzS0K1xNpUCxz5A33hxeBDQfr+W1xfxRyrbN/Vo=;
	b=MWr6fxQIQPPgIeAl5dgj7l0bAlEBPcvWfZZeKHQXRoBu84aYdBilYwohPNrR7NA/1UOBa0
	58yFspj7LGAOQlvodhYsvjBQeS6q7mw4FTV7rcdRHZjYdWD1E+q4e1w8oWJRerGWbOymAb
	rX+h/QIcsEp48ElZ+SYaCnoDZWdsB/OVxO0VBXhkFiw3fveB3FBfsy6aHfsOt1wBr5//3r
	MCACn6VHrQw/pOyni6GIUbC2f4Hg9/xy4YQN0ytb76D2iilJTbdXQOKMQGPzXRavmdoS6d
	muC7yi/QnDbeLoGgrQ3Af0X3F+NCQNUJ5WIqNTRjsGwtKn5nMnPB76a3EFG7yA==
Date: Sat, 12 Oct 2024 21:42:50 +0200
Message-Id: <D4U31LE9JG2Q.CW68BA95B9QZ@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>
Cc: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>, "TL Lim"
 <tllim@pine64.org>, "Marek Kraus" <gamiee@pine64.org>, "Tom Cubie"
 <tom@radxa.com>, "FUKAUMI Naoki" <naoki@radxa.com>, "Nicolas Frattaroli"
 <frattaroli.nicolas@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add new SoC dtsi for the
 RK3566T variant
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <95fc64aaf6d3ac7124926bcb0c664406b4e5fe3d.1728752527.git.dsimic@manjaro.org>
In-Reply-To: <95fc64aaf6d3ac7124926bcb0c664406b4e5fe3d.1728752527.git.dsimic@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_124256_322719_DC8681C2 
X-CRM114-Status: GOOD (  24.79  )
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
Content-Type: multipart/mixed; boundary="===============7976160961699221475=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7976160961699221475==
Content-Type: multipart/signed;
 boundary=2ac6e6696d22f858c7a33b96674888b04300dffc6f4ecc92215db824f2a3;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--2ac6e6696d22f858c7a33b96674888b04300dffc6f4ecc92215db824f2a3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Dragan,

On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
> Add new SoC dtsi file for the RK3566T variant of the Rockchip RK3566 SoC.
> The difference between the RK3566T variant and the "full-fat" RK3566 vari=
ant
> is in fewer supported CPU and GPU OPPs on the RK3566T, and in the absence=
 of
> a functional NPU, which we currently don't have to worry about.
>
> Examples of the boards based on the RK3566T include the Pine64 Quartz64 Z=
ero
> SBC, [2] the Radxa ROCK 3C and the Radxa ZERO 3E/3W SBCs.  Unfortunately,
> Radxa doesn't mention the use of RK3566T officially, but its official SBC
> specifications do state that the maximum frequency for the Cortex-A55 cor=
es
> on those SBCs is lower than the "full-fat" RK3566's 1.8 GHz, which makes
> spotting the presence of the RK3566T SoC variant rather easy. [3][4][5]  =
An
> additional, helpful cue is that Radxa handles the CPU and GPU OPPs for th=
e
> RK3566T variant separately in its downstream kernel. [6]
>
> The CPU and GPU OPPs supported on the RK3566T SoC variant are taken from =
the
> vendor kernel source, [1] which uses the values of the "opp-supported-hw"=
 OPP
> properties to determine which ones are supported on a particular SoC vari=
ant.
> The actual values of the "opp-supported-hw" properties make it rather eas=
y
> to see what OPPs are supported on the RK3566T SoC variant, but that, rath=
er
> unfortunately, clashes with the maximum frequencies advertised officially
> for the Cortex-A55 CPU cores on the above-mentioned SBCs. [2][3][4][5]  T=
he
> vendor kernel source indicates that the maximum frequency for the CPU cor=
es
> is 1.4 GHz, while the SBC specifications state that to be 1.6 GHz.  Unles=
s
> that discrepancy is resolved somehow, let's take the safe approach and us=
e
> the lower maximum frequency for the CPU cores.
>
> Update the dts files of the currently supported RK3566T-based boards to u=
se
> the new SoC dtsi for the RK3566T variant.  This actually takes the CPU co=
res
> and the GPUs found on these boards out of their earlier overclocks, but i=
t
> also means that the officially advertised specifications [2][3][4][5] of =
the
> highest supported frequencies for the Cortex-A55 CPU cores on these board=
s
> may actually be wrong, as already explained above.
>
> The correctness of the introduced changes was validated by decompiling an=
d
> comparing all affected board dtb files before and after these changes.
>
> [1] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed=
561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> [2] https://wiki.pine64.org/wiki/Quartz64
> [3] https://dl.radxa.com/rock3/docs/hw/3c/radxa_rock3c_product_brief.pdf
> [4] https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_product_brief.pdf
> [5] https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_product_brief.pdf
> [6] https://github.com/radxa/kernel/commit/2dfd51da472e7ebb5ef0d3db78f902=
454af826b8
>
> Cc: TL Lim <tllim@pine64.org>
> Cc: Marek Kraus <gamiee@pine64.org>
> Cc: Tom Cubie <tom@radxa.com>
> Cc: FUKAUMI Naoki <naoki@radxa.com>
> Helped-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> Helped-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  .../dts/rockchip/rk3566-radxa-zero-3.dtsi     |  2 +-
>  .../boot/dts/rockchip/rk3566-rock-3c.dts      |  2 +-
>  arch/arm64/boot/dts/rockchip/rk3566t.dtsi     | 90 +++++++++++++++++++
>  3 files changed, 92 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566t.dtsi
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch=
/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> index de390d92c35e..1ee5d96a46a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> @@ -3,7 +3,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/soc/rockchip,vop2.h>
> -#include "rk3566.dtsi"
> +#include "rk3566t.dtsi"
> =20
>  / {
>  	chosen {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64=
/boot/dts/rockchip/rk3566-rock-3c.dts
> index f2cc086e5001..9a8f4f774dbc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -5,7 +5,7 @@
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/soc/rockchip,vop2.h>
> -#include "rk3566.dtsi"
> +#include "rk3566t.dtsi"
> =20
>  / {
>  	model =3D "Radxa ROCK 3C";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566t.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3566t.dtsi
> new file mode 100644
> index 000000000000..cd89bd3b125b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566t.dtsi
> @@ -0,0 +1,90 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include "rk3566-base.dtsi"
> +
> +/ {
> +	cpu0_opp_table: opp-table-0 {
> +		compatible =3D "operating-points-v2";
> +		opp-shared;
> +
> +		opp-408000000 {
> +			opp-hz =3D /bits/ 64 <408000000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz =3D /bits/ 64 <600000000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
> +		};
> +
> +		opp-816000000 {
> +			opp-hz =3D /bits/ 64 <816000000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
> +			opp-suspend;
> +		};
> +

For consistency, no blank lines between the opp nodes would be nice ;)

Cheers,
  Diederik

> +		opp-1104000000 {
> +			opp-hz =3D /bits/ 64 <1104000000>;
> +			opp-microvolt =3D <900000 900000 1150000>;
> +			clock-latency-ns =3D <40000>;
> +		};
> +
> +		opp-1416000000 {
> +			opp-hz =3D /bits/ 64 <1416000000>;
> +			opp-microvolt =3D <1025000 1025000 1150000>;
> +			clock-latency-ns =3D <40000>;
> +		};
> +	};
> +
> +	gpu_opp_table: opp-table-1 {
> +		compatible =3D "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz =3D /bits/ 64 <200000000>;
> +			opp-microvolt =3D <850000 850000 1000000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz =3D /bits/ 64 <300000000>;
> +			opp-microvolt =3D <850000 850000 1000000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz =3D /bits/ 64 <400000000>;
> +			opp-microvolt =3D <850000 850000 1000000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz =3D /bits/ 64 <600000000>;
> +			opp-microvolt =3D <900000 900000 1000000>;
> +		};
> +
> +		opp-700000000 {
> +			opp-hz =3D /bits/ 64 <700000000>;
> +			opp-microvolt =3D <950000 950000 1000000>;
> +		};
> +	};
> +};
> +
> +&cpu0 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +};
> +
> +&cpu1 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +};
> +
> +&cpu2 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +};
> +
> +&cpu3 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +};
> +
> +&gpu {
> +	operating-points-v2 =3D <&gpu_opp_table>;
> +};
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


--2ac6e6696d22f858c7a33b96674888b04300dffc6f4ecc92215db824f2a3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwrRPQAKCRDXblvOeH7b
bmjcAQCeNqqm97Nc2PFzycIlqCXV5PD0AHf+jeMsvHLDdu49rwEAxBVEpDXvqpbP
9IwtMSL7LErw4w7ecjk/M7h8qJJIpwo=
=Wms1
-----END PGP SIGNATURE-----

--2ac6e6696d22f858c7a33b96674888b04300dffc6f4ecc92215db824f2a3--


--===============7976160961699221475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7976160961699221475==--

