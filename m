Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87327E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 07:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hzmdRuGiwdUnaYWdyemEO6WeDsT1rqLwO5m7ZrOdTw4=; b=de7F3t7DTtT0Fkg7frHRl2bte7
	NF/Sq5NsUM1RbPR0KHPRYSBQHcGO0wafGUDZpLxYEE3+QQa6Nvk6zVq0xLtfWGix2TUKNBSQWyX9a
	vvIzgYFVbzB1Y9jW9A1t+j8zC0f0mqf7qY/CWSFMlCeBRUzDtnuyO0/0KSrnNbXqt0MGt1ZdJdHA5
	8AM7Kyu4ELzEEFCg7OJyu6slUFir5u0pZ0GjA+K0yZcx0P2ysfTHrgz7n69pgQC7Iu8U/7uhUFNSz
	JlJ/iDygo0zcDYsXubDW/Vv963o4tQfgM6lv4wTqSaNdZh1kZpYFooOzljGRYsVLaEh+Wp+KVfuSE
	2At0XinQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLHPC-0000000E5rX-2u49;
	Wed, 11 Dec 2024 07:45:10 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLHP9-0000000E5qQ-13qy
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 07:45:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733903104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vBj2qtH/NYARhotlO94z1olIPhWEieBQqvU3HWc4T9s=;
	b=Xo2Ud858UlSi2vZaLVC44yeLQ7oVE7PQffx7eK0bxcBkUFUuQZx3Gtm0QfiYpX14zTlZ1V
	OMJF7Wvckc1AQGcWvOexi4NLXfTC2ye3IANDY1zulyqPV0EraWmhJRyQ5AVz7OZBrB7c04
	epzs8WP5l7/TpckOSmFLrBiITJ0wtOZ+PEMpnpRPGevQgNZWI+NQkSaH6Jp5QkMTLhnCio
	h4NEuo0yzHZu5DSUiqMDJhhCy0hQx31XCDt/wl703G1PTEQLa1v73B9j3QcbEfSTTWnuqu
	Gid0Ax1zlb7podMW3XYgXatZ3jTgxEQ+mur/6JIyPFlozzGQtbHJcPwApLQk8w==
Date: Wed, 11 Dec 2024 08:45:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Convert blue LED to "pwd-leds"
 for Radxa ROCK 5A/5C
In-Reply-To: <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
References: <20241211063222.57904-1-naoki@radxa.com>
 <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
Message-ID: <b65002617b40c434821f5fac41d8e1b9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_234507_608888_EF9AB3AA 
X-CRM114-Status: GOOD (  13.47  )
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

Hello Alexander and Fukaumi,

On 2024-12-11 08:36, Alexander Dahl wrote:
> there's still a typo in the subject.  It should probably also read
> "pwm", right?

Indeed.  Here's how the patch summary could be worded instead:

   arm64: dts: rockchip: Use PWM to drive blue LED on ROCK 5A/5C

Simplified and less wordy, but still descriptive enough. :)

> Am Wed, Dec 11, 2024 at 06:32:22AM +0000 schrieb FUKAUMI Naoki:
>> The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
>> also has a PWM function. Using PWM, the user can change the brightness
>> of the LED.
>> 
>> Convert blue LED from "gpio-leds" to "pwm-leds" and enable related 
>> PWM.
>> 
>> Acked-by: Dragan Simic <dsimic@manjaro.org>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> this patch depends on [1] which depends on [2].
>> 
>> [1] 
>> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
>> [2] 
>> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
>> ---
>> Changes in v2:
>> - Reword commit message
>> ---
>>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 
>> ++++++++++++-------
>>  1 file changed, 22 insertions(+), 12 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> index d0b9513d56a7..d72314d917da 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> @@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
>>  	leds {
>>  		compatible = "gpio-leds";
>>  		pinctrl-names = "default";
>> -		pinctrl-0 = <&led_pins>;
>> +		pinctrl-0 = <&led_pin>;
>> 
>>  		led-0 {
>>  			color = <LED_COLOR_ID_GREEN>;
>> @@ -54,14 +54,6 @@ led-0 {
>>  			function = LED_FUNCTION_POWER;
>>  			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
>>  		};
>> -
>> -		led-1 {
>> -			color = <LED_COLOR_ID_BLUE>;
>> -			default-state = "on";
>> -			function = LED_FUNCTION_STATUS;
>> -			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>> -			linux,default-trigger = "heartbeat";
>> -		};
>>  	};
>> 
>>  	fan: pwm-fan {
>> @@ -72,6 +64,19 @@ fan: pwm-fan {
>>  		pwms = <&pwm3 0 60000 0>;
>>  	};
>> 
>> +	pwm-leds {
>> +		compatible = "pwm-leds";
>> +
>> +		led-1 {
>> +			color = <LED_COLOR_ID_BLUE>;
>> +			default-state = "on";
>> +			function = LED_FUNCTION_STATUS;
>> +			linux,default-trigger = "heartbeat";
>> +			pwms = <&pwm11 0 1000000 0>;
>> +			max-brightness = <255>;
>> +		};
>> +	};
>> +
>>  	vbus_typec: regulator-vbus-typec {
>>  		compatible = "regulator-fixed";
>>  		regulator-name = "vbus_typec";
>> @@ -422,9 +427,8 @@ &pcie2x1l2 {
>> 
>>  &pinctrl {
>>  	leds {
>> -		led_pins: led-pins {
>> -			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
>> -					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		led_pin: led-pin {
>> +			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>>  		};
>>  	};
>> 
>> @@ -467,6 +471,12 @@ &pwm3 {
>>  	status = "okay";
>>  };
>> 
>> +&pwm11 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pwm11m3_pins>;
>> +	status = "okay";
>> +};
>> +
>>  &saradc {
>>  	vref-supply = <&vcca_1v8_s0>;
>>  	status = "okay";
>> --
>> 2.43.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
