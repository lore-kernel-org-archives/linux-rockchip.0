Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77669C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 22:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yQLapFlAIL7dzFgMyZM/RRg5cas+Y+9/9cbMLT38rlo=; b=U2oRKnTiRLVZ83QtWd+Od0yH4D
	hpALir4iOAD29h1CMSQM7Pl5ta/y+Vo92v/ZwsRCvkVK4BqRFU6orTjeErl2ZxuywzXdavM7SW8+P
	h+/UxhZjb0KqUU0cJqzxCc01CC8I5NbSFJ9OFT8obJOmwftb+d/FH5ca1ul94kBlqu5Gtk53desRH
	MrK+uO3il1j5uBHgDtUD2Gb2SZeUSxixUJoPZkNk7l6DHgry3G5RjqijywOsOtnC8/MMFqD5n+L5c
	Oeq4stodTmo5Ip7rcMn0Ydn23XF+vpOUQhRPIDGti8FSDInh8NS/v31h7VPBcvZOt/FhDbHgf29qc
	oGTvKLJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMFZ4-001zu1-1a;
	Sat, 06 Jan 2024 22:54:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMFYz-001zsl-2r;
	Sat, 06 Jan 2024 22:54:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704581680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bi/9uuw0QbO+5ghXCWyrtwMbNZZbLyDpZzMphz145b0=;
	b=bMlpjIHzUH1cktNyniTdaMiRZJPB3lejcN6ljBuaiqQuwv8Dx/9UEHB/eReAwqGAZx6hpU
	waHvxdQ8f8h0AvVHSWKFBYnD3uuI+L6RPBP1+eEuhHgAx0c5nQMX5cy2ox8DrElCfb+vL+
	0R07a7U87KzwnVs+JISf6zmEdVGgo54RpKXwKF6l/4Owc972S/j0F2133C1g4IYiySCmYs
	i12ErAy9jVgP2dz8cBavQrXUY+fNiHT58esk+PFtL48WUus9RWij9g4bfJObSil8j0tYZw
	W05YdxK3PgBEWjrmwwFIYQ9Cp0Q25dcJ1MHCGqH2YDU8ozHaYuNupzSzu7wgnQ==
Date: Sat, 06 Jan 2024 23:54:39 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <szucst@iit.uni-miskolc.hu>, Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Chris Morgan
 <macromorgan@hotmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable built-in thermal monitoring
 on rk3588
In-Reply-To: <20240106222357.23835-1-alchark@gmail.com>
References: <20240106222357.23835-1-alchark@gmail.com>
Message-ID: <e0302da12345e5539583b2c96d747592@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_145446_549476_35A0DA85 
X-CRM114-Status: GOOD (  16.65  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Alexey,

Please see my comments below.

On 2024-01-06 23:23, Alexey Charkov wrote:
> Include thermal zones information in device tree for rk3588 variants
> and enable the built-in thermal sensing ADC on RADXA Rock 5B
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 143 ++++++++++++++++++
>  2 files changed, 147 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index a5a104131403..f9d540000de3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -772,3 +772,7 @@ &usb_host1_ehci {
>  &usb_host1_ohci {
>  	status = "okay";
>  };
> +
> +&tsadc {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 8aa0499f9b03..8235991e3112 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/reset/rockchip,rk3588-cru.h>
>  #include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/ata/ahci.h>
> +#include <dt-bindings/thermal/thermal.h>
> 
>  / {
>  	compatible = "rockchip,rk3588";
> @@ -2112,6 +2113,148 @@ tsadc: tsadc@fec00000 {
>  		status = "disabled";
>  	};
> 
> +	thermal_zones: thermal-zones {
> +		soc_thermal: soc-thermal {

It should be better to name it cpu_thermal instead.  In the end, that's 
what it is.

> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			sustainable-power = <2100>; /* milliwatts */

These three comments above are pretty much redundant.

> +
> +			thermal-sensors = <&tsadc 0>;

An empty line should be added here.

> +			trips {
> +				threshold: trip-point-0 {

It should be better to name it cpu_alert0 instead, because that's what 
other newer dtsi files already use.

> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				target: trip-point-1 {

It should be better to name it cpu_alert1 instead, because that's what 
other newer dtsi files already use.

> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				soc_crit: soc-crit {

It should be better to name it cpu_crit instead, because that's what 
other newer dtsi files already use.

> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */

These two comments above are pretty much redundant.  It also applies to 
all other similar comments below.

> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&target>;

Shouldn't &threshold (i.e. &cpu_alert0) be referenced here instead?

> +					cooling-device = <&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Shouldn't all big CPU cores be listed here instead?

> +					contribution = <1024>;
> +				};
> +				map1 {
> +					trip = <&target>;

Shouldn't &target (i.e. &cpu_alert1) be referenced here instead?

> +					cooling-device = <&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Shouldn't all little and big CPU cores be listed here instead?

> +					contribution = <1024>;
> +				};
> +				map2 {
> +					trip = <&target>;
> +					cooling-device = <&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					contribution = <1024>;
> +				};

Isn't this cooling map redundant?

> +			};
> +		};
> +
> +		bigcore0_thermal: bigcore0-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 1>;
> +
> +			trips {
> +				big0_crit: big0-crit {
> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		bigcore1_thermal: bigcore1-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 2>;
> +
> +			trips {
> +				big1_crit: big1-crit {
> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		little_core_thermal: littlecore-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 3>;
> +
> +			trips {
> +				little_crit: little-crit {
> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		center_thermal: center-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 4>;
> +
> +			trips {
> +				center_crit: center-crit {
> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		gpu_thermal: gpu-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 5>;
> +
> +			trips {
> +				gpu_crit: gpu-crit {
> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		npu_thermal: npu-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 6>;
> +
> +			trips {
> +				npu_crit: npu-crit {
> +					/* millicelsius */
> +					temperature = <115000>;
> +					/* millicelsius */
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +	};
> +
>  	saradc: adc@fec10000 {
>  		compatible = "rockchip,rk3588-saradc";
>  		reg = <0x0 0xfec10000 0x0 0x10000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
