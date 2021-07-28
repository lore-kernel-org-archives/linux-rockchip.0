Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8751CC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 21:18:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EAB4961039
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 21:17:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EAB4961039
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qg5kriqrlAL+9ixld1B80ImHQdJPrhhr5ee86Ihat9Y=; b=ST32BeA+kMo0mt
	UnNmDSFuRGAa8LLptFUXZDwRZOGu6LiCXhoIRS0pUxKOi2nb+DvkpmzCon5jZRsMg+dXBglNL6oSy
	BlBPKm9YN+uV9prBCziwxKYsV/x158+Jnszil9ZT2rbKcBgXwKKpPVBNxWzE15RmZMpb7wsBpxJyP
	KUOcNehj8wZWdLNnR8UP/gZL5HfoVMdjoUD7tFa/8WlEfWkscG5uM7DLG0TZO3Fdr2f0jZ0yavW0A
	MS33a/dHloLmgDi25JMgAB4fqvfsigC6ndGp7tPYfLqCfgovyxs/1Y6MleEaiGKS+7dkv4VlQ/INx
	KagT7nD2Dn4j1c9oWnNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8qw6-002OX5-UH; Wed, 28 Jul 2021 21:17:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8qvt-002OVz-Nd; Wed, 28 Jul 2021 21:17:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8qvj-00086Y-Gz; Wed, 28 Jul 2021 23:17:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 cl@rock-chips.com, kever.yang@rock-chips.com
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/8] arm64: dts: rockchip: add rk3568 tsadc nodes
Date: Wed, 28 Jul 2021 23:17:30 +0200
Message-ID: <3091522.BEx9A2HvPv@diego>
In-Reply-To: <20210728180034.717953-6-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
 <20210728180034.717953-6-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_141741_835347_1F8F50D6 
X-CRM114-Status: GOOD (  22.19  )
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

Hi Peter, Kever,

Am Mittwoch, 28. Juli 2021, 20:00:31 CEST schrieb Peter Geis:
> Add the thermal and tsadc nodes to the rk3568 device tree.
> There are two sensors, one for the cpu, one for the gpu.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     |  7 ++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 70 +++++++++++++++++++
>  2 files changed, 77 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> index a588ca95ace2..3b1efaf2646e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> @@ -2420,6 +2420,13 @@ spi3m1_cs1: spi3m1-cs1 {
>  	};
>  
>  	tsadc {
> +		/omit-if-no-ref/
> +		tsadc_pin: tsadc-pin {
> +			rockchip,pins =
> +				/* tsadc_pin */
> +				<0 RK_PA1 0 &pcfg_pull_none>;
> +		};
> +

The rk3568-pinctrl.dtsi is autogenerated on Rockchip's side and I don't
want to break that unnecessarily ;-) .

So the question below is more for Kever and Liang:

The tsadc on most mainline Rockchip socs uses the additional init-pinctrl
to set the pin to gpio mode before the tsadc probes and only to the shutdown
function after the tsadc has probed sucessfully. This prevents the
shutdown firing before the tsadc actually attached to the pin function.

Is it possible to fit the above addition pin setting in the database you
have as base for the autogeneration?


Thanks
Heiko





>  		/omit-if-no-ref/
>  		tsadcm0_shut: tsadcm0-shut {
>  			rockchip,pins =
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index fbd9f1c366ff..c74072941da1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -50,6 +50,7 @@ cpu0: cpu@0 {
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x0>;
>  			clocks = <&scmi_clk 0>;
> +			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> @@ -58,6 +59,7 @@ cpu1: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x100>;
> +			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> @@ -66,6 +68,7 @@ cpu2: cpu@200 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x200>;
> +			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> @@ -74,6 +77,7 @@ cpu3: cpu@300 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a55";
>  			reg = <0x0 0x300>;
> +			#cooling-cells = <2>;
>  			enable-method = "psci";
>  			operating-points-v2 = <&cpu0_opp_table>;
>  		};
> @@ -773,6 +777,72 @@ uart9: serial@fe6d0000 {
>  		status = "disabled";
>  	};
>  
> +	thermal_zones: thermal-zones {
> +		cpu_thermal: cpu-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <1000>;
> +
> +			thermal-sensors = <&tsadc 0>;
> +
> +			trips {
> +				cpu_alert0: cpu_alert0 {
> +					temperature = <70000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				cpu_alert1: cpu_alert1 {
> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				cpu_crit: cpu_crit {
> +					temperature = <95000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu_alert0>;
> +					cooling-device =
> +						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		gpu_thermal: gpu-thermal {
> +			polling-delay-passive = <20>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +
> +			thermal-sensors = <&tsadc 1>;
> +		};
> +	};
> +
> +	tsadc: tsadc@fe710000 {
> +		compatible = "rockchip,rk3568-tsadc";
> +		reg = <0x0 0xfe710000 0x0 0x100>;
> +		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> +		assigned-clocks = <&cru CLK_TSADC_TSEN>, <&cru CLK_TSADC>;
> +		assigned-clock-rates = <17000000>, <700000>;
> +		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
> +		clock-names = "tsadc", "apb_pclk";
> +		resets = <&cru SRST_TSADC>, <&cru SRST_P_TSADC>,
> +			 <&cru SRST_TSADCPHY>;
> +		reset-names = "tsadc", "tsadc-apb", "tsadc-phy";
> +		rockchip,grf = <&grf>;
> +		rockchip,hw-tshut-temp = <95000>;
> +		pinctrl-names = "init", "default", "sleep";
> +		pinctrl-0 = <&tsadc_pin>;
> +		pinctrl-1 = <&tsadc_shutorg>;
> +		pinctrl-2 = <&tsadc_pin>;
> +		#thermal-sensor-cells = <1>;
> +		status = "disabled";
> +	};
> +
>  	saradc: saradc@fe720000 {
>  		compatible = "rockchip,rk3568-saradc", "rockchip,rk3399-saradc";
>  		reg = <0x0 0xfe720000 0x0 0x100>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
