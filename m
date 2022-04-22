Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02741C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 18:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcWVpVgtCzClFmWu9jJNaAUq1hFgHNna4pbH4YzLpqI=; b=SeyMhTR8OKp9f6
	zBFEwycwPtAc5lRZgQ3IPyCShcZAGdU+ZVYZRZD4zQpy6x1BZwhyuxqAuuT4THK9jdxJk/q+W/LMO
	57A0VaLcCVY45/yVzkwA2168rCMe6RlURJZOmFlheOU6mu3mZ3cBy4nWOvrUejqQ+QdxOnSh9ie4n
	0nX9LAIsf1aiyYsLg9odW3P0IbLbq+mZaGYIVupT8GaLCmVElNbRzRExiHKbXbZzjlsQkcPEd6ZOM
	CBozvHAXhPq31IDfCIGjGyucN0srT0RU5PzACOaJm8E2VWRl2sSGKdz+YYKFv4K2Yf5wjqeeOGPD4
	LiKl7FBvrErxBDFzcLRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhxpe-001wU2-Ka; Fri, 22 Apr 2022 18:16:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhxpS-001wSk-U3; Fri, 22 Apr 2022 18:16:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CE041FB;
 Fri, 22 Apr 2022 11:16:23 -0700 (PDT)
Received: from [10.57.80.98] (unknown [10.57.80.98])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 362863F73B;
 Fri, 22 Apr 2022 11:16:19 -0700 (PDT)
Message-ID: <36551341-60f5-8b61-59d1-176ece8204d6@arm.com>
Date: Fri, 22 Apr 2022 19:16:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCHv1 18/19] arm64: dts: rockchip: Add base DT for rk3588 SoC
Content-Language: en-GB
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-19-sebastian.reichel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220422170920.401914-19-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_111627_120490_54022F58 
X-CRM114-Status: GOOD (  26.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-04-22 18:09, Sebastian Reichel wrote:
> From: Kever Yang <kever.yang@rock-chips.com>
> 
> This initial version supports (single core) CPU, dma, interrupts, timers,
> UART and SDHCI. In short - everything necessary to boot Linux on this
> system on chip.
> 
> The DT is split into rk3588 and rk3588s, which is a reduced version
> (i.e. with less peripherals) of the former.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588.dtsi  |   6 +
>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 501 ++++++++++++++++++++++
>   include/dt-bindings/clock/rk3588-cru.h    |   1 +
>   3 files changed, 508 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> new file mode 100644
> index 000000000000..ddb3ccff1299
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include "rk3588s.dtsi"
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> new file mode 100644
> index 000000000000..f7d3ad4384b3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -0,0 +1,501 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/clock/rk3588-cru.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	compatible = "rockchip,rk3588";
> +
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
> +		serial5 = &uart5;
> +		serial6 = &uart6;
> +		serial7 = &uart7;
> +		serial8 = &uart8;
> +		serial9 = &uart9;
> +	};
> +
> +	clocks {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;

I'm pretty sure that doing clocks as fake buses fell out of favour long ago.

> +
> +		spll: spll {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <702000000>;
> +			clock-output-names = "spll";
> +		};
> +
> +		xin24m: xin24m {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <24000000>;
> +			clock-output-names = "xin24m";
> +		};
> +
> +		xin32k: xin32k {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <32768>;
> +			clock-output-names = "xin32k";
> +		};

Do those two really belong in the SoC DTSI? On previous SoCs they're 
typically external inputs, and while the 24MHz is usually a crystal 
which can be largely taken for granted, the 32KHz is often provided by 
an RTC chip or similar which might need proper modelling.

> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu_l0>;
> +				};
> +			};
> +		};
> +
> +		cpu_l0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			capacity-dmips-mhz = <530>;
> +			clocks = <&scmi_clk SCMI_CLK_CPUL>;
> +			i-cache-size = <32768>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <128>;
> +			d-cache-size = <32768>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache_l0>;
> +			#cooling-cells = <2>;
> +			dynamic-power-coefficient = <228>;
> +		};

Is there any particular reason for not including more of the CPUs?

> +
> +		l2_cache_l0: l2-cache-l0 {
> +			compatible = "cache";
> +			cache-size = <131072>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +			next-level-cache = <&l3_cache>;
> +		};
> +
> +		l3_cache: l3-cache {
> +			compatible = "cache";
> +			cache-size = <3145728>;
> +			cache-line-size = <64>;
> +			cache-sets = <4096>;
> +		};
> +	};
> +
> +	arm-pmu {
> +		compatible = "arm,armv8-pmuv3";

Please use the correct Cortex-A55 compatible.

> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-affinity = <&cpu_l0>;

Is affinity meaningful for a single CPU? If this is going to need to be 
a partitioned PPI once the Cortex-A76 PMU shows up as well, start as you 
mean to go on.

> +	};
> +
> +	firmware {
> +		optee: optee {
> +			compatible = "linaro,optee-tz";
> +			method = "smc";
> +		};
> +
> +		scmi: scmi {
> +			compatible = "arm,scmi-smc";
> +			shmem = <&scmi_shmem>;
> +			arm,smc-id = <0x82000010>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			scmi_clk: protocol@14 {
> +				reg = <0x14>;
> +				#clock-cells = <1>;
> +
> +				assigned-clocks = <&scmi_clk SCMI_SPLL>;
> +				assigned-clock-rates = <700000000>;
> +			};
> +
> +			scmi_reset: protocol@16 {
> +				reg = <0x16>;
> +				#reset-cells = <1>;
> +			};
> +		};
> +
> +		sdei: sdei {
> +			compatible = "arm,sdei-1.0";
> +			method = "smc";
> +		};
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;

A mask representing all 4 of one (of 8) CPUs, for a GICv2 which we don't 
have? I doubt it ;)

> +	};
> +
> +	sram@10f000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0x0010f000 0x0 0x100>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x0 0x0010f000 0x100>;
> +
> +		scmi_shmem: sram@0 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x0 0x100>;
> +		};
> +	};
> +
> +	php_grf: syscon@fd5b0000 {
> +		compatible = "rockchip,rk3588-php-grf", "syscon";
> +		reg = <0x0 0xfd5b0000 0x0 0x1000>;
> +	};
> +
> +	ioc: syscon@fd5f0000 {
> +		compatible = "rockchip,rk3588-ioc", "syscon";
> +		reg = <0x0 0xfd5f0000 0x0 0x10000>;
> +	};
> +
> +	syssram: sram@fd600000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0xfd600000 0x0 0x100000>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0xfd600000 0x100000>;
> +	};
> +
> +	cru: clock-controller@fd7c0000 {
> +		compatible = "rockchip,rk3588-cru";
> +		rockchip,grf = <&php_grf>;
> +		reg = <0x0 0xfd7c0000 0x0 0x5c000>;
> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +
> +		assigned-clocks =
> +			<&cru PLL_PPLL>, <&cru PLL_AUPLL>,
> +			<&cru PLL_NPLL>, <&cru PLL_GPLL>,
> +			<&cru ACLK_CENTER_ROOT>,
> +			<&cru HCLK_CENTER_ROOT>, <&cru ACLK_CENTER_LOW_ROOT>,
> +			<&cru ACLK_TOP_ROOT>, <&cru PCLK_TOP_ROOT>,
> +			<&cru ACLK_LOW_TOP_ROOT>, <&cru PCLK_PMU0_ROOT>,
> +			<&cru HCLK_PMU_CM0_ROOT>, <&cru ACLK_VOP>,
> +			<&cru ACLK_BUS_ROOT>, <&cru CLK_150M_SRC>,
> +			<&cru CLK_GPU>;
> +		assigned-clock-rates =
> +			<100000000>, <786432000>,
> +			<850000000>, <1188000000>,
> +			<702000000>,
> +			<400000000>, <500000000>,
> +			<800000000>, <100000000>,
> +			<400000000>, <100000000>,
> +			<200000000>, <500000000>,
> +			<375000000>, <150000000>,
> +			<200000000>;
> +	};
> +
> +	sdhci: mmc@fe2e0000 {
> +		compatible = "rockchip,rk3588-dwcmshc", "snps,dwcmshc-sdhci";
> +		reg = <0x0 0xfe2e0000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>;
> +		assigned-clocks = <&cru BCLK_EMMC>, <&cru TMCLK_EMMC>, <&cru CCLK_EMMC>;
> +		assigned-clock-rates = <200000000>, <24000000>, <200000000>;
> +		clocks = <&cru CCLK_EMMC>, <&cru HCLK_EMMC>,
> +			 <&cru ACLK_EMMC>, <&cru BCLK_EMMC>,
> +			 <&cru TMCLK_EMMC>;
> +		clock-names = "core", "bus", "axi", "block", "timer";
> +		resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
> +			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
> +			 <&cru SRST_T_EMMC>;
> +		reset-names = "core", "bus", "axi", "block", "timer";
> +		max-frequency = <200000000>;
> +		status = "disabled";
> +	};
> +
> +	gic: interrupt-controller@fe600000 {
> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0xfe600000 0 0x10000>, /* GICD */
> +		      <0x0 0xfe680000 0 0x100000>; /* GICR */
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		its: interrupt-controller@fe640000 {
> +			compatible = "arm,gic-v3-its";
> +			msi-controller;
> +			#msi-cells = <1>;
> +			reg = <0x0 0xfe640000 0x0 0x20000>;
> +		};
> +	};

Does the ITS (and other bits related to GIC memory accesses) actually 
work, or will we have more of the same issues as RK356x?

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
