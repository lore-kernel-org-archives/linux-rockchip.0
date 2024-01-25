Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5491CC47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 23:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=liQkKLyDx0N/VRlpuYn4v4Th8AeyAWDxzhFofDI/B08=; b=OLm9Gxe98jEYJHOE+6AeZWwpdT
	bRO+0iCnkkbwBOEjGasFVkhuOu+SvYSSHNMAdVj9dTWrwd/qfF36VZbfFpsSwoHLijAYMxFYkMfJm
	en162CNR+ymS3WV/+kAbYZmjJQJ778WVzpwhVtz9Np91GJEO29n+Z4f/9Q0GPqJj8K1DN0WsAajF1
	zQQ/sFRMPPaUYKD45bqXBaYavXDcrwSsIdNMLJCOQSOI6oejl2FaG35qttqPs7P97S+2ZiluAi27I
	5L0CGE+i81GS35JvyioZn4/BxFnzYlnIgd8MOf4XLGT/tsoYVLuxaZz5zQJRIOxmdDASzKo8J5lsk
	k4pZBpFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT8uF-00000002Oa6-3Nos;
	Thu, 25 Jan 2024 23:13:11 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT8uB-00000002OWw-1gs6;
	Thu, 25 Jan 2024 23:13:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706224385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hPLAItx+quR8qx4bS8DZbs9AeDwCziiqDgH23b0i5fE=;
	b=oQ9PeWRpZTirjz9bTW4hltMyh5cfkAEcXosHgnbSj01VRcBdhrbfktaj2VqawtHPjlwtoX
	n0MjVrItA8DbSPUMt2s/xcvd4nR0BTD2Lh/lbNLe8CJQJLf5nTrIZUDopUNgp2RvPOwh68
	6F6etuRRi7GchXscC6E61psCHUF0J88CYLcu4fvpVtPcyiSxEQ6m9qUXUzf/IviR7u4Gm2
	ufzTlbs5PtiTvSRydUvunEGTIJYb15HWMwpTGkE/StCFn0E0tPjFx70LxLeMvhTKq47sgQ
	WW3BByk26uVaz7buFpTPq0DdUrg35l/hCsknPe1V6JGl10enLHS4ITrRrvCIZA==
Date: Fri, 26 Jan 2024 00:13:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: enable temperature driven fan
 control on Rock 5B
In-Reply-To: <20240125-rk-dts-additions-v1-3-5879275db36f@gmail.com>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-3-5879275db36f@gmail.com>
Message-ID: <df062818d21f3318c033859d0e95efc7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_151307_793611_4E0B6EC5 
X-CRM114-Status: GOOD (  18.14  )
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

On 2024-01-24 21:30, Alexey Charkov wrote:
> This enables thermal monitoring on Radxa Rock 5B and links the PWM
> fan as an active cooling device managed automatically by the thermal
> subsystem, with a target SoC temperature of 55C
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 25 
> ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 9b7bf6cec8bd..c4c94e0b6163 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -52,7 +52,7 @@ led_rgb_b {
> 
>  	fan: pwm-fan {
>  		compatible = "pwm-fan";
> -		cooling-levels = <0 95 145 195 255>;
> +		cooling-levels = <0 120 150 180 210 240 255>;
>  		fan-supply = <&vcc5v0_sys>;
>  		pwms = <&pwm1 0 50000 0>;
>  		#cooling-cells = <2>;
> @@ -180,6 +180,25 @@ &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan: package-fan {
> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map-fan {
> +			trip = <&package_fan>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};

It should be better to have two new trips and two new cooling maps
defined, instead of having just one trip/map pair, like this:

&package_thermal {
	polling-delay = <1000>;

	trips {
		package_warm: package-warm {
			temperature = <55000>;
			hysteresis = <2000>;
			type = "active";
		};

		package_hot: package-hot {
			temperature = <65000>;
			hysteresis = <2000>;
			type = "active";
		};
	};

	cooling-maps {
		mapX {
			trip = <&package_warm>;
			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
		};

		mapY {
			trip = <&package_hot>;
			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
		};
	};
};

The idea behind this approach is to keep the fan spinning at the lowest
available speed until the package temperature reaches the second trip's
temperature level, at which point the fan starts ramping up.  An 
approach
like this is already employed by the Pine64 RockPro64 SBC.

This way, we'll be doing our best to keep the fan noise down;  of 
course,
it will depend on the particular heatsink and fan combo how long the fan
can be kept at the lowest speed, but we should aim at supporting as many
different cooling setups as possible, and as well as possible, out of 
the
box and with no additional tweaking required.

Please notice "mapX" and "mapY" as the names of the additional cooling 
maps,
where X and Y are simply the next lowest available indices, which is 
pretty
much the usual way to name the additional cooling maps.

>  &i2c0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c0m2_xfer>;
> @@ -738,6 +757,10 @@ regulator-state-mem {
>  	};
>  };
> 
> +&tsadc {
> +	status = "okay";
> +};
> +
>  &uart2 {
>  	pinctrl-0 = <&uart2m0_xfer>;
>  	status = "okay";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
