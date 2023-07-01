Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6152CEB64DD
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jul 2023 09:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/mTxRGT1PmkDsThkdyj+mlt5b/+VtZ05NsE6b5BhV0=; b=wS8tcRVOJn1+JE
	52B6JMs6QxYI5KQu1NvEs+8VZmuikgnunHqb7R2GIKp8CVzDQ63Vfd7E4c9HVbabTMuJdHzzUMt3B
	mOEH45IMJ4tIhPaBuzBF74bByY1uhEaJhPkYKiH+fO514hdwp0rno2NbDOFAnMmEqE0KYl1qtTTUi
	+1omS+h66WW0jdGlRCPOrV2f4pwx6H2bMvYZXSyT+ohURF+3a2lk/RPqH4gl7YofixRRDdjArSft7
	Wu8OUr/CkSneprRYd6H5O2TgBK42QRfgOCSAJeS155u62hIJSmbzSjOQ+YqAfis6YxIb/NpglwgLU
	E82HXxphEng+pW0S59jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFWrT-005WA0-1y;
	Sat, 01 Jul 2023 09:25:47 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFWrP-005W9G-25
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Jul 2023 09:25:45 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51d9124e1baso2887594a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Jul 2023 02:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688203541; x=1690795541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zgEVh1bz7XHN5cvJ5EPhqy0TqEi9NwTwtU5q6hB8ix0=;
        b=pxxf2lMqu9A2XJSoASDa2hLCengcAazxF20/msEmLamUDzzqpqHSuGCc487qq2OLri
         a0QIHc1lSnDhD88DwW1fxDOQbj6xCTCQUlg8US97ZgtjbbhKVe75lHMzfVKcX9zkj69I
         echXXK2BEmurQ1hCi7na+yp3zVtZIUT2BMCB2c8gXYzi3W+1zgI9OED8UlS6pLFVLimq
         qmt7hm8n8VfBF0ieN7RTOu0K5SuQi0RAjJJZ56TVUvlP6iQHLAzT0yRo6Una+JXNZ+Er
         UNMjQHTGtUVf5jzuPVw2WBkVKGiF3U3BpaWf/2IDkVYdiL8zLS/kkxfJaQHNTUpNY4j4
         v7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688203541; x=1690795541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zgEVh1bz7XHN5cvJ5EPhqy0TqEi9NwTwtU5q6hB8ix0=;
        b=EyvCubC5F3j8Kl/wNnZ1fWDUgU6gOBaFyhfhSu4AMIUmGuP4ukPrI2QoihOlqvDZKO
         pdJp5IQM11avaRK630c7Q/RX3mNSTcAzC6AzzqBh0Y8OpHY5ATySfMRQj4k2zirtjsrM
         rxpy2OL3yzJGnMnPTq9leUWTvAf2lzGAvJFMX38tcNRFsyCscMVP/gi09Nv9QBwU444h
         MgX61FXL6pIO4fbWh+vbKc7P3roDnR9UMAiIWaIO33bvKageYFyKKpbZqyRzpdtxvzLd
         hR/hiun2oSU0Lt54bhB4iodYZKClt5Tqita8SytbXUEcq75g+io4MYXjALQsYerw0b9o
         pm/A==
X-Gm-Message-State: ABy/qLZQqWgPY6MwgADpeNUykrtX0Vfk8O9+tIegP/Zw6em7HFrzb6/c
	Mzy0z55eG4hAozPp1NuT6cCEOQ==
X-Google-Smtp-Source: APBJJlFvHclEiFmDlYn70oAZrmZKfzGtgJ84rU9H0VW+pqwvllYjX408dIVbWHCPmZ/DS0zSOwRQyw==
X-Received: by 2002:aa7:df17:0:b0:51d:d568:fa4e with SMTP id c23-20020aa7df17000000b0051dd568fa4emr2835011edy.41.1688203540992;
        Sat, 01 Jul 2023 02:25:40 -0700 (PDT)
Received: from [192.168.10.214] ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id v1-20020a056402184100b0050488d1d376sm7690327edy.0.2023.07.01.02.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Jul 2023 02:25:40 -0700 (PDT)
Message-ID: <28e3d9d5-177b-3f1f-5565-493310ac402d@linaro.org>
Date: Sat, 1 Jul 2023 11:25:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] arm64: dts: rockchip: add support for Rongpin king3399
 board
To: ocfox <i@ocfox.me>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230630173010.272469-1-i@ocfox.me>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230630173010.272469-1-i@ocfox.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230701_022543_783224_7493C1D1 
X-CRM114-Status: GOOD (  26.20  )
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

On 30/06/2023 19:27, ocfox wrote:
> king3399 is a bord from Rongpin, you can find detail about
> it here:
> (http://www.rpdzkj.com/copy_2_1703937_175104_2536441.html)
> 
> This patch add basic node for the board and make it able to bring
> up.
> 
> Works:
> - USB, type-C port
> - Ethernet
> - WiFi/BT
> - HDMI
> - eMMC
> - PCIe
> - sd-card
> 
> Not test for other peripheral:
> - AUDIO
> - MIC
> - SIM
> - MIPI
> 
> Signed-off-by: ocfox <i@ocfox.me>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3399-king3399.dts     | 1077 +++++++++++++++++
>  2 files changed, 1078 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-king3399.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index b7fb908eb92d..73ebee6ef430 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -42,6 +42,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-hugsun-x99.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-captain.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-v.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-king3399.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-kobol-helios64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-leez-p710.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-king3399.dts b/arch/arm64/boot/dts/rockchip/rk3399-king3399.dts
> new file mode 100644
> index 000000000000..5d68add63d59
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-king3399.dts
> @@ -0,0 +1,1077 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + *
> + * Copyright (c) 2023 ocfox <i@ocfox.me>
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/usb/pd.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "KING3399 RK3399 Board";
> +	compatible = "rockchip,king3399", "rockchip,rk3399";

Missing bindings patch. Looks like wrong vendor prefix - you called this
board "Rongpin", not "Rockchip".

> +
> +	aliases {
> +		mmc0 = &sdio0;
> +		mmc1 = &sdmmc;
> +		mmc2 = &sdhci;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	adc-keys {
> +		compatible = "adc-keys";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <1800000>;
> +		poll-interval = <100>;
> +
> +		button-up {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			press-threshold-microvolt = <100000>;
> +		};
> +
> +		button-down {
> +			label = "Volume Down";
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			press-threshold-microvolt = <300000>;
> +		};
> +
> +		back {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

> +			label = "Back";
> +			linux,code = <KEY_BACK>;
> +			press-threshold-microvolt = <985000>;
> +		};
> +	};
> +
> +	keys: gpio-keys {
> +		compatible = "gpio-keys"; // poweroff not sure
> +		autorepeat;
> +
> +		power {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

> +			debounce-interval = <100>;
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "GPIO Power";
> +			linux,code = <KEY_POWER>;
> +			linux,input-type = <1>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pwr_btn>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>; // bsp
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ir_int>;
> +	};
> +
> +	backlight: backlight {
> +		status = "disabled";
> +		compatible = "pwm-backlight";
> +		brightness-levels = <
> +			  0   1   2   3   4   5   6   7
> +			  8   9  10  11  12  13  14  15
> +			 16  17  18  19  20  21  22  23
> +			 24  25  26  27  28  29  30  31
> +			 32  33  34  35  36  37  38  39
> +			 40  41  42  43  44  45  46  47
> +			 48  49  50  51  52  53  54  55
> +			 56  57  58  59  60  61  62  63
> +			 64  65  66  67  68  69  70  71
> +			 72  73  74  75  76  77  78  79
> +			 80  81  82  83  84  85  86  87
> +			 88  89  90  91  92  93  94  95
> +			 96  97  98  99 100 101 102 103
> +			104 105 106 107 108 109 110 111
> +			112 113 114 115 116 117 118 119
> +			120 121 122 123 124 125 126 127
> +			128 129 130 131 132 133 134 135
> +			136 137 138 139 140 141 142 143
> +			144 145 146 147 148 149 150 151
> +			152 153 154 155 156 157 158 159
> +			160 161 162 163 164 165 166 167
> +			168 169 170 171 172 173 174 175
> +			176 177 178 179 180 181 182 183
> +			184 185 186 187 188 189 190 191
> +			192 193 194 195 196 197 198 199
> +			200 201 202 203 204 205 206 207
> +			208 209 210 211 212 213 214 215
> +			216 217 218 219 220 221 222 223
> +			224 225 226 227 228 229 230 231
> +			232 233 234 235 236 237 238 239
> +			240 241 242 243 244 245 246 247
> +			248 249 250 251 252 253 254 255>;
> +		default-brightness-level = <200>;
> +		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		pwms = <&pwm0 0 25000 0>;
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk808 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_reg_on_h>;
> +
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	/* switched by pmic_sleep */
> +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {

Use some consistent name suffixes or prefixes. Some of your regulators
are regulators, some not.

....

> +
> +	// vdd 5v: USB 2&3, USB Hub, Type-C, HDMI, MIPI, IR
> +	vcc5v0_host: vcc5v0-host-regulator {

Like here

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		regulator-boot-on;
> +		gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>; // bsp
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en>;
> +		regulator-name = "vcc5v0_host";
> +		// regulator-always-on;

Drop dead code

> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_typec0: vbus-typec-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>; // bsp

What is that "// bsp" comment?

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec_en>;
> +		regulator-name = "vcc5v0_typec0";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_sys: vcc5v0_sys: vcc5v0-sys { // bsp
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +
> +	dc_12v: vdd_12v: dc-12v { // dc_12v vdd_12V
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	rt5651-sound { // verify

So it is not suitable to upstream. Drop unrelated comments or mark your
patch as not for merging.

> +		status = "okay";

Drop, it's by default.

> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det>;
> +
> +		simple-audio-card,name = "realtek,rt5651-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		simple-audio-card,aux-devs = <&speaker_amp>;
> +		simple-audio-card,pin-switches = "Speaker";
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =
> +			"Mic Jack", "micbias1",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Speaker Amplifier INL", "HPOL",
> +			"Speaker Amplifier INR", "HPOR",
> +			"Speaker", "Speaker Amplifier OUTL",
> +			"Speaker", "Speaker Amplifier OUTR";
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s0>;
> +		};
> +		simple-audio-card,codec {
> +			sound-dai = <&rt5651>;
> +		};
> +	};
> +
> +	speaker_amp: speaker-amplifier { // verify
> +		compatible = "simple-audio-amplifier";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&spk_ctl>;
> +		enable-gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +		sound-name-prefix = "Speaker Amplifier";
> +		vcc-supply = <&vcc5v0_sys>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&breathe_led_pin>;
> +
> +		breathe_led: led-breathe-led { // bsp // vdd_12V
> +			label = "breathe_led";
> +			linux,default-trigger = "heartbeat";
> +			default-state = "off";
> +			gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	fan0: gpio-fan { // verify // vcc5v0_sys
> +		#cooling-cells = <2>;
> +		compatible = "gpio-fan";
> +		gpio-fan,speed-map = <0 0 3000 1>;
> +		gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		status = "okay";
> +	};

Drop

> +
> +	gpio-restart {
> +		compatible = "gpio-restart";
> +		gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hub_rst>;
> +		priority = <200>;
> +		active-delay = <100>;
> +		inactive-delay = <10>;
> +		wait-delay = <100>;
> +	};
> +

Drop stray blank line

...

> +
> +&i2c1 {
> +	i2c-scl-rising-time-ns = <300>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +
> +	rt5651: rt5651@1a {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		#sound-dai-cells = <0>;
> +		compatible = "realtek,rt5651";
> +		reg = <0x1a>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		status = "okay";
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +};
> +
> +// Used for HDMI
> +&i2c3 {
> +	i2c-scl-rising-time-ns = <450>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +};
> +
> +// Type-C
> +// Accelerometer
> +// Touch Screen
> +&i2c4 {
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <450>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +
> +	fusb302@22 { // bsp checked

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
