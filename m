Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D36BBC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 08:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt3wMvwuOte0y9qOVbAyHuAiGjupuZ9H0PFW46tgwLY=; b=ygrF4lThNB+MdE
	w+LlyuLuahIyB+KtMWD2guGkEENPT8TO3wUdAEWgD8r97hJWGmKAMdSt06GacjX9aSP8y3jAUm3jz
	L2pXQBKuGOY4aP1rY3R9RPlyWZmTXf0XDOKpl8lshkCK99fkFtC18XiDJyEaFmTaZIUHHftPvpGfc
	I+V427d3XZIVarnBBKpZuQ7ZrR9VI2tI290Tw8Wvl8avouF+b+K40A58LVKtZBorwIfLESOWIUfu1
	YSDI+ewgFq12T/F5F0l/R2MPVBHPLbWtQydzqhp0VKY2wcXx7ud6ax12LbbNY3+mRrNo+6h/V1gZ6
	dOADryNBMg2hPATAyXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOafb-000fh1-Jf; Thu, 18 Aug 2022 08:14:27 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOafX-000fYi-SE
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 08:14:25 +0000
Received: by mail-lj1-x22b.google.com with SMTP id w15so1015283ljw.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 01:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=EseHrWw6iA/ykOiA6csED9L2g8nLqyHnkIVzNZpxQFc=;
        b=NWQnJjpR6nD+7TJm20XRDTWHC37lpbLKPr5eR0Yh7lqZtQKvH907z4VUnXP2iVTgpI
         R+UwZ/GK9yQ4Mz4wLv/8fVyDAB2wFwbPq7NyZkjN9nEIhO1En7W1cWjlbXGGyjyBQxFN
         ikSzqtbJAguBYSmVWXSrwobF7RnJ4gqVdEj0Z4Tyn7rnPt8C+VHp4tt978IXAAIbvZfJ
         KNCoxMq9HehgFrkPyH/vWwguwBQs5an2dK6OPHFlGXzxqLvvPkj/SgUMtYXE04al1rRB
         dE3S8uLBBXHmlbzWk9GMBANZhhWCK+lLvAiLFquqiEAiSw0gGxtpOjmQphpa4MrZbs4B
         uSMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=EseHrWw6iA/ykOiA6csED9L2g8nLqyHnkIVzNZpxQFc=;
        b=EfXCoF5v03SbfT4aTE0hVkVt4C8/vaon6R+hI/gwErfS/DRfiDzCjQyB7fceSOnfd7
         W4yOJ2NlmQXvWv31XO3DUztGRKhvV/dn6vlGrRGfjY3iOqN0JpKP8CQ68xZMiE5D3Rsd
         yyBI8q/r0cRbdx2VMKTJfl83L6V2UNxdW4yWNLL3kfUe9zlymlFazLInyQmPNknHmRqC
         XoBEjPFEcdc/0LVIzC9FpiEyV+3+OIzmHE7/2sy9zVQfw6GuJtY2JLlQyrQHoUlwDTHk
         nmQynKM88E6dSBfviHmU0//8CrKbHUk0L+iXL3YuNYtKnu0n3lUgFgIkZLHJJu0TaZYi
         Lbfw==
X-Gm-Message-State: ACgBeo00suslthFRDR/pRmv4z5sSqdhnDPLlKjyDfi8ja8mjgaeCsvLP
	EpUOHns3nSgUVmHAGZeD/y+B+g==
X-Google-Smtp-Source: AA6agR6s49mE+LQIyzI7TWAJP73hbKA8oNOx4Hv7gb09uj8dityXx1kZ78lYRI0YbzkerFT6XEbTTw==
X-Received: by 2002:a2e:8018:0:b0:261:b440:c0cc with SMTP id j24-20020a2e8018000000b00261b440c0ccmr269317ljg.385.1660810459411;
        Thu, 18 Aug 2022 01:14:19 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id v4-20020a2ea604000000b0026182c4a5c6sm124273ljp.120.2022.08.18.01.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:14:18 -0700 (PDT)
Message-ID: <e30e41c6-04b4-bf48-b034-b722f950ac90@linaro.org>
Date: Thu, 18 Aug 2022 11:14:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-4-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817204954.28135-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_011423_958349_7EA94091 
X-CRM114-Status: GOOD (  11.35  )
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

On 17/08/2022 23:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
> from Anbernic.
> 

Thank you for your patch. There is something to discuss/improve.

> +		red_led: led-2 {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "off";
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	rk817-sound {

just sound

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "anbernic_rk817";
> +		simple-audio-card,aux-devs = <&spk_amp>;
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Internal Speakers";
> +		simple-audio-card,routing =
> +			"MICL", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Internal Speakers", "Speaker Amp OUTL",
> +			"Internal Speakers", "Speaker Amp OUTR",
> +			"Speaker Amp INL", "HPOL",
> +			"Speaker Amp INR", "HPOR";
> +		simple-audio-card,pin-switches = "Internal Speakers";
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk817 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		pinctrl-names = "default";
> +		post-power-on-delay-ms = <200>;
> +		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	spk_amp: audio-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&spk_amp_enable_h>;
> +		pinctrl-names = "default";
> +		sound-name-prefix = "Speaker Amp";
> +	};
> +
> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {

Node name:
regulator-vcc3v3-lcd0-n
vcc3v3-lcd0-n-regulator
or just regulator-0

> +		compatible = "regulator-fixed";
> +		gpio = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-0 = <&vcc_lcd_h>;
> +		pinctrl-names = "default";
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_lcd0_n";
> +		vin-supply = <&vcc_3v3>;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vcc_sys: vcc_sys {

No underscores in node names. Same comment as above.

> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3800000>;
> +		regulator-max-microvolt = <3800000>;
> +		regulator-name = "vcc_sys";
> +	};
> +
> +	vcc_wifi: vcc-wifi {

Same comment as above

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&vcc_wifi_h>;
> +		pinctrl-names = "default";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc_wifi";
> +	};
> +
> +	vibrator: pwm-vibrator {
> +		compatible = "pwm-vibrator";
> +		pwm-names = "enable";
> +		pwms = <&pwm5 0 1000000000 0>;
> +	};
> +};
> +
> +&combphy1 {
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> +		#clock-cells = <1>;
> +		#sound-dai-cells = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc5-supply = <&vcc_sys>;
> +		vcc6-supply = <&vcc_sys>;
> +		vcc7-supply = <&vcc_sys>;
> +		vcc8-supply = <&vcc_sys>;
> +		vcc9-supply = <&dcdc_boost>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {

No underscores in node names, unless the PMIC requires it.

(...)

> +
> +&pinctrl {
> +

No need for blank line

> +	audio-amplifier {
> +		spk_amp_enable_h: spk-amp-enable-h {
> +			rockchip,pins =
> +				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
