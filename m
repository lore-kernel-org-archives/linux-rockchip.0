Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724BC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 10:38:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1456613DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 10:38:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1456613DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M095N/QtZvyc+2XY2E4IUw7sr+TZ5bszV7tepYi1CE8=; b=fT/q8LjZ6PfoTw83Gg6j7CYtJ
	jAVdFiwiBItzK/ocZqhCRgQi6b3bblDiSkMc41gFe6kZurFyAm45JE68ryB0MZ176SS6hdJKvjRci
	B9YZB41/b8v4lrNw24uKdJM64nQ+uxLqw/nqNE6DG7peiL3ZwMpTPg0JmGjd6PYjtTGrt9D0Ad3Lv
	471gUexJp086F2pgkNp7zJI1ZtK5b3n/Yp2+AWxlZZaQ/z7IrSMbTLDShwv/sFlhSW/lxrYAjgUcC
	L9Bxk8so1R2tsxXWS6nwxkrGzkJCSb5goX09MyMiSHb/6SwgEq1DlgwWG3AW+yKzr9fPA6qBCHaDp
	OrmTKK3FQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZAFY-00EEq2-TO; Wed, 21 Apr 2021 10:38:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZAFQ-00EEoJ-0K; Wed, 21 Apr 2021 10:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=86K3DqgdI6PmMZ1PotS8DuNX9pS7zE6BvMTj90x596g=; b=O0fEXonqU6t5zU4v9h9riqdWKs
 WSCchD4Dud2oU6I9a0UCHXWbYwzZgx2SS3HSitAPGrsYqWAccxsi3vmGzZtgLeBNyt0GPbdaXowZS
 RGOMhPcItRXIZdiQruX9XSIuwiHgVkf/rynkRMUxv8TtCRW7SiMLfLq8fifG4YHc8f4+Irzpkayzd
 Yv2twKxqcPNzDWf/2d4CTeUSTkeAgX40Ujul4k/25BOPr9spWSv80rECtGiyZiONugHEwR5+Bs7W7
 kmb+gDR/9ukdbpTKZVdalK/lL1uMgGpVoj45JcPHWCBpyIr9irsNHyDGhyIUYXu00tImfZa5oD0nX
 impjDM0A==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZAFJ-00CoUh-SP; Wed, 21 Apr 2021 10:38:18 +0000
Received: by mail-ej1-x633.google.com with SMTP id x12so42020330ejc.1;
 Wed, 21 Apr 2021 03:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=86K3DqgdI6PmMZ1PotS8DuNX9pS7zE6BvMTj90x596g=;
 b=Y659qs29TOqgE5P8ePUqNq3xMEK+Hfto4RTgCeuc6yKZSA042xIEOSavqdhqNA+WlA
 hbLa2lQVcYvcKrVKWr4GDPwXqwEIHhiBrEcdyuwWJEPzWVW3aJZ03ssIT9WfvwmLR5vv
 mDQVnxws/7vsIqTf9yKf3UZmv2Q/hO1gIK+2IylUX+w4zw6YeW6Kk9Q9LwYXEh+k03lv
 xIGEW5KU6ahDwsYzX9MXs9Kr+daYmwi3UmT0JHukNJ0NhXFkg2RI6uaXGRAxvldJmEip
 1rMogEwFf0YcRhimbh66dNfRGXeWj6zBgrQjELAxQfDy5H1ZOWy3rSueEF2xNPUfrGik
 OxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=86K3DqgdI6PmMZ1PotS8DuNX9pS7zE6BvMTj90x596g=;
 b=poXRzCzUyoXJP9CppT+3vGANdHoWEnQ2EPX0JoUjM3OU+2u0AxLAOwpuXxntjCVLCY
 NcDpzeU/lmM0IRyfzGqh0/jrbHiCAcycJ7FG60mdinotEFZr6es33vLC5AJ8H7AV1stQ
 w4cTkIMqM2wSsEsccy3VkpupgZy+X29zdUZSVkzMQkjIEQFB+RYjuwss/OMrsJ5p0TW+
 ViJzVVk8XBIewz/UDPa3IKSRmxUrF+X1LH/1DG6S++8Kmt1htgEb6Bw89S7dCGAHmoIO
 vIF+l7PRJrWgVQwYc2cpTTF9Jjbe9U59GKlUXchFpErJyYlp5fbLfLADqYRrVWURTg1r
 ReGg==
X-Gm-Message-State: AOAM533FqAiVA6aLrJ7JDnb2vdy8qZRBcH8wR+MVJr7xBp794as4HopY
 gUZ57nEry4Z++0nNhwtVYms=
X-Google-Smtp-Source: ABdhPJwbWWZmQM6tijiQ0M4mvq1Y/300ScRabGg7M6edrJdQUrXFbai/lLfbmMBXv0T9CVtVwOzGBQ==
X-Received: by 2002:a17:906:85cb:: with SMTP id
 i11mr31118454ejy.311.1619001491938; 
 Wed, 21 Apr 2021 03:38:11 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 y11sm2789410eds.10.2021.04.21.03.38.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 03:38:11 -0700 (PDT)
Subject: Re: [PATCH v1 5/5] arm64: dts: rockchip: add basic dts for RK3568 EVB
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421070115.24000-1-cl@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <cfc45d41-d16b-a643-4d13-5ff898739f02@gmail.com>
Date: Wed, 21 Apr 2021 12:38:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210421070115.24000-1-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_033813_981371_D0671961 
X-CRM114-Status: GOOD (  21.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Liang,

Add and convert a few more documents.

> cat rk3568.dtsi | grep compatible | sort -u
> 		compatible = "arm,armv8-timer";
> 			compatible = "arm,cortex-a55";
> 		compatible = "arm,cortex-a55-pmu", "arm,armv8-pmuv3";
> 		compatible = "arm,gic-v3";
> 		compatible = "arm,pl330", "arm,primecell";
> 		compatible = "arm,psci-1.0";
> 		compatible = "arm,scmi-shmem";
> 			compatible = "arm,scmi-smc";
> 		compatible = "fixed-clock";
> 		compatible = "operating-points-v2";

> 			compatible = "rockchip,gpio-bank";

pending

> 	compatible = "rockchip,rk3568";
> 		compatible = "rockchip,rk3568-cru";

pending

> 		compatible = "rockchip,rk3568-dwcmshc", "snps,dwcmshc-sdhci";
> 		compatible = "rockchip,rk3568-dw-mshc",

Keep string in one line for sdmmcX.

> 		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";
> 		compatible = "rockchip,rk3568-i2c", "rockchip,rk3399-i2c";

> 		compatible = "rockchip,rk3568-pinctrl";

pending

> 		compatible = "rockchip,rk3568-pmucru";
> 		compatible = "rockchip,rk3568-pmugrf", "syscon", "simple-mfd";
> 		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> 		compatible = "rockchip,rk3568-uart", "snps,dw-apb-uart";

> 		compatible = "snps,dw-wdt";

Change this to:
              "rockchip,rk3568-wdt", "snps,dw-wdt"

Compatible strings should be SoC orientated.

> 			compatible = "syscon-reboot-mode";


On 4/21/21 9:01 AM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> This patch add rk3568-evb1-v10.dts for RK3568 evaluation board.
> add uart/emmc/i2c/rk809 node for basic function.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 382 ++++++++++++++++++
>  3 files changed, 388 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 4a6f772c1043..d26b062a9f0e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -560,6 +560,11 @@ properties:
>            - const: rockchip,rk3368-evb-act8846
>            - const: rockchip,rk3368
>  

> +      - description: Rockchip RK3568 Evaluation board
> +        items:
> +          - const: rockchip,rk3568-evb1-v10
> +          - const: rockchip,rk3568
> +

Move this below rockchip,rk3399-evb board.

>        - description: Rockchip RK3399 Evaluation board
>          items:
>            - const: rockchip,rk3399-evb
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index c3e00c0e2db7..7fdb41de01ec 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -51,3 +51,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> new file mode 100644
> index 000000000000..be8aae2e8c67
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -0,0 +1,382 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3568.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
> +	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	dc_12v: dc-12v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en>;
> +		regulator-name = "vcc5v0_host";
> +		regulator-always-on;
> +	};
> +
> +	vcc5v0_otg: vcc5v0-otg-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_otg_en>;
> +		regulator-name = "vcc5v0_otg";
> +	};
> +
> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd0_n";
> +		regulator-boot-on;

Add empty line between a node.
Change all of them.

> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd1_n";
> +		regulator-boot-on;

dito

> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		pinctrl-names = "default", "pmic-sleep",
> +				"pmic-power-off", "pmic-reset";
> +		pinctrl-0 = <&pmic_int>;
> +		pinctrl-1 = <&soc_slppin_slp>, <&rk817_slppin_slp>;
> +		pinctrl-2 = <&soc_slppin_gpio>, <&rk817_slppin_pwrdn>;
> +		pinctrl-3 = <&soc_slppin_gpio>, <&rk817_slppin_rst>;
> +
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";

> +		//fb-inner-reg-idxs = <2>;
> +		/* 1: rst regs (default in codes), 0: rst the pmic */

Where is documented?

> +		pmic-reset-func = <0>;

Where is documented?

> +
> +		vcc1-supply = <&vcc3v3_sys>;
> +		vcc2-supply = <&vcc3v3_sys>;
> +		vcc3-supply = <&vcc3v3_sys>;
> +		vcc4-supply = <&vcc3v3_sys>;
> +		vcc5-supply = <&vcc3v3_sys>;
> +		vcc6-supply = <&vcc3v3_sys>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc3v3_sys>;
> +

> +		pwrkey {
> +			status = "okay";
> +		};
> +

Where is documented?

> +		pinctrl_rk8xx: pinctrl_rk8xx {
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +
> +			rk817_slppin_null: rk817_slppin_null {
> +				pins = "gpio_slp";
> +				function = "pin_fun0";
> +			};
> +
> +			rk817_slppin_slp: rk817_slppin_slp {
> +				pins = "gpio_slp";
> +				function = "pin_fun1";
> +			};
> +
> +			rk817_slppin_pwrdn: rk817_slppin_pwrdn {
> +				pins = "gpio_slp";
> +				function = "pin_fun2";
> +			};
> +
> +			rk817_slppin_rst: rk817_slppin_rst {
> +				pins = "gpio_slp";
> +				function = "pin_fun3";
> +			};
> +		};


Where is documented?

> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-init-microvolt = <900000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;

> +				regulator-name = "vdd_logic";

regulator-name above all other regulator properties.
Change all of them.

> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_gpu: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-init-microvolt = <900000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_gpu";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vcc_ddr";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vdd_npu: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-init-microvolt = <900000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_npu";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda0v9_image: LDO_REG1 {
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vdda0v9_image";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda_0v9: LDO_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vdda_0v9";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda0v9_pmu: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vdda0v9_pmu";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vccio_acodec: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vccio_acodec";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vccio_sd";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_pmu: LDO_REG6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc3v3_pmu";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcca_1v8: LDO_REG7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca_1v8";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcca1v8_pmu: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca1v8_pmu";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcca1v8_image: LDO_REG9 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca1v8_image";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: DCDC_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_1v8";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: SWITCH_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_3v3";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sd: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc3v3_sd";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +
> +&pinctrl {
> +	pmic {
> +		pmic_int: pmic_int {
> +			rockchip,pins =
> +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		soc_slppin_gpio: soc_slppin_gpio {
> +			rockchip,pins =
> +				<0 RK_PA2 RK_FUNC_GPIO &pcfg_output_low>;
> +		};
> +
> +		soc_slppin_slp: soc_slppin_slp {
> +			rockchip,pins =
> +				<0 RK_PA2 1 &pcfg_pull_none>;
> +		};
> +
> +		soc_slppin_rst: soc_slppin_rst {
> +			rockchip,pins =
> +				<0 RK_PA2 2 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {

> +		vcc5v0_host_en: vcc5v0-host-en {
> +			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_otg_en: vcc5v0-otg-en {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;


Keep the same indent as in pmic and rk3568.dtsi for rockchip,pins

> +		};
> +	};
> +};
> +
> +&sdhci {
> +	bus-width = <8>;

> +	non-removable;
> +	rockchip,txclk-tapnum = <0x8>;
> +	max-frequency = <200000000>;

sort

> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
