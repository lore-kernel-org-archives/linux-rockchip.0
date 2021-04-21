Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE851C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 13:36:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39FEE601FD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 13:36:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39FEE601FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GMYcXAdTjb6R2P5mBBIGIO7Eeagmk+lRGxXYisSQlb4=; b=F4P8cVO58QYcF2G8NitQCNAcp
	DZZ2U+MQHLi3hScBOl/0B77Iv8zcvE5R2VMlgRR0mz4KyeiWNLpca4pDoeAJWj2Por3WeoeJd8YBD
	LV8tuIT6L+3cBlI0SzTHuzSfy9hC1zZYgGiqiAHoaQGO9gwY0wvqcryL21iGe2Ta0JkqWDqntCBfB
	E58/6Pd+FrEqjjIIbrP2DxoQUaLmNIDDeO3NVD0wd6F1Dxqb6JvIh0rOnNDu3EgGmaXnhzym1GTUA
	ewCA8hK297+hVQsiykMHpDrWbYRMn8pH6jlknHlgTqMas3+MK7DfZsfm9XrX7KGe3shHd/SCtd7tk
	P3SJCbOtA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZD24-00ETXI-Tk; Wed, 21 Apr 2021 13:36:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZD1d-00ETUj-FE; Wed, 21 Apr 2021 13:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Subject:Cc:To:From:Message-ID:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2siwXKGbWEHGsPCazLkJYJu1SgqIGbrP4YaCymvRjZc=; b=igNAbGSZm47AliHsoXdFOI1pLD
 RuxzIpIuYkHKsImwT5toeo6cw9C7wBDsO2mzKcZVxAsM+yNg3gr83jn890hIeAIXyJmVMkbGrvDUd
 4NuIrYW0yZZlVtkH6j/mfSuCIoTt75rTfMi00m5TA7KGZQoX4/2tXj4RCGBhBsql6d4yeuj3t3xVm
 NKSzBl+w19EJCCam11n5xqB6r5zu22orAFrFzq1QTCUCyTRCgTW0efoO3X9gLn/gbjJI0b7Ikhd/J
 lDN99ID9cJF1sC2//79pJuP0+kRyG99jp4bUUwxrS9SCoNmsZGdyKGTj4v0NDTJ/YL/Zxa+LDIE1k
 HCePPwfg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZD1a-00CvCA-Jn; Wed, 21 Apr 2021 13:36:16 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3AFA611F2;
 Wed, 21 Apr 2021 13:36:13 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lZD1X-008hT6-Vv; Wed, 21 Apr 2021 14:36:12 +0100
Date: Wed, 21 Apr 2021 14:36:10 +0100
Message-ID: <87zgxrpxo5.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: <cl@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com
Subject: Re: [PATCH v1 4/5] arm64: dts: rockchip: add core dtsi for RK3568 SoC
In-Reply-To: <20210421065921.23917-5-cl@rock-chips.com>
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-5-cl@rock-chips.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: cl@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com, cnsztl@gmail.com,
 devicetree@vger.kernel.org, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_063614_732312_D5C68768 
X-CRM114-Status: GOOD (  24.75  )
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

On Wed, 21 Apr 2021 07:59:20 +0100,
<cl@rock-chips.com> wrote:
> 
> From: Liang Chen <cl@rock-chips.com>
> 
> RK3568 is a high-performance and low power quad-core application processor
> designed for personal mobile internet device and AIoT equipments.
> 
> This patch add basic core dtsi file for it.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 2789 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  795 +++++
>  .../boot/dts/rockchip/rockchip-pinconf.dtsi   |  346 ++
>  3 files changed, 3930 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi
>

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
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			#cooling-cells = <2>;
> +		};
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

This doesn't match the GICv3 binding for PPIs.

> +		arm,no-tick-in-suspend;

Oh, really? :-(

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
> +	};
> +
> +	gic: interrupt-controller@fd400000 {
> +		compatible = "arm,gic-v3";
> +		#interrupt-cells = <3>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		interrupt-controller;
> +
> +		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> +		      <0x0 0xfd460000 0 0xc0000>; /* GICR */
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;

Please add the 'mbi-alias' property, which should map onto the GICA
range that GIC600 provides. At least this could be useful to have MSIs
despite the lack of a working ITS. We can work out the usable ranges
on a per-board basis.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
