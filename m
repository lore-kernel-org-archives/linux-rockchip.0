Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B247FE77182
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 07:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otuk1dHiNAOmH1Ek8ce1UoS2W7fk2zKjz/GZiedhqRw=; b=LuSO+QuRo9mWp4
	YBn0Iq68zVEiOInCVnVQv6tKTwZLFw+eqI2fKaGMcp7+a1KBwKd/n5zV5QAYdcKLbhqoo4yJVkXRu
	oXeFYzJ5eEjdbu98+fO9p5v9fUaezDOAkGOKFP2HEe2US8tV+wurFGubJ9IzWs3j7WYR2rkHgS7qe
	3vGYDNTjSRbYXQ+1S5uWFkXEKNSRADlF26dvdqxhWMUWxFdJjF/9+rO86U77oNjTcVZmbUoKZ0mVb
	ru15Hfp7b1ETf6ueCCclVX7vni5GjugjhKxrXCST7wBMJowlXCzOOE18pVnAgMyggsSnPkPSgrVMn
	nOtKqTski3KEFa537ZBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLHIY-0000000E4o9-2KUK;
	Wed, 11 Dec 2024 07:38:18 +0000
Received: from mail.thorsis.com ([217.92.40.78])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLHHo-0000000E4eU-0sjQ
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 07:37:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B69011480185;
	Wed, 11 Dec 2024 08:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thorsis.com; s=dkim;
	t=1733902642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JzEjIb+euENLOHwyb6X4snepElctm6Kijf58Y6wPvCc=;
	b=Qyosz5DPV86SlxwlUVgxHLPW/CVsMqwZin4slvzIWyyYiGin0KOaxoDE1ycLePOYwyXjYS
	ew6W/ypqAaTg5ZZ73NMwg9UeyiMEByYRNUj91oVdg2sozO/IXPxD6TeC38hZ+69BKsbIPO
	VOlA41qvwaZYXWrfUtJKwsoUUTe5KoLH1tq3xm9qj+meGXWlN1QMsNdLP0zEaQHmdCUqMh
	EkyASZ3HI0y28f9PNCft8sm1ZNLVxI8jtgI2UybcJ1itd7x4l8TfQkdQuXQS5PyvzGFF0i
	HO0QtSu7Gh375hO+3c5EBVagnSbvnPLedjb+YTPjfCTopfDSNkUWIQj3Dykrpg==
Date: Wed, 11 Dec 2024 08:36:49 +0100
From: Alexander Dahl <ada@thorsis.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dsimic@manjaro.org,
	sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Convert blue LED to "pwd-leds"
 for Radxa ROCK 5A/5C
Message-ID: <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
Mail-Followup-To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	dsimic@manjaro.org, sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211063222.57904-1-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241211063222.57904-1-naoki@radxa.com>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_233732_706123_D77D5D25 
X-CRM114-Status: GOOD (  18.59  )
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

Hello,

there's still a typo in the subject.  It should probably also read
"pwm", right?

Greets
Alex

Am Wed, Dec 11, 2024 at 06:32:22AM +0000 schrieb FUKAUMI Naoki:
> The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
> also has a PWM function. Using PWM, the user can change the brightness
> of the LED.
> 
> Convert blue LED from "gpio-leds" to "pwm-leds" and enable related PWM.
> 
> Acked-by: Dragan Simic <dsimic@manjaro.org>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> this patch depends on [1] which depends on [2].
> 
> [1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
> [2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
> ---
> Changes in v2:
> - Reword commit message
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
>  1 file changed, 22 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
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
> -- 
> 2.43.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
