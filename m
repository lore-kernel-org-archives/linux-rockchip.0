Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64EC6C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtUOansG3b2fg0u6kneOZDNXOGTw1K4gtzcE3kkHfDU=; b=vPFhfsnGKSn4kr
	PJmzpIaV/vHwuB/1Uxkhn7ll687ZSIwYFxioi1ErpXe85dsoGqBsaVE12Omv8k+QiBsTcBaMeirDt
	h0WaMQ/1GrF94kSXB2AmCW2D7D6ek/PWSujxyCU2YwHJbmcsMfPKnZzpTyVNxAxsAGKXG/jYX7r+u
	EU23u8B6vupMlc6dD9IQmLwnyrD7vffLPJNgGqB567qNY8t1pmYUJrIZsldtCYGK2HkjtLXgxMXQc
	Fpeerry5EUiouxTU3WmKcvxNCD3+gD+rMAT4kHjx1rGEz9ruu9p0P6QDnRTpJ+Eb+uhmqF12zQ4t8
	kyQ0Ts1KbGUjZJ+hDp2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC0XM-00000001XKr-0JSk;
	Tue, 28 May 2024 17:23:00 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC0XF-00000001XJw-47hA;
	Tue, 28 May 2024 17:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1716916960; x=1717521760; i=seb-dev@web.de;
	bh=H39Oy8PqGix0GkMcZzbzaWEMtle5ChEKv5/1kTlTt5M=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=c91kW2zUD7py68fdz6YiHgjMA/eJ3C9Zt5Keb/bq2iDskIkpc8yMyuBc+FnwRvZF
	 NQm68Vdh7wHHup9CzSyxaoJK+WlRcKdbmAcJOXHw2bLNRRviu/CAHm1xWjZ4UEnXh
	 kInSoXbHpfr0pY4+yDQ1/u8/UJrTcN/1OuD67f+fLz0o7zZxIcYKR02dbAB2HlBEg
	 W58f1krmTO8p2m4v0PzABz2Q+cZs79yIbSpy6Q7EEVVBFxDcJTME4U4wlwVmoeXPA
	 5CpN/idE/w701tKIAb+33JMi9pfz8VyBYKtk8qHUFu2rygHHJQ/GK3r6wqjSb3dgy
	 QqRHvAKTZhKx48EMGA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.24] ([84.155.184.248]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N2SL5-1sdTyB0AeN-013qiu; Tue, 28
 May 2024 19:22:40 +0200
Message-ID: <29e5cf31-3d9a-469a-befa-41a5aa2fe8b3@web.de>
Date: Tue, 28 May 2024 19:22:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add CM3588 NAS board
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240526214340.8459-1-seb-dev@web.de>
 <20240526214820.9381-1-seb-dev@web.de>
 <9f40c748-691b-4a03-bbd6-54870f46bf05@kwiboo.se>
From: Sebastian Kropatsch <seb-dev@web.de>
In-Reply-To: <9f40c748-691b-4a03-bbd6-54870f46bf05@kwiboo.se>
X-Provags-ID: V03:K1:yzOVQfoDJaj/snsUeOSGA3E/lU52NRGDXiVyXmqhF5LhfjdxXxc
 aM01KKLCHwmv+7hHRBbNTo1pcH8GYNG9x3X0HzBHSYtst/SPu+c+V8cTV85NEha0NX0DBje
 7EMnVSDw8ID8CDWmsceGUsNcNPsBAj/i/TFuw6oA9ijVfbhphDWqybJ6p+JxMZPqR9BTda8
 YFapBw1Aon2FiymNe1VAw==
UI-OutboundReport: notjunk:1;M01:P0:wB0UJ0oj7ss=;BjJH9fQCCWMStFFy/lytb9cNeiY
 mJJMGQFCiIeqYIUOOYvs75IY91eG+M1DstVXjFaY1IjHO0T/hMV0UqHvWCJeudNS1Ew4U49oS
 gxwNjqJ8GMJ1AFJaGMXZFMgzBuy05m0GlmN1b4CQOwq0ueDUGyhIPk9xiDAfjFod6UaARjeXM
 F64UzS6rhMsjabl0UXc1oVAnjppK+dKwt/3G97MSRX5CTykwd6IlNgOkuZtND0Gh/1QMUulT8
 4dww38v+VcvETgsKP+ImnREZfEZC1zJuAeDO5wuEDGaut/l6urViiSkkFVgWzwg2B8vQv/vey
 SGngt/r+lPgChqlS90NEQdQfMYdbvKOj7bN2J0J1YVm55sOR3fIp/5oh7OTy3omYMt1JWoiOL
 yzOgzVhMSwHVXNlIIuQM7WEWYKP0nbF37zCN3YnhfVb7mjjV/aIEaiqJqgBEGZ60qiSptKB6X
 y+4/0ev3tkXIEy+2RmR9PFXs/Kfjb5D5b2rg3hJcMPMBKDJ0sDzmPaStu9yjXfHamjCmk0RYJ
 EAxRXIEzEsxqrcO+paUu78MICXGb0mCbscYTvqs3ybpSCaUbPheX/C6kUpfDWvZI2eunOUl3q
 lOWTcwmYiSekJYa5/dU0uevyElqFd8s1s6TyNdaCk2ACEQyFRdklGR1/l2Qes+yaYBbWXCQd5
 adwxqhUeaWVD5NOeRDNercdCHulIXueASP577Q8KVoZwHmQBXt44DPGf4ezshizyzfvNIGfvP
 znN+EGJdUGeAemPEkm/Nfamqa4oKLC58px4d8OYkEXsKcphctOPLv0zEfOyNt12OLuQ/6HL4N
 uAXh22GoX7ev68fNs9mNBBgJ3EFtMCzLvzcp7i4qIiUNE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_102254_796324_2A34CDB0 
X-CRM114-Status: GOOD (  25.66  )
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

Hi Jonas,

thanks for your feedback!
(Sorry if you got this message twice, last one was held up)

Am 27.05.2024 um 21:02 schrieb Jonas Karlman:
> Hi Sebastian,
>
> On 2024-05-26 23:48, Sebastian Kropatsch wrote:
>> The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based on
>> the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.
>>
>> Hardware features:
>>      - Rockchip RK3588 SoC
>>      - 4GB/8GB/16GB LPDDR4x RAM
>>      - 64GB eMMC
>>      - MicroSD card slot
>>      - 1x RTL8125B 2.5G Ethernet
>>      - 4x M.2 M-Key with PCIe 3.0 x1 (via bifurcation) for NVMe SSDs
>>      - 2x USB 3.0 (USB 3.1 Gen1) Type-A, 1x USB 2.0 Type-A
>>      - 1x USB 3.0 Type-C with DP AltMode support
>>      - 2x HDMI 2.1 out, 1x HDMI in
>>      - MIPI-CSI Connector, MIPI-DSI Connector
>>      - 40-pin GPIO header
>>      - 4 buttons: power, reset, recovery, MASK, user button
>>      - 3.5mm Headphone out, 2.0mm PH-2A Mic in
>>      - 5V Fan connector, PWM buzzer, IR receiver, RTC battery connector
>>
>> PCIe bifurcation is used to handle all four M.2 sockets at PCIe 3.0 x1
>> speed. Data lane mapping in the DT is done like described in commit
>> f8020dfb311d ("phy: rockchip-snps-pcie3: fix bifurcation on rk3588").
>>
>> This device tree includes support for eMMC, SD card, ethernet, all USB2
>> and USB3 ports, all four M.2 slots, GPU, RTC, buzzer, UART debugging as
>> well as the buttons and LEDs.
>> The GPIOs are labeled according to the schematics.
>>
>> Signed-off-by: Sebastian Kropatsch <seb-dev@web.de>
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>>   .../boot/dts/rockchip/rk3588-cm3588-nas.dts   | 1269 +++++++++++++++++
>>   2 files changed, 1270 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
>
> Because the CM3588 is a SoM and the NAS is a carrier board this should
> probably be split in two, cm3588.dtsi and cm3588-nas.dts.
>

I thought about this before submitting. My reason for not splitting this
into two files for now was that as far as I know this board is the only
combination for the CM, maybe no other daughter board will ever get
released. If another carrier board compatible with the CM3588 is
released, the splitting could be done at that point in time.

But since both you and Heiko prefer to have it split, I will figure out
a way how and which parts will have to split up to the CM so we can
have two files in the end. I guess most things will go into the NAS dts
anyway.
I'll have a look how other Rockchip compute modules with split device
trees were done in the past and orient myself by that.

>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index c544ff507d20..f1ff58bdf2cd 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -114,6 +114,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-cm3588-nas.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts b/arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
>> new file mode 100644
>> index 000000000000..6c45b376d001
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
>> @@ -0,0 +1,1269 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2023 FriendlyElec Computer Tech. Co., Ltd.
>> + * Copyright (c) 2023 Thomas McKahan
>> + * Copyright (c) 2024 Sebastian Kropatsch
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>> +#include <dt-bindings/usb/pd.h>
>> +#include "rk3588.dtsi"
>> +
>> +/ {
>> +	model = "FriendlyElec CM3588 NAS";
>> +	compatible = "friendlyarm,cm3588-nas", "rockchip,rk3588";
>
> Maybe this should be something like:
>
>    "friendlyarm,cm3588-nas", "friendlyarm,cm3588", "rockchip,rk3588";
>
>> +
>> +	aliases {
>> +		mmc0 = &sdhci;
>> +		mmc1 = &sdmmc;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial2:1500000n8";
>> +	};
>> +
>> +	adc_keys: adc-keys {
>> +		compatible = "adc-keys";
>> +		io-channels = <&saradc 1>;
>> +		io-channel-names = "buttons";
>> +		keyup-threshold-microvolt = <1800000>;
>> +		poll-interval = <100>;
>> +
>> +		button-vol-up {
>> +			label = "Volume Up";
>> +			linux,code = <KEY_VOLUMEUP>;
>> +			press-threshold-microvolt = <17000>;
>> +		};
>> +	};
>> +
>> +	analog-sound {
>> +		compatible = "simple-audio-card";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&headphone_detect>;
>> +
>> +		simple-audio-card,name = "realtek,rt5616-codec";
>> +		simple-audio-card,format = "i2s";
>> +		simple-audio-card,mclk-fs = <256>;
>> +
>> +		simple-audio-card,hp-det-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
>> +
>> +		simple-audio-card,routing =
>> +			"Headphones", "HPOL",
>> +			"Headphones", "HPOR",
>> +			"MIC1", "Microphone Jack",
>> +			"Microphone Jack", "micbias1";
>> +		simple-audio-card,widgets =
>> +			"Headphone", "Headphones",
>> +			"Microphone", "Microphone Jack";
>> +
>> +		simple-audio-card,cpu {
>> +			sound-dai = <&i2s0_8ch>;
>> +		};
>> +
>> +		simple-audio-card,codec {
>> +			sound-dai = <&rt5616>;
>> +		};
>> +	};
>> +
>> +	fan: pwm-fan {
>> +		compatible = "pwm-fan";
>> +		#cooling-cells = <2>;
>> +		cooling-levels = <0 50 80 120 160 220>;
>> +		fan-supply = <&vcc_5v0_sys>;
>> +		pwms = <&pwm1 0 50000 0>;
>> +	};
>> +
>> +	gpio_keys: gpio-keys {
>> +		compatible = "gpio-keys";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&key1_pin>;
>> +
>> +		button-user {
>> +			debounce-interval = <50>;
>> +			gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_LOW>;
>> +			label = "User Button";
>> +			linux,code = <BTN_1>;
>> +			wakeup-source;
>> +		};
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		led_sys: led-0 {
>> +			gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>;
>> +			label = "system-led";
>> +			linux,default-trigger = "heartbeat";
>> +			pinctrl-names = "default";
>> +			pinctrl-0 = <&led_sys_pin>;
>> +		};
>> +
>> +		led_usr: led-1 {
>> +			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
>> +			label = "user-led";
>> +			pinctrl-names = "default";
>> +			pinctrl-0 = <&led_usr_pin>;
>> +		};
>> +	};
>> +
>> +	vcc_12v_dcin: vcc-12v-dcin-regulator {
>
> Fixed regulators should use the recommended nodename, i.e. a regulator-
> prefix.
>

Almost every Rockchip device tree that I checked is using a *-regulator
naming scheme instead of regulator-* , so I tried to blend it in.
But thanks for making me aware of the preferred naming scheme.

For anyone wondering, a very recent commit from 29/04/2024 b6d4b3500d57
("regulator: dt-bindings: fixed-regulator: Add a preferred node name"
[1]) defined "regulator-[0-9]v[0-9]" as the preferred node name for
fixed regulators.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?id=b6d4b3500d57370f5b3abf0701c9166b384db976

>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc_12v_dcin";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <12000000>;
>> +		regulator-max-microvolt = <12000000>;
>> +	};
>> +
>> +	/* vcc_5v0_sys powers the peripherals */
>> +	vcc_5v0_sys: vcc-5v0-sys-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc_5v0_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc_12v_dcin>;
>> +	};
>> +
>> +	vcc_5v0_host_20: vcc-5v0-host-20 {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc_5v0_host20_en>;
>> +		regulator-name = "vcc_5v0_host_20";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc_5v0_sys>;
>> +	};
>> +
>> +	vcc_5v0_host_30: vcc-5v0-host-30 {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
>
> Use the recommended gpios prop.
>

Also here, thanks for making me aware that 'gpios' is preferred
over 'gpio'. Can you point me to where the difference between these
two is documented and that 'gpios' is recommended?
I only found the information in the message of commit 12df2c182ccb
("regulator: dt-bindings: fixed-regulator: allow gpios property" [2]).
Dt-bindings 'fixed-regulator.yaml' doesn't have much info on this.

[2]
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?id=12df2c182ccb850988d2680a422211a812fb5cb2

>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc_5v0_host30_en>;
>> +		regulator-name = "vcc_5v0_host_30";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc_5v0_sys>;
>> +	};
>> +
>> +	vcc_3v3_host_32: vcc-3v3-host-32-regulator {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc_3v3_host32_en>;
>> +		regulator-name = "vcc_3v3_host_32";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&vcc_5v0_sys>;
>> +	};
>> +
>> +	vbus_5v0_typec: vbus-5v0-typec-regulator {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
>
> Same, use the recommended gpios prop.
>
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&typec_5v_pwr_en>;
>> +		regulator-name = "vbus_5v0_typec";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc_5v0_sys>;
>> +	};
>> +
>> +	/* vcc_4v0_sys powers the RK806, RK860's */
>> +	vcc_4v0_sys: vcc-4v0-sys-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc_4v0_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <4000000>;
>> +		regulator-max-microvolt = <4000000>;
>> +		vin-supply = <&vcc_12v_dcin>;
>> +	};
>> +
>> +	vcc_3v3_pcie20: vcc-3v3-pcie20-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc_3v3_pcie20";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&vcc_3v3_s3>;
>> +	};
>> +
>> +	vcc_3v3_pcie30: vcc-3v3-pcie30-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc_3v3_pcie30";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&vcc_5v0_sys>;
>> +	};
>> +
>> +	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
>> +		compatible = "regulator-fixed";
>> +		gpio = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&sd_s0_pwr>;
>> +		regulator-boot-on;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-name = "vcc_3v3_sd_s0";
>> +		vin-supply = <&vcc_3v3_s3>;
>> +	};
>> +
>> +	vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc-1v1-nldo-s3";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <1100000>;
>> +		regulator-max-microvolt = <1100000>;
>> +		vin-supply = <&vcc_4v0_sys>;
>> +	};
>> +};
>> +
>> +&combphy0_ps {
>> +	status = "okay";
>> +};
>> +
>> +&combphy1_ps {
>> +	status = "okay";
>> +};
>> +
>> +&combphy2_psu {
>> +	status = "okay";
>> +};
>> +
>> +&cpu_l0 {
>> +	cpu-supply = <&vdd_cpu_lit_s0>;
>> +};
>> +
>> +&cpu_l1 {
>> +	cpu-supply = <&vdd_cpu_lit_s0>;
>> +};
>> +
>> +&cpu_l2 {
>> +	cpu-supply = <&vdd_cpu_lit_s0>;
>> +};
>> +
>> +&cpu_l3 {
>> +	cpu-supply = <&vdd_cpu_lit_s0>;
>> +};
>> +
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b2 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&cpu_b3 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +/* GPIO names are in the format "Human-readable-name [SIGNAL_LABEL]" */
>> +/* Signal labels match the official CM3588 NAS schematic revision 2309 */
>> +&gpio0 {
>> +	gpio-line-names =
>> +		/* GPIO0 A0-A7 */
>> +		"", "", "", "",
>> +		"MicroSD detect [SDMMC_DET_L]", "", "", "",
>> +		/* GPIO0 B0-B7 */
>> +		"", "", "", "",
>> +		"", "", "", "",
>> +		/* GPIO0 C0-C7 */
>> +		"", "", "", "",
>> +		"Pin 10 [UART0_RX_M0]", "Pin 08 [UART0_TX_M0/PWM4_M0]", "Pin 32 [PWM5_M1]", "",
>> +		/* GPIO0 D0-D7 */
>> +		"", "", "", "USB3 Type-C [CC_INT_L]",
>> +		"IR sensor [PWM3_IR_M0]", "User Button", "", "";
>> +};
>> +
>> +&gpio1 {
>> +	gpio-line-names =
>> +		/* GPIO1 A0-A7 */
>> +		"Pin 27 [UART6_RX_M1]", "Pin 28 [UART6_TX_M1]", "", "",
>> +		"USB2 Type-A [USB2_PWREN]", "", "", "Pin 15",
>> +		/* GPIO1 B0-B7 */
>> +		"Pin 26", "Pin 21 [SPI0_MISO_M2]", "Pin 19 [SPI0_MOSI_M2/UART4_RX_M2]", "Pin 23 [SPI0_CLK_M2/UART4_TX_M2]",
>> +		"Pin 24 [SPI0_CS0_M2/UART7_RX_M2]", "Pin 22 [SPI0_CS1_M0/UART7_TX_M2]", "", "CSI-Pin 14 [MIPI_CAM2_CLKOUT]",
>> +		/* GPIO1 C0-C7 */
>> +		"", "", "", "",
>> +		"Headphone detect [HP_DET_L]", "", "", "",
>> +		/* GPIO1 D0-D7 */
>> +		"", "", "[TYPEC5V_PW REN_H]", "5V Fan [PWM1_M1]",
>> +		"", "HDMI-in detect[HDMIIRX_DET_L]", "Pin 05 [I2C8_SCL_M2]", "Pin 03 [I2C8_SDA_M2]";
>> +};
>> +
>> +&gpio2 {
>> +	gpio-line-names =
>> +		/* GPIO2 A0-A7 */
>> +		"", "", "", "",
>> +		"", "", "SPI NOR Flash [FSPI_D0_M1]", "SPI NOR Flash [FSPI_D1_M1]",
>> +		/* GPIO2 B0-B7 */
>> +		"SPI NOR Flash [FSPI_D2_M1]", "SPI NOR Flash [FSPI_D3_M1]", "", "SPI NOR Flash [FSPI_CLK_M1]",
>> +		"SPI NOR Flash [FSPI_CSN0_M1]", "", "", "",
>> +		/* GPIO2 C0-C7 */
>> +		"", "CSI-Pin 11 [MIPI_CAM2_RESET_L]", "CSI-Pin 12 [MIPI_CAM2_PDN_L]", "",
>> +		"", "", "", "",
>> +		/* GPIO2 D0-D7 */
>> +		"", "", "", "",
>> +		"", "", "", "";
>> +};
>> +
>> +&gpio3 {
>> +	gpio-line-names =
>> +		/* GPIO3 A0-A7 */
>> +		"Pin 35 [SPI4_MISO_M1/PW M10_M0]", "Pin 38 [SPI4_MOSI_M1]", "Pin 40 [SPI4_CLK_M1/UART8_TX_M1]", "Pin 36 [SPI4_CS0_M1/UART8_RX_M1]",
>> +		"Pin 37 [SPI4_CS1_M1]", "USB3 Type-A Port 2 [USB3_2_PWREN]", "DSI-Pin 12 [LCD_RST]", "Buzzer [PW M8_M0]",
>> +		/* GPIO3 B0-B7 */
>> +		"Pin 33 [PW M9_M0]", "DSI-Pin 10 [PW M2_M1/LCD_BL]", "Pin 07", "Pin 16",
>> +		"Pin 18", "Pin 29 [UART3_TX_M1/PW M12_M0]", "Pin 31 [UART3_RX_M1/PW M13_M0]", "Pin 12",
>> +		/* GPIO3 C0-C7 */
>> +		"DSI-Pin 08 [TP_INT_L]", "DSI-Pin 14 [TP_RST_L]", "Pin 11 [PWM14_M0]", "Pin 13 [PWM15_IR_M0]",
>> +		"", "", "", "DSI-Pin 06 [I2C5_SCL_M0_TP]",
>> +		/* GPIO3 D0-D7 */
>> +		"DSI-Pin 05 [I2C5_SDA_M0_TP]", "", "", "",
>> +		"", "", "", "";
>> +};
>> +
>> +&gpio4 {
>> +	gpio-line-names =
>> +		/* GPIO4 A0-A7 */
>> +		"", "", "M.2 M-Key Socket 4 [M2_D_PERST_L]", "",
>> +		"", "", "", "",
>> +		/* GPIO4 B0-B7 */
>> +		"USB3 Type-A Port 1 [USB3_TYPEC1_PWREN]", "", "", "M.2 M-Key Socket 3 [M2_C_PERST_L]",
>> +		"M.2 M-Key Socket 2 [M2_B_PERST_L]", "M.2 M-Key Socket 1 [M2_A_CLKREQ_L]", "M.2 M-Key Socket 1 [M2_A_PERST_L]", "",
>> +		/* GPIO4 C0-C7 */
>> +		"", "", "", "",
>> +		"", "", "", "",
>> +		/* GPIO4 D0-D7 */
>> +		"", "", "", "",
>> +		"", "", "", "";
>> +};
>> +
>> +&gpu {
>> +	mali-supply = <&vdd_gpu_s0>;
>> +	sram-supply = <&vdd_gpu_mem_s0>;
>> +	status = "okay";
>> +};
>> +
>> +&hdptxphy_hdmi0 {
>> +	status = "okay";
>
> HDMI support is not ready for RK3588 and no other board enable the HDMI
> PHY yet, maybe wait with this?
>

The PHY node is in rk3588s.dtsi already, so I thought it was okay to
include. But I can remove it for now until HDMI is fully supported.

>> +};
>> +
>> +&i2c0 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c0m2_xfer>;
>> +	status = "okay";
>> +
>> +	vdd_cpu_big0_s0: regulator@42 {
>> +		compatible = "rockchip,rk8602";
>> +		reg = <0x42>;
>> +		fcs,suspend-voltage-selector = <1>;
>> +		regulator-name = "vdd_cpu_big0_s0";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <550000>;
>> +		regulator-max-microvolt = <1050000>;
>> +		regulator-ramp-delay = <2300>;
>> +		vin-supply = <&vcc_4v0_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +
>> +	vdd_cpu_big1_s0: regulator@43 {
>> +		compatible = "rockchip,rk8603", "rockchip,rk8602";
>> +		reg = <0x43>;
>> +		fcs,suspend-voltage-selector = <1>;
>> +		regulator-name = "vdd_cpu_big1_s0";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <550000>;
>> +		regulator-max-microvolt = <1050000>;
>> +		regulator-ramp-delay = <2300>;
>> +		vin-supply = <&vcc_4v0_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +};
>> +
>> +&i2c2 {
>> +	status = "okay";
>> +
>> +	vdd_npu_s0: regulator@42 {
>> +		compatible = "rockchip,rk8602";
>> +		reg = <0x42>;
>> +		fcs,suspend-voltage-selector = <1>;
>> +		regulator-name = "vdd_npu_s0";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <550000>;
>> +		regulator-max-microvolt = <950000>;
>> +		regulator-ramp-delay = <2300>;
>> +		vin-supply = <&vcc_4v0_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +};
>> +
>> +&i2c4 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c4m3_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +/* Connected to MIPI-DSI0 */
>> +&i2c5 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c5m0_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +&i2c6 {
>> +	clock-frequency = <200000>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c6m0_xfer>;
>> +	status = "okay";
>> +
>> +	fusb302: typec-portc@22 {
>> +		compatible = "fcs,fusb302";
>> +		reg = <0x22>;
>> +		interrupt-parent = <&gpio0>;
>> +		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-0 = <&usbc0_int>;
>> +		pinctrl-names = "default";
>> +		vbus-supply = <&vbus_5v0_typec>;
>> +
>> +		usb_con: connector {
>> +			compatible = "usb-c-connector";
>> +			data-role = "dual";
>> +			label = "USB-C";
>> +			op-sink-microwatt = <1000000>;
>> +			power-role = "dual";
>> +			source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
>> +			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>> +			try-power-role = "sink";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {
>> +					reg = <0>;
>> +
>> +					usbc0_orien_sw: endpoint {
>> +						remote-endpoint = <&usbdp_phy0_orientation_switch>;
>> +					};
>> +				};
>> +
>> +				port@1 {
>> +					reg = <1>;
>> +
>> +					usbc0_role_sw: endpoint {
>> +						remote-endpoint = <&dwc3_0_role_switch>;
>> +					};
>> +				};
>> +
>> +				port@2 {
>> +					reg = <2>;
>> +
>> +					dp_altmode_mux: endpoint {
>> +						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
>> +					};
>> +				};
>> +			};
>> +		};
>> +	};
>> +
>> +	hym8563: rtc@51 {
>> +		compatible = "haoyu,hym8563";
>> +		reg = <0x51>;
>> +		#clock-cells = <0>;
>> +		clock-output-names = "hym8563";
>> +		interrupt-parent = <&gpio0>;
>> +		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&hym8563_int>;
>> +		wakeup-source;
>> +	};
>> +};
>> +
>> +/* Connected to MIPI-CSI1 */
>> +&i2c7 {
>> +	clock-frequency = <200000>;
>> +	status = "okay";
>> +
>> +	rt5616: audio-codec@1b {
>> +		compatible = "realtek,rt5616";
>> +		reg = <0x1b>;
>> +		#sound-dai-cells = <0>;
>> +	};
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&i2c8 {
>> +	pinctrl-0 = <&i2c8m2_xfer>;
>> +	status = "okay";
>> +};
>> +
>> +&i2s0_8ch {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2s0_lrck
>> +				&i2s0_mclk
>> +				&i2s0_sclk
>> +				&i2s0_sdi0
>> +				&i2s0_sdo0>;
>> +	status = "okay";
>> +};
>> +
>> +&i2s5_8ch {
>> +	status = "okay";
>> +};
>> +
>> +&i2s6_8ch {
>> +	status = "okay";
>> +};
>> +
>> +&i2s7_8ch {
>> +	status = "okay";
>> +};
>> +
>> +&pcie2x1l0 {
>> +	/* 2. M.2 slot, CON14: pcie30phy port0 lane1, @fe170000 */
>> +	max-link-speed = <3>;
>> +	num-lanes = <1>;
>> +	phys = <&pcie30phy>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie2_0_rst>;
>> +	reset-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
>> +	vpcie3v3-supply = <&vcc_3v3_pcie30>;
>> +	status = "okay";
>> +};
>> +
>> +&pcie2x1l1 {
>> +	/* 4. M.2 slot, CON16: pcie30phy port1 lane1, @fe180000 */
>> +	max-link-speed = <3>;
>> +	num-lanes = <1>;
>> +	phys = <&pcie30phy>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie2_1_rst>;
>> +	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +	vpcie3v3-supply = <&vcc_3v3_pcie30>;
>> +	status = "okay";
>> +};
>> +
>> +&pcie2x1l2 {
>> +	/* r8125 ethernet, @fe190000 */
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie2_2_rst>;
>> +	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
>> +	vpcie3v3-supply = <&vcc_3v3_pcie20>;
>> +	status = "okay";
>> +};
>> +
>> +&pcie30phy {
>> +	/*
>> +	* Data lane mapping <1 3 2 4> = x1x1 x1x1 (bifurcation of both ports)
>> +	* port 0 lane 0 - always mapped to controller 0 (4L)
>> +	* port 0 lane 1 - map to controller 2 (1L0)
>> +	* port 1 lane 0 - map to controller 1 (2L)
>> +	* port 1 lane 1 - map to controller 3 (1L1)
>> +	*/
>> +	data-lanes = <1 3 2 4>;
>> +	status = "okay";
>> +};
>> +
>> +&pcie3x4 {
>> +	/* 1. M.2 slot, CON13: pcie30phy port0 lane0, @fe150000 */
>> +	max-link-speed = <3>;
>> +	num-lanes = <1>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie3x4_rst>;
>> +	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>> +	vpcie3v3-supply = <&vcc_3v3_pcie30>;
>> +	status = "okay";
>> +};
>> +
>> +&pcie3x2 {
>> +	/* 3. M.2 slot, CON15: pcie30phy port1 lane0, @fe160000 */
>> +	max-link-speed = <3>;
>> +	num-lanes = <1>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie3x2_rst>;
>> +	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
>> +	vpcie3v3-supply = <&vcc_3v3_pcie30>;
>> +	status = "okay";
>> +};
>> +
>> +&pinctrl {
>> +	audio {
>> +		headphone_detect: headphone-detect {
>> +			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	gpio-key {
>> +		key1_pin: key1-pin {
>> +			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	gpio-leds {
>> +		led_sys_pin: led-sys-pin {
>> +			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		led_usr_pin: led-usr-pin {
>> +			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	hym8563 {
>> +		hym8563_int: hym8563-int {
>> +			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	pcie {
>> +		pcie2_0_rst: pcie2-0-rst {
>> +			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		pcie2_1_rst: pcie2-1-rst {
>> +			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		pcie2_2_rst: pcie2-2-rst {
>> +			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		pcie3x2_rst: pcie3x2-rst {
>> +			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		pcie3x4_rst: pcie3x4-rst {
>> +			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	sdmmc {
>> +		sd_s0_pwr: sd-s0-pwr {
>> +			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	usb {
>> +		vcc_5v0_host20_en: vcc-5v0-host20-en {
>> +			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		vcc_5v0_host30_en: vcc-5v0-host30-en {
>> +			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		vcc_3v3_host32_en: vcc-3v3-host32-en {
>> +			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	usb-typec {
>> +		usbc0_int: usbc0-int {
>> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +
>> +		typec_5v_pwr_en: typec-5v-pwr-en {
>> +			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +};
>> +
>> +/* Connected to 5V Fan */
>> +&pwm1 {
>> +	pinctrl-0 = <&pwm1m1_pins>;
>
> pinctrl-names is missing, should typically always be defined together
> with pinctrl-X props, same for multiple nodes.
>

Will do, see my reply to Heiko.

>> +	status = "okay";
>> +};
>> +
>> +/* Connected to MIPI-DSI0 */
>> +&pwm2 {
>> +	pinctrl-0 = <&pwm2m1_pins>;
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&pwm5 {
>> +	pinctrl-0 = <&pwm5m1_pins>;
>> +	status = "okay";
>> +};
>> +
>> +/* GPIO Connector */
>> +&pwm8 {
>> +	pinctrl-0 = <&pwm8m0_pins>;
>> +	status = "okay";
>> +};
>> +
>> +/* GPIO Connector */
>> +&pwm9 {
>> +	pinctrl-0 = <&pwm9m0_pins>;
>> +	status = "okay";
>> +};
>> +
>> +&saradc {
>> +	vref-supply = <&avcc_1v8_s0>;
>> +	status = "okay";
>> +};
>> +
>> +/* eMMC */
>> +&sdhci {
>> +	bus-width = <8>;
>> +	full-pwr-cycle-in-suspend;
>
> Is this really necessary?
>

This flag stems from vendor's device tree.
Dt-bindings doc says "Full power cycle of the card is supported."
for this property.
I am unsure how to properly test this though. But if this flag
is not needed in your opinion, I'll remove it.

>> +	mmc-hs400-1_8v;
>> +	mmc-hs400-enhanced-strobe;
>> +	no-sd;
>> +	no-sdio;
>> +	non-removable;
>> +	status = "okay";
>> +};
>> +
>> +/* microSD card */
>> +&sdmmc {
>> +	bus-width = <4>;
>> +	cap-mmc-highspeed;
>
> Should not be needed because of no-mmc.
>
>> +	cap-sd-highspeed;
>> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>
> Please drop, not needed with sdmmc_det pinctrl being used.
>

Will do.

>> +	disable-wp;
>> +	max-frequency = <150000000>;
>> +	no-mmc;
>> +	no-sdio;
>> +	sd-uhs-sdr104;
>> +	vmmc-supply = <&vcc_3v3_sd_s0>;
>> +	vqmmc-supply = <&vccio_sd_s0>;
>> +	status = "okay";
>> +};
>> +
>> +/* GPIO Connector */
>> +&spi0 {
>> +	num-cs = <1>;
>> +	pinctrl-0 = <&spi0m2_cs0 &spi0m2_pins>;
>> +	status = "disabled";
>> +};
>> +
>> +&spi2 {
>> +	status = "okay";
>> +	assigned-clocks = <&cru CLK_SPI2>;
>> +	assigned-clock-rates = <200000000>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
>> +	num-cs = <1>;
>> +
>> +	rk806_single: pmic@0 {
>> +		compatible = "rockchip,rk806";
>> +		reg = <0x0>;
>> +
>> +		interrupt-parent = <&gpio0>;
>> +		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>> +
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
>> +			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>> +
>> +		spi-max-frequency = <1000000>;
>> +
>> +		system-power-controller;
>> +
>> +		vcc1-supply = <&vcc_4v0_sys>;
>> +		vcc2-supply = <&vcc_4v0_sys>;
>> +		vcc3-supply = <&vcc_4v0_sys>;
>> +		vcc4-supply = <&vcc_4v0_sys>;
>> +		vcc5-supply = <&vcc_4v0_sys>;
>> +		vcc6-supply = <&vcc_4v0_sys>;
>> +		vcc7-supply = <&vcc_4v0_sys>;
>> +		vcc8-supply = <&vcc_4v0_sys>;
>> +		vcc9-supply = <&vcc_4v0_sys>;
>> +		vcc10-supply = <&vcc_4v0_sys>;
>> +		vcc11-supply = <&vcc_2v0_pldo_s3>;
>> +		vcc12-supply = <&vcc_4v0_sys>;
>> +		vcc13-supply = <&vcc_1v1_nldo_s3>;
>> +		vcc14-supply = <&vcc_1v1_nldo_s3>;
>> +		vcca-supply = <&vcc_4v0_sys>;
>> +
>> +		gpio-controller;
>> +		#gpio-cells = <2>;
>> +
>> +		rk806_dvs1_null: dvs1-null-pins {
>> +			pins = "gpio_pwrctrl1";
>> +			function = "pin_fun0";
>> +		};
>> +
>> +		rk806_dvs2_null: dvs2-null-pins {
>> +			pins = "gpio_pwrctrl2";
>> +			function = "pin_fun0";
>> +		};
>> +
>> +		rk806_dvs3_null: dvs3-null-pins {
>> +			pins = "gpio_pwrctrl3";
>> +			function = "pin_fun0";
>> +		};
>> +
>> +		regulators {
>> +			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <550000>;
>> +				regulator-max-microvolt = <950000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vdd_gpu_s0";
>> +				regulator-enable-ramp-delay = <400>;
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <550000>;
>> +				regulator-max-microvolt = <950000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vdd_cpu_lit_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_log_s0: dcdc-reg3 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <675000>;
>> +				regulator-max-microvolt = <750000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vdd_log_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +					regulator-suspend-microvolt = <750000>;
>> +				};
>> +			};
>> +
>> +			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <550000>;
>> +				regulator-max-microvolt = <950000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vdd_vdenc_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_ddr_s0: dcdc-reg5 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <675000>;
>> +				regulator-max-microvolt = <900000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vdd_ddr_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +					regulator-suspend-microvolt = <850000>;
>> +				};
>> +			};
>> +
>> +			vdd2_ddr_s3: dcdc-reg6 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-name = "vdd2_ddr_s3";
>> +
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_2v0_pldo_s3: dcdc-reg7 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <2000000>;
>> +				regulator-max-microvolt = <2000000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vdd_2v0_pldo_s3";
>> +
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <2000000>;
>> +				};
>> +			};
>> +
>> +			vcc_3v3_s3: dcdc-reg8 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <3300000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-name = "vcc_3v3_s3";
>> +
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <3300000>;
>> +				};
>> +			};
>> +
>> +			vddq_ddr_s0: dcdc-reg9 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-name = "vddq_ddr_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_1v8_s3: dcdc-reg10 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-name = "vcc_1v8_s3";
>> +
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <1800000>;
>> +				};
>> +			};
>> +
>> +			avcc_1v8_s0: pldo-reg1 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-name = "avcc_1v8_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_1v8_s0: pldo-reg2 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-name = "vcc_1v8_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +					regulator-suspend-microvolt = <1800000>;
>> +				};
>> +			};
>> +
>> +			avdd_1v2_s0: pldo-reg3 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1200000>;
>> +				regulator-max-microvolt = <1200000>;
>> +				regulator-name = "avdd_1v2_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_3v3_s0: pldo-reg4 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <3300000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vcc_3v3_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vccio_sd_s0: pldo-reg5 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-ramp-delay = <12500>;
>> +				regulator-name = "vccio_sd_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			pldo6_s3: pldo-reg6 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-name = "pldo6_s3";
>> +
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <1800000>;
>> +				};
>> +			};
>> +
>> +			vdd_0v75_s3: nldo-reg1 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <750000>;
>> +				regulator-max-microvolt = <750000>;
>> +				regulator-name = "vdd_0v75_s3";
>> +
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <750000>;
>> +				};
>> +			};
>> +
>> +			vdd_ddr_pll_s0: nldo-reg2 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <850000>;
>> +				regulator-max-microvolt = <850000>;
>> +				regulator-name = "vdd_ddr_pll_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +					regulator-suspend-microvolt = <850000>;
>> +				};
>> +			};
>> +
>> +			avdd_0v75_s0: nldo-reg3 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <750000>;
>> +				regulator-max-microvolt = <750000>;
>> +				regulator-name = "avdd_0v75_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_0v85_s0: nldo-reg4 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <850000>;
>> +				regulator-max-microvolt = <850000>;
>> +				regulator-name = "vdd_0v85_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_0v75_s0: nldo-reg5 {
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <750000>;
>> +				regulator-max-microvolt = <750000>;
>> +				regulator-name = "vdd_0v75_s0";
>> +
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&spi4 {
>> +	num-cs = <1>;
>> +	pinctrl-0 = <&spi4m1_cs0 &spi4m1_pins>;
>> +	status = "disabled";
>> +};
>> +
>> +&tsadc {
>> +	status = "okay";
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&uart0 {
>> +	pinctrl-0 = <&uart0m0_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +/* Debug UART */
>> +&uart2 {
>> +	pinctrl-0 = <&uart2m0_xfer>;
>> +	status = "okay";
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&uart3 {
>> +	pinctrl-0 = <&uart3m1_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&uart4 {
>> +	pinctrl-0 = <&uart4m2_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&uart6 {
>> +	pinctrl-0 = <&uart6m1_xfer>;
>> +	status = "okay";
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&uart7 {
>> +	pinctrl-0 = <&uart7m2_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +/* GPIO Connector, connected to 40-pin GPIO header */
>> +&uart8 {
>> +	pinctrl-0 = <&uart8m1_xfer>;
>> +	status = "disabled";
>> +};
>> +
>> +&u2phy0 {
>> +	status = "okay";
>> +};
>> +
>> +&u2phy0_otg {
>> +	status = "okay";
>> +};
>> +
>> +&u2phy1 {
>> +	status = "okay";
>> +};
>> +
>> +&u2phy1_otg {
>> +	phy-supply = <&vcc_5v0_host_30>;
>> +	status = "okay";
>> +};
>> +
>> +&u2phy2 {
>> +	status = "okay";
>> +};
>> +
>> +&u2phy2_host {
>> +	phy-supply = <&vcc_5v0_host_20>;
>> +	status = "okay";
>> +};
>> +
>> +&u2phy3 {
>> +	status = "okay";
>> +};
>> +
>> +&u2phy3_host {
>> +	phy-supply = <&vcc_3v3_host_32>;
>> +	status = "okay";
>> +};
>> +
>> +&usb_host0_ehci {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host0_ohci {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host0_xhci {
>> +	dr_mode = "otg";
>
> This is already default dr_mode for usb_host0_xhci.
>

Thanks, will drop.

>> +	usb-role-switch;
>> +	status = "okay";
>> +
>> +	port {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		dwc3_0_role_switch: endpoint@0 {
>> +			reg = <0>;
>> +			remote-endpoint = <&usbc0_role_sw>;
>> +		};
>> +	};
>> +};
>> +
>> +&usb_host1_ehci {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host1_ohci {
>> +	status = "okay";
>> +};
>> +
>> +/* Upper USB 3.0 port */
>> +&usb_host1_xhci {
>> +	dr_mode = "host";
>> +	status = "okay";
>> +};
>> +
>> +/* Lower USB 3.0 port */
>> +&usb_host2_xhci {
>> +	dr_mode = "host";
>
> This is already default dr_mode for usb_host2_xhci.
>
Will remove this as well.

>> +	status = "okay";
>> +};
>> +
>> +&usbdp_phy0 {
>> +	orientation-switch;
>> +	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
>> +	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
>> +	status = "okay";
>> +
>> +	port {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		usbdp_phy0_orientation_switch: endpoint@0 {
>> +			reg = <0>;
>> +			remote-endpoint = <&usbc0_orien_sw>;
>> +		};
>> +
>> +		usbdp_phy0_dp_altmode_mux: endpoint@1 {
>> +			reg = <1>;
>> +			remote-endpoint = <&dp_altmode_mux>;
>> +		};
>> +	};
>> +};
>> +
>> +&usbdp_phy1 {
>> +	status = "okay";
>> +};
>> +
>> +&vop {
>> +	status = "okay";
>> +};
>> +
>> +&vop_mmu {
>> +	status = "okay";
>> +};
>
> vop and vop_mmu node can probably be skipped for now.
>
> Regards,
> Jonas
>
I'll drop this together with HDMI PHY.

>> +
>> +&wdt {
>> +	status = "okay";
>> +};
>> --
>> 2.43.0
>>

I just saw that the 'wdt' node in rk3588s.dtsi does not have
a status property, therefore it can be assumed 'status="okay"'.
Do I assume correctly that it is recommended to remove this node
from here as well?

Best regards,
Sebastian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
