From: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 28 Feb 2020 15:57:10 +0100
Message-ID: <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
References: <20200227180630.166982-1-t.schramm@manjaro.org>
 <20200227180630.166982-3-t.schramm@manjaro.org> <12370413.gKdrHkWbHd@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <12370413.gKdrHkWbHd@diego>
Content-Language: en-US-large
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>, Matthias Kaehlcke <mka@chromium.org>, Nick Xie <nick@khadas.com>, Kever Yang <kever.yang@rock-chips.com>, Vivek Unune <npcomplete13@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, anarsoul@gmail.com, enric.balletbo@collabora.com
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

thanks for the review. I'll implement the changes and send a v2.

>> +		compatible = "gpio-leds";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pwrled_gpio &slpled_gpio>;
>> +
>> +		green-led {
>> +			color = <LED_COLOR_ID_GREEN>;
>> +			default-state = "off";
>> +			function = LED_FUNCTION_POWER;
>> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
>> +			label = "green:disk-activity";
>> +			linux,default-trigger = "mmc2";
> hmm, LED_FUNCTION_POWER but trigger for mmc2 ?
> So if there is no activity on the LED it looks to be off?

I see why this is looking weird. It does not make a whole lot of sense
at the moment and I'll change that for v2. 

However I have a patch in the making that adds "-inverted" variants for
all triggers so the power LED can be turned of briefly to indicate mmc
activity.

Not sure wether people will like it or not but I'll try it as a RFC.

>> +	 * of wakeup sources without disabling the whole key
> Also can you explain the problem a bit? If there is a deficit in the input
> subsystem regarding wakeup events, dt is normally not the place to work
> around things [we're supposed to be OS independent]

The issue is that some users wanted to be able to control the wakeup
functionality of the keys separately via sysfs. That does not seem to be
possible when combining both keys into one gpio-keys node. A more
detailed explanation of the issue can be found at [1].

>> +&i2c0 {
>> +	clock-frequency = <400000>;
>> +	i2c-scl-rising-time-ns = <168>;
>> +	i2c-scl-falling-time-ns = <4>;
>> +	status = "okay";
>> +
>> +	rk808: pmic@1b {
>> +		compatible = "rockchip,rk808";
>> +		reg = <0x1b>;
>> +		#clock-cells = <1>;
>> +		clock-output-names = "xin32k", "rk808-clkout2";
>> +		interrupt-parent = <&gpio3>;
>> +		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_int_l_gpio>;
>> +		rockchip,system-power-controller;
>> +		wakeup-source;
>> +
>> +		vddio-supply = <&vcc_3v0>;
> where does this come from? Aka it's not specified in the dt-binding
> (though the example falsely uses it) and also not referenced in the driver.

This does likely come from the BSP dts. Seems I missed it while checking
bindings.


Thanks again for the review,

Tobias


[1] https://gitlab.manjaro.org/tsys/linux-pinebook-pro/issues/5
