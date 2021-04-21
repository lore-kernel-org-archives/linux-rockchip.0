Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 468B2C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:14:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1FF356142B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:14:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1FF356142B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CFYa9fh1tXAUPfpfy9oCJ9Tx5G9akZLYnfqlsCgZFuY=; b=TDwgCIY3lq9Wj/5BhVJYSUcGD
	XdRwRJN9HpK2wB2QOZg5xirIRDOk3pzyzEYUVtzblA+l2N82YO4iNPzd9ehgBiXZBORG1rlQi6UyU
	AymB+DhPdlyp/HUn7rLjnnm2+Zn4Ygz4CD7rlhhHVFcTovuq4cciuBq03VuEQ+lopTkUVDFE7AAX9
	KzBUagVDAT5/ym3vX4822wr/ECsj+hG36w2so2KVZVlDL5t/rC2bihrfwbjVvXGXRs1s+IpBrVbb+
	Jy0UYcJbvrLaBJHgMaL6zZZ7Pk44cug5HWoHDjE/whbWmQzgJSKLdTFaw2VwlV7gC8XyS84ywFzoV
	w4tPzYyZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ8wN-00E6AX-FZ; Wed, 21 Apr 2021 09:14:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8vN-00E5mf-JQ; Wed, 21 Apr 2021 09:13:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=fKUpMB66LsqDMN8FaomupFUqv3r6klHoti1lveveq+0=; b=UHJ2dn/9HNEE0yMD+7Nvg2aE1E
 dgMl0cGu+bwpzD4WNFE3Ax7SgOegqBxuY9NCPkoAM29TPlMDaWdFCZAv2Atoh+yQek7x8COTn9ksu
 57yF++/edfm79/AYz6sZPpLbaez8xhRs22p5f6kJjToYxyF9nVA2dZQWK6Y/I2m/OwAA/fK3dKjEB
 YcAXclzlVaYKuJ0+CWTlHPKAx9reJYMGNg4SxWvKBOcXu5G6UM4RRfSGY5GJvEZ4NLgejTcukQwmH
 dGdrrKlHcD6Jw33KytOY2gQ6iA1QOyFdZBQd0AUmOb4TNLs8BCdy0sqSPtpJbmSYgB+7/uViLKLRq
 qjkFtiDA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8vJ-00CkCR-Rw; Wed, 21 Apr 2021 09:13:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lZ8v3-0001ux-7m; Wed, 21 Apr 2021 11:13:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cl@rock-chips.com
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, cl@rock-chips.com, ezequiel@collabora.com,
 kever.yang@rock-chips.com
Subject: Re: [PATCH v1 4/5] arm64: dts: rockchip: add core dtsi for RK3568 SoC
Date: Wed, 21 Apr 2021 11:13:11 +0200
Message-ID: <11131098.F0gNSz5aLb@diego>
In-Reply-To: <20210421065921.23917-5-cl@rock-chips.com>
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-5-cl@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_021330_089489_4669D6FD 
X-CRM114-Status: GOOD (  32.37  )
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

Am Mittwoch, 21. April 2021, 08:59:20 CEST schrieb cl@rock-chips.com:
> From: Liang Chen <cl@rock-chips.com>
> 
> RK3568 is a high-performance and low power quad-core application processor
> designed for personal mobile internet device and AIoT equipments.
> 
> This patch add basic core dtsi file for it.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>

this is a first round of basic stuff :-) .

First of all, I really like the move of moving the pretty standardized
pinconfig entries to the rockchip-pinconf.dtsi .

(1) But please move this into a separate patch to make that more visible
and maybe even convert _some_ or all arm64 Rockchip socs to use that
as well

"arm64: dts: rockchip: add generic pinconfig settings used by most Rockchip socs

The pinconfig settings for Rockchip SoCs are pretty similar on all socs,
so move them to a shared dtsi to be included, instead of redefining them
for each soc"

(2) I also like the external rk3568-pinctrl approach with the dtsi getting
auto-generated. This will probably help us in keeping pinctrl settings
synchronous between mainline and the vendor kernel.

(3) From my basic understanding the rk3568 is basically a rk3566 + more
peripherals, so ideally they would share the basic ones in a rk3566.dtsi
which the rk3568.dtsi then could include and extend with its additional
peripherals.

With at least the pine64 boards being based on the rk3566, there probably
will be quite a mainline use of it as well.

Or is there something that would prevent this?


More below:

> ---
>  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 2789 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  795 +++++
>  .../boot/dts/rockchip/rockchip-pinconf.dtsi   |  346 ++
>  3 files changed, 3930 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> new file mode 100644
> index 000000000000..92b315763dc0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> @@ -0,0 +1,2789 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rockchip-pinconf.dtsi"
> +
> +/*
> + * This file is auto generated by pin2dts tool, please keep these code
> + * by adding changes at end of this file.
> + */
> +&pinctrl {
> +	acodec {
> +		/omit-if-no-ref/
> +		acodec_pins: acodec-pins {
> +			rockchip,pins =
> +				/* acodec_adc_sync */
> +				<1 RK_PB1 5 &pcfg_pull_none>,
> +				/* acodec_adcclk */
> +				<1 RK_PA1 5 &pcfg_pull_none>,
> +				/* acodec_adcdata */
> +				<1 RK_PA0 5 &pcfg_pull_none>,
> +				/* acodec_dac_datal */
> +				<1 RK_PA7 5 &pcfg_pull_none>,
> +				/* acodec_dac_datar */
> +				<1 RK_PB0 5 &pcfg_pull_none>,
> +				/* acodec_dacclk */
> +				<1 RK_PA3 5 &pcfg_pull_none>,
> +				/* acodec_dacsync */
> +				<1 RK_PA5 5 &pcfg_pull_none>;
> +		};
> +	};

can you adapt your pin2dts tool to insert a blank line here please?

> +	audiopwm {
> +		/omit-if-no-ref/
> +		audiopwm_lout: audiopwm-lout {
> +			rockchip,pins =
> +				/* audiopwm_lout */
> +				<1 RK_PA0 4 &pcfg_pull_none>;
> +		};

same here and of course below.

I.e. in a list of subnodes it would be really nice if you could add a blank
line above every subnode - except the first of course ;-)

So,
+	audiopwm {
+		/omit-if-no-ref/
+		audiopwm_lout: audiopwm-lout {

does not get a blank line before audiopwm-lout, but between audiopwn-lout
and the next sub node.


> +		/omit-if-no-ref/
> +		audiopwm_loutn: audiopwm-loutn {
> +			rockchip,pins =
> +				/* audiopwm_loutn */
> +				<1 RK_PA1 6 &pcfg_pull_none>;
> +		};

[...]

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> new file mode 100644
> index 000000000000..ac8db2f54f2b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -0,0 +1,795 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/clock/rk3568-cru.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> +#include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +/ {
> +	compatible = "rockchip,rk3568";
> +
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial2 = &uart2;
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			clocks = <&scmi_clk 0>;

what is <&scmi_clk 0>.

I see the rk3568 clk-driver defining our standard ARMCLK, so I'd ask for
an explanation (in the commit message maybe) what makes the scmi clk
different and especially what firmware-dependencies arise.

Also it would be very cool if Rockchip could upstream rk3568-support to
mainline TF-A, so that people don't need binary blobs for this.


> +			operating-points-v2 = <&cpu0_opp_table>;
> +			#cooling-cells = <2>;
> +		};

blank lines between nodes in the same hierarchy level

> +		cpu1: cpu@100 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x0 0x100>;
> +			enable-method = "psci";
> +			operating-points-v2 = <&cpu0_opp_table>;
> +		};
> +		cpu2: cpu@200 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x0 0x200>;
> +			enable-method = "psci";
> +			operating-points-v2 = <&cpu0_opp_table>;
> +		};
> +		cpu3: cpu@300 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x0 0x300>;
> +			enable-method = "psci";
> +			operating-points-v2 = <&cpu0_opp_table>;
> +		};
> +	};
> +
> +	cpu0_opp_table: cpu0-opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <825000 825000 1150000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000 825000 1150000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <825000 825000 1150000>;
> +			opp-suspend;
> +		};
> +		opp-1104000000 {
> +			opp-hz = /bits/ 64 <1104000000>;
> +			opp-microvolt = <825000 825000 1150000>;
> +		};
> +		opp-1416000000 {
> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <900000 900000 1150000>;
> +		};
> +		opp-1608000000 {
> +			opp-hz = /bits/ 64 <1608000000>;
> +			opp-microvolt = <975000 975000 1150000>;
> +		};
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <1050000 1050000 1150000>;
> +		};
> +		opp-1992000000 {
> +			opp-hz = /bits/ 64 <1992000000>;
> +			opp-microvolt = <1150000 1150000 1150000>;
> +		};
> +	};
> +
> +	arm-pmu {
> +		compatible = "arm,cortex-a55-pmu", "arm,armv8-pmuv3";
> +		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> +	};
> +
> +	firmware {
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
> +			};
> +		};
> +
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
> +		arm,no-tick-in-suspend;
> +	};
> +
> +	xin24m: xin24m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xin24m";
> +	};
> +
> +	xin32k: xin32k {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "xin32k";
> +		#clock-cells = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&clk32k_out0>;
> +	};
> +
> +	scmi_shmem: scmi-shmem@10f000 {
> +		compatible = "arm,scmi-shmem";
> +		reg = <0x0 0x0010f000 0x0 0x100>;

are you sure this works in mainline?

I.e. looking at Documentation/devicetree/bindings/arm/arm,scmi.txt
it talks about arm,scmi-shmem being part of a defined sram area
while the node above seems to be in main memory?


> +	};
> +
> +	gic: interrupt-controller@fd400000 {
> +		compatible = "arm,gic-v3";

reg + interrupts up here below compatible please (+rest alphabetically sorted)


> +		#interrupt-cells = <3>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		interrupt-controller;
> +
> +		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> +		      <0x0 0xfd460000 0 0xc0000>; /* GICR */
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +	};

> diff --git a/arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi b/arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi
> new file mode 100644
> index 000000000000..0c292ef8a87a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi
> @@ -0,0 +1,346 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +&pinctrl {

no blank line here please ;-)

The other blank lines below are correct though

And as said at the top, please move into a separate patch and
maybe convert some other Rockchip arm64 socs to it as well ;-) .


> +
> +	/omit-if-no-ref/
> +	pcfg_pull_up: pcfg-pull-up {
> +		bias-pull-up;
> +	};
> +
> +	/omit-if-no-ref/
> +	pcfg_pull_down: pcfg-pull-down {
> +		bias-pull-down;
> +	};
> +
> +	/omit-if-no-ref/
> +	pcfg_pull_none: pcfg-pull-none {
> +		bias-disable;
> +	};
> +


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
