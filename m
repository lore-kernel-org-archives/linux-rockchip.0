Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19117CD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 00:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3Fp4G2T5obiwNf4AJNMXTMazpE9G0+WRsD/bi5FIvM=; b=HbRmu+ObvLZNf2
	pkpn3rJJo5rQU8fbwpaS0ExHM+ySulZLxaYA92ghieoForuNj4Ahds2sIOFXjjYpybcpc/4fIBZZI
	ZtvFuGVmsyXq7egi0PPm0y1lI2HsoMY+cPHKXRgTKeLkmb/Ui7epF/P9Np/5tA3QB4uCCeYapxyz5
	IhQIFgtEw/EneiHLoo9YbS9eHEJjHl0H19LGl705cRxCXERMViR3A8pJNCkiJJTZBKFwZ62r3aOft
	Qtxe0gVNahfPvMtf6k6Y72iOSX+EoXr1k/Nxt1w5CUyC6v16BGL/UBGeNuHh59eAz8vYlqTUVsOv7
	BtoKqLSIZvSGtODtzU5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIFgi-00000004Xhw-2Vzr;
	Mon, 10 Nov 2025 00:23:16 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIFge-00000004XhO-3BW6;
	Mon, 10 Nov 2025 00:23:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 7C55140E66;
	Mon, 10 Nov 2025 01:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762734188; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=7BPbQiZQ1p/FzedWzhYAj/T5KEbE0aQW4yaYgMm8nyA=;
	b=TTCVHgKQL/8h1giAPMPv8LMSy5nUj5vJw409qzY4QYO+lHfiPHboDema3EVL2F5YHOPN7S
	Iz00hJxdT3YlpED5ftFuVuOZ1fKcAVs+0pTmvZBz2nvr6dpckB2XI8yMDhby71hBclJjpK
	LlOqvCqPw+N8Gw5NcQluVM9fHbanbwYe9VIXLgCg8pI2OPIvvRbvAmGqxfdA4jChX8N+Sq
	i4kAfJqpCHY7APfLUJp3zSBsp5bjUm+FG0baQx89kemZBM2Vgsn/UBCJs02c/aBBCFXdt8
	7QJYmgZJngtkeMT3/E5HGJEOfdIPXpFm+YPjYs+OziZQmc9F4b6ZWfmSr6rbtA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251109192128.72527-1-sigmaris@gmail.com>
References: <20251109192128.72527-1-sigmaris@gmail.com>
Date: Mon, 10 Nov 2025 01:23:06 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Alexey Charkov" <alchark@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Hugh Cole-Baker" <sigmaris@gmail.com>
MIME-Version: 1.0
Message-ID: <da6721a3-8f59-9c0c-762c-bc02b39ac472@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= add pwm-fan for NanoPC-T6
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_162313_040893_79663FE5 
X-CRM114-Status: GOOD (  18.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Hugh,

Thanks for the v2!  Please, see a couple of nitpicks below.

On Sunday, November 09, 2025 20:20 CET, Hugh Cole-Baker <sigmaris@gmail.com> wrote:
> FriendlyELEC offers an optional heatsink and fan addon for the NanoPC-T6
> and T6 LTS, which plugs in to the fan connector on the board driven by
> pwm1. Add the fan as an active cooling device for the SoC package.
> 
> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
> ---
> Changes from v1: https://lore.kernel.org/linux-rockchip/20251026194858.92461-1-sigmaris@gmail.com/
> * add the fan to the base board dtsi instead of overlay (Heiko)
> * just use 2 trip points for warm and hot temperatures (Dragan, Alexey)
> 
> References:
> FriendlyELEC heatsink with fan addon:
> https://www.friendlyelec.com/index.php?route=product/product&product_id=305
> Vendor DT with trip points and PWM duty cycle values:
> https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev01.dts#L75-L90

I think it would be better to move these references to the patch
description, so they become directly available in the repository.
It might be the best to use the "... [n]" form for the references,
which puts them as close to the backed contents as possible.

Oh, and I think that "arm64: dts: rockchip: Enable active cooling
on NanoPC-T6" as the patch subject would read nicer. :)

>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index fafeabe9adf9e..9164a0ee6228e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -11,6 +11,7 @@
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/thermal/thermal.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588.dtsi"
>  
> @@ -89,6 +90,14 @@ usr_led: led-1 {
>  		};
>  	};
>  
> +	fan: pwm-fan {
> +		compatible = "pwm-fan";
> +		cooling-levels = <0 35 64 100 150 255>;
> +		fan-supply = <&vcc5v0_sys>;
> +		pwms = <&pwm1 0 50000 0>;
> +		#cooling-cells = <2>;
> +	};
> +
>  	sound {
>  		compatible = "simple-audio-card";
>  		pinctrl-names = "default";
> @@ -591,6 +600,36 @@ &i2s6_8ch {
>  	status = "okay";
>  };
>  
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_warm: package-warm {
> +			temperature = <50000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +
> +		package_hot: package-hot {
> +			temperature = <60000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};

It should be better to use 55 and 65 oC as the trip thresholds,
because people often report around 50 oC as the observed idle-state
temperature of their RK3588 SoCs, so increasing the first threshold
to 55 oC should be beneficial by preventing the fan from spinning
when the SoC is actually idle.  The second threshold is usually set
to be 10 oC higher, so it should end up at 65 oC.

> +	cooling-maps {
> +		map0 {
> +			trip = <&package_warm>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +
> +		map1 {
> +			trip = <&package_hot>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l0 {
>  	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc_3v3_pcie20>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
