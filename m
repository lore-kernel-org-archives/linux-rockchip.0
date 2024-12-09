Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84FDCE7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CmlV4KyLs5rvzy2lmx13ZQze4Kt+rYTkD+9v79t1cnw=; b=PGd3ijNf38NtLbocgZRcjNcwX+
	GyzfAaXIy8YmHGLAI55EtHkNBB3UUPE9BQeifgFAjjRPWWBmc0OzsZpLXKLmKkHjppuIFFNUjn0V7
	duObZ6hnXuNUbNm5Tfjswtwzo3dNxrPL1g3zxnXKMNmecD+vO8j1Ko3Uda5yKsCc8zK1FKr0Z835F
	F8X0tNV79a3r4cONovRIcR3RGQXKjihnRlTqm0dqRaohKKmU3/urQJLaQPAXvaCvNSMEZG6U/ZDWc
	SLlNxaHm0libODGBBLmNtJtgEailcD3OyFv+g7WJaFCgKbsM15tua24Q7S5lPvyC1iXB98yejL/xk
	Pblu6M6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgWK-00000008XN0-2OoG;
	Mon, 09 Dec 2024 16:22:04 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgWH-00000008XLZ-3Rzw
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 16:22:03 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733761319;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TNu30NMcXpHXQeKZCe45rgGouT76yWzLuEVZhUqrCBo=;
	b=tea2egOuca8a6xvcOAiUvV8A/iJyDV/OGrvxPVqHctBTofq6XbX9haevYAls6D4Vsz9xse
	C33EeQCckkYu+Iex1tmslZDnxgU3aDRxv7EaFvO2GPkv2iYywvIatrdU9gjUnjl4CK2e3M
	lnjCO7Tr67t2npurOlYuvzrDARI2OQ1/blU9qGwlNnPipXtnWy1n1lankdY5JY4gpczby7
	6+F3q5majfHjZvvyOFmDZIeoslNYSFtdumi9ZWkBDvGHLhzHfWy3FJjaZ/d5ke3hJ+trHY
	TojDmmVd8y7oCfQ6/2iVFPOTIz4b9pxtN5gFkb+cbp5Gh6z/UJQQBWQOFm3Nyw==
Date: Mon, 09 Dec 2024 17:21:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: convert blue LED to "pwd-leds" for
 Radxa ROCK 5A/5C
In-Reply-To: <20241209134158.4811-1-naoki@radxa.com>
References: <20241209134158.4811-1-naoki@radxa.com>
Message-ID: <aa66361152338edcf6bc2709f5120684@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_082202_166427_CD6492B5 
X-CRM114-Status: GOOD (  15.23  )
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

Hello Fukaumi,

On 2024-12-09 14:41, FUKAUMI Naoki wrote:
> convert blue(heartbeat) LED from "gpio-leds" to "pwm-leds". user can
> change brightness.

Please, start all sentences with uppercase letters, because when
there are periods (i.e. the '.' characters), there should also be
matching starting uppercase letters.  As we know, that basically
defines the primary syntax of a sentence in English.

I'm sorry if I'm stating the obvious, but this patch description
simply doesn't read well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

I haven't checked the entire patch in detail, but as the blue LED
(a.k.a. the IO_LED) on the ROCK 5A and 5C is powered by a SoC pin
capable of generating PWM output, according to the board schematics
that I checked, making it possible to adjust the LED brightness
makes sense to me, and describes the hardware a bit better.

Thus, please feel free to include my:

Acked-by: Dragan Simic <dsimic@manjaro.org>

... and please send a v2 with the patch description improved as
already suggested above.  That suggestion also applies to pretty
much all other patches that you sent recently.

> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
>  1 file changed, 22 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index d0b9513d56a7..d72314d917da 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&led_pins>;
> +		pinctrl-0 = <&led_pin>;
> 
>  		led-0 {
>  			color = <LED_COLOR_ID_GREEN>;
> @@ -54,14 +54,6 @@ led-0 {
>  			function = LED_FUNCTION_POWER;
>  			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
>  		};
> -
> -		led-1 {
> -			color = <LED_COLOR_ID_BLUE>;
> -			default-state = "on";
> -			function = LED_FUNCTION_STATUS;
> -			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "heartbeat";
> -		};
>  	};
> 
>  	fan: pwm-fan {
> @@ -72,6 +64,19 @@ fan: pwm-fan {
>  		pwms = <&pwm3 0 60000 0>;
>  	};
> 
> +	pwm-leds {
> +		compatible = "pwm-leds";
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			linux,default-trigger = "heartbeat";
> +			pwms = <&pwm11 0 1000000 0>;
> +			max-brightness = <255>;
> +		};
> +	};
> +
>  	vbus_typec: regulator-vbus-typec {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vbus_typec";
> @@ -422,9 +427,8 @@ &pcie2x1l2 {
> 
>  &pinctrl {
>  	leds {
> -		led_pins: led-pins {
> -			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
> -					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		led_pin: led-pin {
> +			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> 
> @@ -467,6 +471,12 @@ &pwm3 {
>  	status = "okay";
>  };
> 
> +&pwm11 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm11m3_pins>;
> +	status = "okay";
> +};
> +
>  &saradc {
>  	vref-supply = <&vcca_1v8_s0>;
>  	status = "okay";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
