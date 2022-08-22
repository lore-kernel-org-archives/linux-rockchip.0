Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 612E6C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 08:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DICnt8dKdqSiuYbl+dSsZrmDNv9yqPPxw1VhuPL9Z6Y=; b=joItM24u+lEYbt
	tEpcGwd2OmyaSjo5GYjUiSFH1yjEepwVZEZnyUosqli6Xkq28veTfmBAj31ojjm61TpG+92zXnNqe
	p3CiKQgG2DviZM1YURijzrxD/ewAqqsSNaYyS+oYL2163aBzHkZ2ZA50y6YiDOoqawQQo5MCFWAQP
	XwG3QZBII11Q46QGQKTLs5dRXP1+KmlQWfjB6gJ1IlXspt0Vyas83U5TFuRarnmkvp+7+fVYwIL3O
	rYhKW69cnsLVrfn9MjAwfMowtzttV3l2Coi3jnAHD06OocFyH/avUFPFQ+x2QJHKgibd/56aSZ+Eu
	ajVLjzUZNylvlZWBfVZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3BB-006gJp-K4; Mon, 22 Aug 2022 08:53:05 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2sU-006Vm3-9O; Mon, 22 Aug 2022 08:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1661157220; bh=KF38YCEGrviEtxAAbqrGcqiLu8O/FWZi1h5lYiuNr7s=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=ihjEe30WkNiuYGt59T9pVeSq6/MYPz2e8IUvySfnvYXj9UWyADCudVeXTFBCztUSF
	 BUmNBg5ACaKDCIdiRSV61AiCHbrWtlYBrUc5rW7NJA8j/hnDfYB40XuvyTlXyVaMwI
	 BTVC9vNYysNhaoQnaDaZn4KRe3ZqChVlFAMdwEyc=
Date: Mon, 22 Aug 2022 10:33:39 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>,
	=?utf-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4=?= Prado <n@nfraprado.net>
Subject: Re: [PATCH v4 1/1] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Message-ID: <20220822083339.o6bqlyirrm5hvjbc@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>,
	=?utf-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4=?= Prado <n@nfraprado.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20220822012449.21005-1-tom@tom-fitzhenry.me.uk>
 <20220822012449.21005-2-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220822012449.21005-2-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_013347_333798_B264CE88 
X-CRM114-Status: GOOD (  15.23  )
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

Hello Tom,

On Mon, Aug 22, 2022 at 11:08:08AM +1000, Tom Fitzhenry wrote:
> From: Martijn Braam <martijn@brixit.nl>
> 
> This is a basic DT containing regulators and UART, intended to be a
> base that myself and others can add additional nodes in future patches.
> 

[...]

> +
> +	vcc_sys: vcc-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcca1v8_s3: vcc1v8-s3-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcca1v8_s3";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;
> +	status = "okay";
> +
> +	rk818: pmic@1c {
> +		compatible = "rockchip,rk818";
> +		reg = <0x1c>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PC5 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc6-supply = <&vcc_sys>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc_sys>;
> +		vcc9-supply = <&vcc3v3_sys>;
> +
> +		regulators {
> +			vdd_cpu_l: DCDC_REG1 {
> +				regulator-name = "vdd_cpu_l";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <875000>;
> +				regulator-max-microvolt = <975000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_center: DCDC_REG2 {
> +				regulator-name = "vdd_center";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1350000>;

Looks like a wrong top voltage. https://megous.com/dl/tmp/ad3dcc62bd00f41f.png

> +				regulator-ramp-delay = <6001>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: DCDC_REG4 {
> +				regulator-name = "vcc_1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcca3v0_codec: LDO_REG1 {
> +				regulator-name = "vcca3v0_codec";
> +				regulator-always-on;
> +				regulator-boot-on;

This should not be always on, but only enabled by the codec when needed.
You don't have codec described in this DT.

> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc3v0_touch: LDO_REG2 {
> +				regulator-name = "vcc3v0_touch";
> +				regulator-always-on;
> +				regulator-boot-on;

This should not be always on. It should be enabled by touch controller,
when needed. You don't have touch controller described in this DT.

> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcca1v8_codec: LDO_REG3 {
> +				regulator-name = "vcca1v8_codec";
> +				regulator-always-on;
> +				regulator-boot-on;

This should not be always on, but only enabled by the codec when needed,
I suppose. Also modem codec is supplied by vcc1v8_codec which may need
a gpio configured as pull-down or drive low to be properly disabled,
and it is not defined in this DT. Please make sure that regulator's input
doesn't float and is disabled by default.

> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			rk818_pwr_on: LDO_REG4 {
> +				regulator-name = "rk818_pwr_on";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG5 {
> +				regulator-name = "vcc_3v0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v5: LDO_REG6 {
> +				regulator-name = "vcc_1v5";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc1v8_dvp: LDO_REG7 {
> +				regulator-name = "vcc1v8_dvp";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +
> +			vcc3v3_s3: LDO_REG8 {
> +				regulator-name = "vcc3v3_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG9 {
> +				regulator-name = "vccio_sd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +
> +			vcc3v3_s0: SWITCH_REG {
> +				regulator-name = "vcc3v3_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel1_pin>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <875000>;
> +		regulator-max-microvolt = <1150000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: regulator@41 {
> +		compatible = "silergy,syr828";
> +		reg = <0x41>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel2_pin>;
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <875000>;
> +		regulator-max-microvolt = <975000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&cluster0_opp {
> +	opp04 {
> +		status = "disabled";
> +	};
> +
> +	opp05 {
> +		status = "disabled";
> +	};
> +};
> +
> +&cluster1_opp {
> +	opp06 {
> +		opp-hz = /bits/ 64 <1500000000>;
> +		opp-microvolt = <1100000 1100000 1150000>;
> +	};
> +
> +	opp07 {
> +		status = "disabled";
> +	};
> +};
> +
> +&gpu_opp_table {
> +	opp00 {
> +		opp-hz = /bits/ 64 <200000000>;
> +		opp-microvolt = <825000 825000 975000>;
> +	};
> +	opp01 {
> +		opp-hz = /bits/ 64 <297000000>;
> +		opp-microvolt = <825000 825000 975000>;
> +	};
> +	opp02 {
> +		opp-hz = /bits/ 64 <400000000>;
> +		opp-microvolt = <825000 825000 975000>;
> +	};
> +	opp03 {
> +		opp-hz = /bits/ 64 <500000000>;
> +		opp-microvolt = <875000 875000 975000>;
> +	};
> +	opp04 {
> +		opp-hz = /bits/ 64 <600000000>;
> +		opp-microvolt = <925000 925000 975000>;
> +	};

^^^ Why replicate all these OPPs, when they have identical preferred voltage
in rk3399-opp.dtsi? Also GPU is not being enabled in the DT.

You don't need display output support to enable the gpu right away.

> +	opp05 {
> +		status = "disabled";
> +	};
> +};
> +
> +

^ extra space

Thank you,
	Ondrej

> +&io_domains {
> +	bt656-supply = <&vcc1v8_dvp>;
> +	audio-supply = <&vcca1v8_codec>;
> +	sdmmc-supply = <&vccio_sd>;
> +	gpio1830-supply = <&vcc_3v0>;
> +	status = "okay";
> +};
> +
> +&pmu_io_domains {
> +	pmu1830-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	buttons {
> +		pwrbtn_pin: pwrbtn-pin {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vsel1_pin: vsel1-pin {
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		vsel2_pin: vsel2-pin {
> +			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	max-frequency = <150000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
> +	vmmc-supply = <&vcc3v3_sys>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs200-1_8v;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>;
> +	rockchip,hw-tshut-polarity = <1>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> -- 
> 2.37.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
