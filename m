Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1368BC6FA8A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 15:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PzG/mmDcUzP+SSeFlHvW+WK3cErMP/j/5hvXMNwHRA=; b=jM+X9642mW7e2y
	lsTVJmum32bpVXZ7dacjwqQ5Mr6o7pTf7zBGBDpKle1m5SAK27eK2npe/crEyCQ9gnpkFmtjKo5/A
	BG8jfL/sITlAlIWRfQMSd6wq1h+9GGaD59/Miiw/UxpQ0cf9iEocqZFfY5TWVZLxWwb7coPwohz1m
	4vzsmuzfmUJs4yFoFH+kpbd7MfcKNa42N8nziHBS53er1+coR92EKyQP0SPfS2+r6Aomm9wI8vFSh
	lWmKI7PR73oyJNr2oHERVEzMfjUiqNFMSdeu7TWeybLlS2CDLrPA3eTUQVYE3NBB63LcyyTioiO7h
	5TY3K9RHKuDT1EX2IEPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYqTK-00BmDc-OE; Thu, 15 Sep 2022 15:08:10 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYqT8-00Bm9y-QW
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 15:08:00 +0000
Received: by mail-wm1-x335.google.com with SMTP id e18so7924003wmq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Sep 2022 08:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9mQUaPNceis8qparWDkrLv2BKnQ9SmM81stuAhhbzew=;
        b=LsQo2JpTUkhTzfuDrJ9y/4GnGKTFwHW/PSWLYrWtomRbBWYjPZM14GvphXRuD7cPBp
         k3JZ+7US/WNPMpgGXXwWecEDpG/BAvoYLpVJKNKVvQr+ezEuGx4gzqSMsVaF/Uotbwpj
         dF3HxM8tD1HpTdAuiw4AdS00lvRWOBZP/FAQ1ekdtvTTikxyAoXPGZT/ocVSemAbMnV+
         XFbG2AKYu/mvIPw9EgzPG2cLjvqbHSDNeXELIuoYPpjCeehPx5EN7xVHiyZDO/J8ArY7
         iPln6G8fXhIaBuBbEARnBetbMcZrFpMkLXHmfmpqC3fCdbp0gi6CVp9TCgKi0/CLPxg9
         vk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9mQUaPNceis8qparWDkrLv2BKnQ9SmM81stuAhhbzew=;
        b=8SPIwMJ/dbjYb/uqW2FYjlWYR2TLL9qnuVvj2e+yNzPbAEwYwmUle1ixPpnMyiUBF0
         otZBXXBrf9CjBARWmi+2YnEej4HD1kz6nNDN1/3OglMHE+O0s2QJxXsqwShenR6NgnEp
         tOT0ZvIHVX9/3h+Omb1YQgisi60Wds/xL/bipdPH+45szyWyvG4j/u0TkstHivfwHdEd
         njeS4AwZtaUGoXd5La7sYhTGes8UyDIP2irudB6UQTMvMwxx8zm55JXQy4Q9Ti4QtzNX
         lSr98ddmYuDFYZTFhKYCeEamQtMJzRfyiRBOgI5QV/haPr+eYVkMrGls05o0amuiYYCo
         b7Ow==
X-Gm-Message-State: ACgBeo2s213AlS2Uk6z41SQ1rpVGveBb2BWGsycaHDZ2HqYKqegj9R31
	wLykSt3tqqji2fwdYtLtnEB++w==
X-Google-Smtp-Source: AA6agR7MonZjlHNMXwe0IaiZO8G7Nw83j+6yzFvN9UU8Qb8D8xG5Ma8HaDtaJ4b0KHXmzJd/VpiUAw==
X-Received: by 2002:a05:600c:4c22:b0:3b4:766a:4f76 with SMTP id d34-20020a05600c4c2200b003b4766a4f76mr6708741wmp.101.1663254475376;
        Thu, 15 Sep 2022 08:07:55 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.72])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b00228d67db06esm2904974wrt.21.2022.09.15.08.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 08:07:54 -0700 (PDT)
Message-ID: <c46fd424-3517-9f66-dc8c-ed10ca3ef622@linaro.org>
Date: Thu, 15 Sep 2022 16:07:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] Changes phy configuration to expose sata in place of usb3
 on quartz64-a board
Content-Language: en-US
To: Alessandro Carminati <alessandro.carminati@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <YyIyo42QWvgJTBjL@lab.hqhome163.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YyIyo42QWvgJTBjL@lab.hqhome163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_080758_905757_85E7B532 
X-CRM114-Status: GOOD (  22.46  )
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

On 14/09/2022 20:59, Alessandro Carminati wrote:
> The Quartz64 board is built upon Rockchip RK3566.
> Rockchip RK3566 has two combo phys.
> The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
> ctrl2.
> The second combo phy is hardwired to the PCIe slot, where for the first,
> the hardware on the board provides both the USB3 connector and the SATA
> connector.
> This DT allows the users to switch the combo phy to the SATA connector.
> 
> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> ---
>  .../dts/rockchip/rk3566-quartz64-a.sata.dts   | 839 ++++++++++++++++++
>  1 file changed, 839 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
> new file mode 100644
> index 000000000000..6ac21b729be7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
> @@ -0,0 +1,839 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "Pine64 RK3566 Quartz64-A Board";
> +	compatible = "pine64,quartz64-a", "rockchip,rk3566";
> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +		mmc0 = &sdmmc0;
> +		mmc1 = &sdhci;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	gmac1_clkin: external-gmac1-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac1_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	fan: gpio_fan {

No underscores in node names. Node name just "fan"

> +		compatible = "gpio-fan";
> +		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> +		gpio-fan,speed-map = <0    0
> +				      4500 1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fan_en_h>;
> +		#cooling-cells = <2>;
> +	};
> +
> +	hdmi-con {

Node name: connector

> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-work {
> +			label = "work-led";
> +			default-state = "off";
> +			gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&work_led_enable_h>;
> +			retain-state-suspended;
> +		};
> +
> +		led-diy {
> +			label = "diy-led";
> +			default-state = "on";
> +			gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&diy_led_enable_h>;
> +			retain-state-suspended;
> +		};
> +	};
> +
> +	rk817-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,name = "Analog RK817";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk817 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <5000000>;
> +		reset-gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	spdif_dit: spdif-dit {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	spdif_sound: spdif-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SPDIF";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&spdif>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&spdif_dit>;
> +		};
> +	};
> +
> +	vcc12v_dcin: vcc12v_dcin {

No underscores in node names, generic node name, so at least with
regulator prefix or suffix.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	/* vbus feeds the rk817 usb input.
> +	 * With no battery attached, also feeds vcc_bat+
> +	 * via ON/OFF_BAT jumper
> +	 */
> +	vbus: vbus {

Ditto

> +		compatible = "regulator-fixed";
> +		regulator-name = "vbus";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc3v3_pcie_p: vcc3v3-pcie-p-regulator {

And here you have suffix...

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_enable_h>;
> +		regulator-name = "vcc3v3_pcie_p";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3>;
> +	};
> +
> +	vcc5v0_usb: vcc5v0_usb {

Ditto

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	/* all four ports are controlled by one gpio
> +	 * the host ports are sourced from vcc5v0_usb
> +	 * the otg port is sourced from vcc5v0_midu
> +	 */
> +	vcc5v0_usb20_host: vcc5v0_usb20_host {

and in other places as well



> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_usb20_host_en>;
> +		regulator-name = "vcc5v0_usb20_host";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_usb>;
> +	};
> +
> +	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "vcc5v0_usb20_otg";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dcdc_boost>;
> +	};
> +
> +	vcc3v3_sd: vcc3v3_sd {
> +		compatible = "regulator-fixed";
> +		enable-active-low;
> +		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_sd_h>;
> +		regulator-boot-on;
> +		regulator-name = "vcc3v3_sd";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3>;
> +	};
> +
> +	/* sourced from vbus and vcc_bat+ via rk817 sw5 */
> +	vcc_sys: vcc_sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <4400000>;
> +		regulator-max-microvolt = <4400000>;
> +		vin-supply = <&vbus>;
> +	};
> +
> +	/* sourced from vcc_sys, sdio module operates internally at 3.3v */
> +	vcc_wl: vcc_wl {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_wl";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_sys>;
> +	};
> +};
> +
> +&combphy1 {
> +	status = "okay";
> +};
> +
> +&combphy2 {
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
> +&cpu_thermal {
> +	trips {
> +		cpu_hot: cpu_hot {

No underscores in node names. Are you sure bindings/schema do not expect
some specific name?

> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
