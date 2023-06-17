Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A44EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 11:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bV650QCGBX2l53q6ADGyFdGSXk1x6OAQqQRdCmgTdRM=; b=Q39a1h08kBBW+qnuGhIz4jCFPO
	Xt2Qmm4A7pTlEUVLh+XbdFbgeuTzMkoLDElt31coQfoGjnPa4k8qwAtqhva19faueyXGCW2lpJZwO
	vPshMwYsM9ss0mcXFcnfcj/D/pIFBrcUXkDX/191Bt8wYW38sZulgkkNo+riCN1lHUQefPAuWp6WA
	S0gyC6AMoT+f/pH/GoN114i9dacEQvkYz5fm7H62RBqIsDNJwJFYKgnLU2ty6SpbYnpHT21bTbI2L
	fzLG6uTNwudsST8PRzn4TSvwUCitIVfH+gJ3v1zgZTOtkSHbgbhL11LcNUlHSf2L5i3zA3nx7CdZs
	OyD/wWog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAU4p-003U4h-2r;
	Sat, 17 Jun 2023 11:26:43 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAU4k-003U2n-1I;
	Sat, 17 Jun 2023 11:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687001182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o5l1HjnqnDISiqhRlWYvekNpiQAl/3p9MARb7LEs9vg=;
	b=C5aolF9Z06fTrdPi8mcXc2DHtTMvON/XlNAZmWJHJ9d4zRc53CFuoLe5uVdNoNXdtKFfFx
	mzY/vu1cbUa1TkeYEnc65qQodXowHARCF4erZFzhYJbKSWQY722QkI8288eGltmfAaPZPq
	Nk2z2flqC0xIOpb/rlXHRULs/ster4yZgiNqyK81DFR5gxIWDX+fygjlefiKbkOTK0FsBZ
	hhie87wSNGMWZ671aG2IWi4njBzFmi39fYi+guChghtSD9b/Ko5U4vIeTIDZBQ20/OTOZg
	k3qpXXDQH4qcbXZ5yGfNoRVJTX1AzPDKfSl36kyeruox4ctdhiMawnuaqCJTpA==
Message-Id: <1687000758103.681646360.380124875@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, pgwipeout@gmail.com
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add dts for Firefly Station
 P2 aka rk3568-roc-pc
Date: Sat, 17 Jun 2023 11:26:19 +0000
In-Reply-To: <b62a188d-fa47-2f7f-7c99-90e5f729c227@kernel.org>
References: <b62a188d-fa47-2f7f-7c99-90e5f729c227@kernel.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_042639_064320_32D778AE 
X-CRM114-Status: GOOD (  24.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hello  Krzysztof,
Thank you for spending your precious time on reviewing this patch. 

My apologies for the silly mistakes, Thank you for the detailed review. 
I will fix the patch and send as version-2 to all the latest maintainer.
It have been used in manjaro kernel since long time and some of the users 
are already using the device with this patch.

It will be better if it can be tested by more developers and reviewed 
before it gets merged.

Recently I fixed the warning before sending the patches, Build log can be 
found here:
https://gitlab.manjaro.org/manjaro-arm/packages/core/linux-rc/-/jobs/12638/raw



On Saturday 17 June 2023 10:52:59 (+03:00), Krzysztof Kozlowski wrote:

 > On 16/06/2023 23:10, Furkan Kardame wrote:
 > > Add dts for Firefly Station P2.
 > > Working IO:
 > > * eMMC
 > > * HDMI
 > > * LAN
 > > * LED
 > > * SD Card
 > > * UART
 > > * USB2
 > > * USB3
 > > 
 > > Signed-off-by: Furkan Kardame 
 > > ---
 > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 > >  .../arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 689 
++++++++++++++++++
 > >  2 files changed, 690 insertions(+)
 > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
 > > 
 > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile 
b/arch/arm64/boot/dts/rockchip/Makefile
 > > index 2d585bbb8..2085b00f3 100644
 > > --- a/arch/arm64/boot/dts/rockchip/Makefile
 > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
 > > @@ -90,6 +90,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
 > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
 > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 > > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts 
b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
 > > new file mode 100644
 > > index 000000000..5946ad3ea
 > > --- /dev/null
 > > +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
 > > @@ -0,0 +1,689 @@
 > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 > > +/*
 > > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
 > > + *
 > > + */
 > > +
 > > +/dts-v1/;
 > > +
 > > +#include 
 > > +#include 
 > > +#include 
 > > +#include "rk3568.dtsi"
 > > +
 > > +/ {
 > > +	model = "Firefly Station P2";
 > > +	compatible = "firefly,rk3568-roc-pc", "rockchip,rk3568";
 > > +
 > > +	aliases {
 > > +		ethernet0 = &gmac0;
 > > +		ethernet1 = &gmac1;
 > > +		mmc0 = &sdmmc0;
 > > +		mmc1 = &sdhci;
 > > +	};
 > > +
 > > +	chosen: chosen {
 > > +		stdout-path = "serial2:1500000n8";
 > > +	};
 > > +> +	dc_12v: dc-12v {
 > 
 > Node names should be generic. See also explanation and list of examples
 > in DT specification:
 > 
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
 
> So at least regulator prefix or suffix.
 > 
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "dc_12v";
 > > +		regulator-always-on;
 > > +		regulator-boot-on;
 > > +		regulator-min-microvolt = <12000000>;
 > > +		regulator-max-microvolt = <12000000>;
 > > +	};
 > > +
 > > +	gmac0_clkin: external-gmac0-clock {
 > > +		compatible = "fixed-clock";
 > > +		clock-frequency = <125000000>;
 > > +		clock-output-names = "gmac0_clkin";
 > > +		#clock-cells = <0>;
 > > +	};
 > > +
 > > +	gmac1_clkin: external-gmac1-clock {
 > > +		compatible = "fixed-clock";
 > > +		clock-frequency = <125000000>;
 > > +		clock-output-names = "gmac1_clkin";
 > > +		#clock-cells = <0>;
 > > +	};
 > > +
 > > +	leds {
 > > +		compatible = "gpio-leds";
 > > +
 > > +		led-user {
 > > +			label = "user-led";
 > > +			default-state = "on";
 > > +			gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
 > > +			linux,default-trigger = "heartbeat";
 > > +			pinctrl-names = "default";
 > > +			pinctrl-0 = <&user_led_enable_h>;
 > > +			retain-state-suspended;
 > > +		};
 > > +	};
 > > +
 > > +	hdmi-con {
 > > +		compatible = "hdmi-connector";
 > > +		type = "a";
 > > +
 > > +		port {
 > > +			hdmi_con_in: endpoint {
 > > +			remote-endpoint = <&hdmi_out_con>;
 > > +			};
 > > +		};
 > > +	};
 > > +
 > > +	sdio_pwrseq: sdio-pwrseq {
 > > +		status = "okay";
 > 
 > Why do you need it?
Will be removed and will add it back later with wifi patch in future.

 > 
 > > +		compatible = "mmc-pwrseq-simple";
 > > +		clocks = <&rk809 1>;
 > > +		clock-names = "ext_clock";
 > > +		pinctrl-names = "default";
 > > +		pinctrl-0 = <&wifi_enable_h>;
 > > +		reset-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
 > > +	};
 > > +
 > > +	pcie30_avdd0v9: pcie30-avdd0v9 {
 > 
 > Same naming problem.
 > 
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "pcie30_avdd0v9";
 > > +		regulator-always-on;
 > > +		regulator-boot-on;
 > > +		regulator-min-microvolt = <900000>;
 > > +		regulator-max-microvolt = <900000>;
 > > +		vin-supply = <&vcc3v3_sys>;
 > > +	};
 > > +
 > > +	pcie30_avdd1v8: pcie30-avdd1v8 {
 > 
 > Ditto
 > 
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "pcie30_avdd1v8";
 > > +		regulator-always-on;
 > > +		regulator-boot-on;
 > > +		regulator-min-microvolt = <1800000>;
 > > +		regulator-max-microvolt = <1800000>;
 > > +		vin-supply = <&vcc3v3_sys>;
 > > +	};
 > > +
 > > +	vcc3v3_sys: vcc3v3-sys {
 > 
 > Ditto
 > 
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "vcc3v3_sys";
 > > +		regulator-always-on;
 > > +		regulator-boot-on;
 > > +		regulator-min-microvolt = <3300000>;
 > > +		regulator-max-microvolt = <3300000>;
 > > +		vin-supply = <&dc_12v>;
 > > +	};
 > > +
 > > +	vcc3v3_pcie: gpio-regulator {
 > 
 > Oh, suffix appeared.
 > 
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "vcc3v3_pcie";
 > > +		enable-active-high;
 > > +		regulator-min-microvolt = <3300000>;
 > > +		regulator-max-microvolt = <3300000>;
 > > +		pinctrl-names = "default";
 > > +		pinctrl-0 = <&vcc3v3_pcie_en_pin>;
 > > +		gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
 > > +		startup-delay-us = <5000>;
 > > +		vin-supply = <&vcc5v0_sys>;
 > > +	};
 > > +
 > > +	vcc5v0_sys: vcc5v0-sys {
 > 
 > And gone.
 > 
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "vcc5v0_sys";
 > > +		regulator-always-on;
 > > +		regulator-boot-on;
 > > +		regulator-min-microvolt = <5000000>;
 > > +		regulator-max-microvolt = <5000000>;
 > > +		vin-supply = <&dc_12v>;
 > > +	};
 > > +
 > > +	vcc5v0_usb: vcc5v0-usb {
 > > +		compatible = "regulator-fixed";
 > > +		regulator-name = "vcc5v0_usb";
 > > +		regulator-always-on;
 > > +		regulator-boot-on;
 > > +		regulator-min-microvolt = <5000000>;
 > > +		regulator-max-microvolt = <5000000>;
 > > +		vin-supply = <&vcc5v0_sys>;
 > > +	};
 > > +
 > 
 > ...
 > 
 > > +
 > > +			vdda0v9_pmu: LDO_REG3 {
 > > +				regulator-name = "vdda0v9_pmu";
 > > +				regulator-always-on;
 > > +				regulator-boot-on;
 > > +				regulator-min-microvolt = <900000>;
 > > +				regulator-max-microvolt = <900000>;
 > > +
 > > +				regulator-state-mem {
 > > +					regulator-on-in-suspend;
 > > +					regulator-suspend-microvolt = <900000>;
 > > +					};
 > 
 > Fix indentation.
 > 
 > > +			};
 > > +
 > > +			vccio_acodec: LDO_REG4 {
 > > +				regulator-name = "vccio_acodec";
 > > +				regulator-min-microvolt = <3300000>;
 > > +				regulator-max-microvolt = <3300000>;
 > > +
 > > +				regulator-state-mem {
 > > +					regulator-off-in-suspend;
 > > +				};
 > > +			};
 > > +
 > 
 > > +
 > > +	pcie {
 > > +		pcie_reset_pin: pcie-reset-pin {
 > > +			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 > > +		};
 > > +		vcc3v3_pcie_en_pin: vcc3v3-pcie-en-pin {
 > > +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 > > +		};
 > > +	};
 > > +
 > > +	pmic {
 > > +		pmic_int: pmic_int {
 > 
 > No underscores in node names.
 > 
 > Are you sure this does not cause `make dtsb_check` warnings?
 > 
 > Best regards,
 > Krzysztof
 > 
 > 

Regards,
Furkan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
