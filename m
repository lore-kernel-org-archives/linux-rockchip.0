Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 073EFC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 10:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBxf+z0GwGZY0tuULks/qPvP5VFoK3DDs3iWkFeIM88=; b=PpuWwyd4ijOgAD
	jgqyR5Tb40WCy8mOcbhE5gPiCmvWbOpA4x9TeCFHmych9BmSsifhCj1tkpljlS+UQTwaAKWW2nrmM
	p/IjkHH1xUIVbx4UtvsShI4o0YZyGgDnkWrOrl2b9X0S0R83vxdhvJSLOrl2Ld9I16Fd+YsmEkSs4
	BHC2oD3WKp/8ejqKfpg/otc9+A5jw3ZAE4+UJWdJr0JOeiycULh8rhgeTwNch6xNOGYbyn/F6BgRk
	FK0urvjMU80juWAJIZq93WOrVAxl9FtA/8mGyFhmBj/e0XuXSQ0PImQ/jaWMXgx7hd3PkL4ctyUfl
	5ddmEhPCW3gMUxRvBHjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqu9f-003F0L-FA; Fri, 04 Nov 2022 10:42:31 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqu9T-003EyD-8C; Fri, 04 Nov 2022 10:42:21 +0000
Received: by mail-ej1-x62e.google.com with SMTP id k2so12216228ejr.2;
        Fri, 04 Nov 2022 03:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UCcUCpDY+k7yo73Nnyn69El+q92NDyvk5BnNNXNe6EM=;
        b=IxUH3epHkGjsPLvMltnQZHvJPfummT21+da/H1aKkKPSxH/RSqSYrZar5F9BHIYN9u
         o6zRKogdD/8evoYh+7Mgqzj9LnXjvRh2rZLdnkXL5E/VT1F3stkSVxN189w8T4y2KpnU
         /yuQm9UvwHmYUORt7ogFa9O4PPL4+f7C+EC/baVGdZRbg2+X81c2iIunsxZmya6663Z1
         H0CRF6QaBDEnbm1cO2uADvEIOrIsn2m3mhTkrnBHlGmjaS/YnuTh0QuQmH2MM9YM/Rlf
         w3K6pBmFhM9l04BqxFGC0gB/yxv7XHZsljsvKkAVLXbigRcPW3h8Zpw5elbsFJC7DpeE
         eAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCcUCpDY+k7yo73Nnyn69El+q92NDyvk5BnNNXNe6EM=;
        b=Tr89m7o2ZVitYtTJzbzJj9RDXwpatVvDuufAUDmr3G3AeS2gm1e5P8Pa5SqsMogqt7
         tDBp/nLgmDg/nqXeUsXY0QQjUBO/wwKQKjBLj/s3cJK7jSbAe2N1KU/iH9ktR77koOF5
         zhzD5vNZrodxgP/018RVDQwtC0rh4MQUVBGpJaat5H/aH/xpsPx5ybAtEEClFtSfZrU/
         GJEhy/hfygQ1q8DoiKQD53g1mU7335X21ZB5N5yOGWwoaeMLUaqVsWKAmEXeSGZ2Wv8N
         WYTZ5IyESKd4KtPfgCVt/X3773AQN9fRS+gqYUw+Ru4jHv0yrG/v+90HV27/WH6n9RvO
         t9lw==
X-Gm-Message-State: ACrzQf05NUJqtQrm9TeER8JDxhDo/rcz6FABqyWtR5gtbpgq/aVd2/jX
	jAANYUvhejgu93meeemLfI0=
X-Google-Smtp-Source: AMsMyM6fLI5mpFeomh4MbXTBTBL0wFo6ACQb+UPmsbjRW+WWOJOyUpmGEH0ZcmEsY5uoTeYyH5QiCw==
X-Received: by 2002:a17:906:5a4c:b0:7ae:2964:11e3 with SMTP id my12-20020a1709065a4c00b007ae296411e3mr5117570ejc.556.1667558534760;
        Fri, 04 Nov 2022 03:42:14 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id et19-20020a170907295300b007aacfce2a91sm1629047ejc.27.2022.11.04.03.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 03:42:14 -0700 (PDT)
Message-ID: <153f4c5f-32d8-2b00-78fb-230beb3bb7b1@gmail.com>
Date: Fri, 4 Nov 2022 11:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v6 2/6] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221102124607.297083-1-jagan@edgeble.ai>
 <20221102124607.297083-2-jagan@edgeble.ai>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20221102124607.297083-2-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_034219_356222_33C3F96A 
X-CRM114-Status: GOOD (  27.73  )
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

Hi Jagan,

When I run this command below I get a lot text on my screen.
Could you fix them all?
Some more comments below.

Johan

===

ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make dtbs_check

On 11/2/22 13:46, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> This patch add basic core dtsi support.
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v6:
> - add psci node
> Changes for v5:
> - none
> Changes for v4:
> - update i2c0
> - rebase on -next
> Changes for v3:
> - update cru and power file names
> Changes for v2:
> - split pinctrl in separate patch
> 
>  arch/arm/boot/dts/rv1126.dtsi | 439 ++++++++++++++++++++++++++++++++++
>  1 file changed, 439 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> 
> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> new file mode 100644
> index 000000000000..867f17ab0efd
> --- /dev/null
> +++ b/arch/arm/boot/dts/rv1126.dtsi
> @@ -0,0 +1,439 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.

> + * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.

Is this an advertisement?
Maybe remove?
Was there added substantial new code?
Compared to the original there was mainly parts removed, sorted and restyled here and there I think.

https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm/boot/dts/rv1126.dtsi

> + */
> +
> +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/power/rockchip,rv1126-power.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	compatible = "rockchip,rv1126";
> +
> +	interrupt-parent = <&gic>;
> +

> +	aliases {
> +		i2c0 = &i2c0;
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
> +		serial5 = &uart5;
> +	};

Comment by Krzysztof:
https://lore.kernel.org/all/f2652e0e-fb08-efb4-e25a-36a335f0c457@linaro.org/

No, not only mmc. UART, I2C, SPI - all of these should go to the board.

Comment by Arnd:
https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/

Each board should have its own aliases node that describes
exactly which of the devices are wired up on that board, and
in which order. If there are connectors on the board that
are labeled in some form, then the aliases are meant to
match what is written on the board or in its documentation.
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@f00 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0xf00>;
> +			enable-method = "psci";
> +			clocks = <&cru ARMCLK>;
> +		};
> +
> +		cpu1: cpu@f01 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0xf01>;
> +			enable-method = "psci";
> +			clocks = <&cru ARMCLK>;
> +		};
> +
> +		cpu2: cpu@f02 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0xf02>;
> +			enable-method = "psci";
> +			clocks = <&cru ARMCLK>;
> +		};
> +
> +		cpu3: cpu@f03 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0xf03>;
> +			enable-method = "psci";
> +			clocks = <&cru ARMCLK>;
> +		};
> +	};
> +
> +	arm-pmu {
> +		compatible = "arm,cortex-a7-pmu";
> +		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv7-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> +		clock-frequency = <24000000>;
> +	};
> +
> +	xin24m: oscillator {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xin24m";
> +		#clock-cells = <0>;
> +	};
> +
> +	grf: syscon@fe000000 {
> +		compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
> +		reg = <0xfe000000 0x20000>;
> +	};
> +
> +	pmugrf: syscon@fe020000 {
> +		compatible = "rockchip,rv1126-pmugrf", "syscon", "simple-mfd";
> +		reg = <0xfe020000 0x1000>;
> +
> +		pmu_io_domains: io-domains {
> +			compatible = "rockchip,rv1126-pmu-io-voltage-domain";
> +			status = "disabled";
> +		};
> +	};
> +
> +	qos_emmc: qos@fe860000 {
> +		compatible = "rockchip,rv1126-qos", "syscon";
> +		reg = <0xfe860000 0x20>;
> +	};
> +
> +	qos_nandc: qos@fe860080 {
> +		compatible = "rockchip,rv1126-qos", "syscon";
> +		reg = <0xfe860080 0x20>;
> +	};
> +
> +	qos_sfc: qos@fe860200 {
> +		compatible = "rockchip,rv1126-qos", "syscon";
> +		reg = <0xfe860200 0x20>;
> +	};
> +
> +	qos_sdio: qos@fe86c000 {
> +		compatible = "rockchip,rv1126-qos", "syscon";
> +		reg = <0xfe86c000 0x20>;
> +	};
> +
> +	gic: interrupt-controller@feff0000 {
> +		compatible = "arm,gic-400";
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +
> +		reg = <0xfeff1000 0x1000>,
> +		      <0xfeff2000 0x2000>,
> +		      <0xfeff4000 0x2000>,
> +		      <0xfeff6000 0x2000>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	pmu: power-management@ff3e0000 {

> +		compatible = "rockchip,rv1126-pmu", "syscon", "simple-mfd";

arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb:0:0: /power-management@ff3e0000: failed to match any schema with compatible: ['rockchip,rv1126-pmu', 'syscon', 'simple-mfd']


> +		reg = <0xff3e0000 0x1000>;
> +
> +		power: power-controller {
> +			compatible = "rockchip,rv1126-power-controller";
> +			#power-domain-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			power-domain@RV1126_PD_NVM {
> +				reg = <RV1126_PD_NVM>;
> +				clocks = <&cru HCLK_EMMC>,
> +					 <&cru CLK_EMMC>,
> +					 <&cru HCLK_NANDC>,
> +					 <&cru CLK_NANDC>,
> +					 <&cru HCLK_SFC>,
> +					 <&cru HCLK_SFCXIP>,
> +					 <&cru SCLK_SFC>;
> +				pm_qos = <&qos_emmc>,
> +					 <&qos_nandc>,
> +					 <&qos_sfc>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RV1126_PD_SDIO {
> +				reg = <RV1126_PD_SDIO>;
> +				clocks = <&cru HCLK_SDIO>,
> +					 <&cru CLK_SDIO>;
> +				pm_qos = <&qos_sdio>;
> +				#power-domain-cells = <0>;
> +			};
> +		};
> +	};
> +
> +	i2c0: i2c@ff3f0000 {
> +		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
> +		reg = <0xff3f0000 0x1000>;
> +		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +		rockchip,grf = <&pmugrf>;
> +		clocks = <&pmucru CLK_I2C0>, <&pmucru PCLK_I2C0>;
> +		clock-names = "i2c", "pclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c0_xfer>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +	};
> +

> +	dmac: dma-controller@ff4e0000 {

Sort nodes with reg property on reg address.

> +		compatible = "arm,pl330", "arm,primecell";
> +		reg = <0xff4e0000 0x4000>;
> +		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> +		#dma-cells = <1>;
> +		arm,pl330-periph-burst;
> +		clocks = <&cru ACLK_DMAC>;
> +		clock-names = "apb_pclk";
> +	};
> +
> +	uart1: serial@ff410000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff410000 0x100>;
> +		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&pmucru SCLK_UART1>, <&pmucru PCLK_UART1>;
> +		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac 7>, <&dmac 6>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart1m0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	pmucru: clock-controller@ff480000 {
> +		compatible = "rockchip,rv1126-pmucru";
> +		reg = <0xff480000 0x1000>;
> +		rockchip,grf = <&grf>;
> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +	};
> +
> +	cru: clock-controller@ff490000 {
> +		compatible = "rockchip,rv1126-cru";
> +		reg = <0xff490000 0x1000>;
> +		clocks = <&xin24m>;
> +		clock-names = "xin24m";
> +		rockchip,grf = <&grf>;
> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +	};
> +
> +	uart0: serial@ff560000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff560000 0x100>;
> +		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> +		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac 5>, <&dmac 4>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	uart2: serial@ff570000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff570000 0x100>;
> +		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
> +		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac 9>, <&dmac 8>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart2m1_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	uart3: serial@ff580000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff580000 0x100>;
> +		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
> +		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac 11>, <&dmac 10>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart3m0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	uart4: serial@ff590000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff590000 0x100>;
> +		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
> +		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac 13>, <&dmac 12>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart4m0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	uart5: serial@ff5a0000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff5a0000 0x100>;
> +		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
> +		dmas = <&dmac 15>, <&dmac 14>;
> +		clock-names = "baudclk", "apb_pclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart5m0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	saradc: saradc@ff5e0000 {

> +		compatible = "rockchip,rk3399-saradc";

compatible = "rockchip,rv1126-saradc", "rockchip,rk3399-saradc";

Add to document.

> +		reg = <0xff5e0000 0x100>;
> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +		#io-channel-cells = <1>;
> +		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
> +		clock-names = "saradc", "apb_pclk";
> +		resets = <&cru SRST_SARADC_P>;
> +		reset-names = "saradc-apb";
> +		status = "disabled";
> +	};
> +
> +	timer: timer@ff660000 {

> +		compatible = "rockchip,rk3288-timer";

compatible = "rockchip,rv1126-timer", "rockchip,rk3288-timer";

Add to document after my patch:

[PATCH v2 2/4] dt-bindings: timer: rockchip: add rockchip,rk3128-timer
https://lore.kernel.org/linux-rockchip/0e57f38f-bace-8556-7258-aa0b3c0ac103@gmail.com/T/#u

> +		reg = <0xff660000 0x20>;
> +		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
> +		clock-names = "pclk", "timer";
> +	};
> +
> +	emmc: mmc@ffc50000 {
> +		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0xffc50000 0x4000>;
> +		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_EMMC>, <&cru CLK_EMMC>,
> +			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
> +		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +		fifo-depth = <0x100>;
> +		max-frequency = <200000000>;

> +		power-domains = <&power RV1126_PD_NVM>;

/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: mmc@ffc50000: Unevaluated properties are not allowed ('power-domains' was unexpected)
	From schema: /Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Add power-domains property to rockchip-dw-mshc.yaml.


> +		status = "disabled";
> +	};
> +
> +	sdmmc: mmc@ffc60000 {
> +		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0xffc60000 0x4000>;
> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_SDMMC>, <&cru CLK_SDMMC>,
> +			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
> +		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +		fifo-depth = <0x100>;
> +		max-frequency = <200000000>;
> +		status = "disabled";
> +	};
> +
> +	sdio: mmc@ffc70000 {
> +		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0xffc70000 0x4000>;
> +		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_SDIO>, <&cru CLK_SDIO>,
> +			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
> +		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +		fifo-depth = <0x100>;
> +		max-frequency = <200000000>;
> +		power-domains = <&power RV1126_PD_SDIO>;
> +		status = "disabled";
> +	};
> +
> +	pinctrl: pinctrl {
> +		compatible = "rockchip,rv1126-pinctrl";
> +		rockchip,grf = <&grf>;
> +		rockchip,pmu = <&pmugrf>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +

> +		gpio0: gpio0@ff460000 {

gpio

Use generic node name.


> +			compatible = "rockchip,gpio-bank";
> +			reg = <0xff460000 0x100>;
> +			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +

> +		gpio1: gpio1@ff620000 {

same

> +			compatible = "rockchip,gpio-bank";
> +			reg = <0xff620000 0x100>;
> +			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +

> +		gpio2: gpio2@ff630000 {

same

> +			compatible = "rockchip,gpio-bank";
> +			reg = <0xff630000 0x100>;
> +			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +

> +		gpio3: gpio3@ff640000 {

same

> +			compatible = "rockchip,gpio-bank";
> +			reg = <0xff640000 0x100>;
> +			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		gpio4: gpio4@ff650000 {

> +			compatible = "rockchip,gpio-bank";

same

> +			reg = <0xff650000 0x100>;
> +			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +};
> +
> +#include "rv1126-pinctrl.dtsi"

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
