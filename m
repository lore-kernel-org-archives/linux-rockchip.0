Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BB6BC001B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 11:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnn6Ki/QEejsGq75WMopvMl4X3bpVF3wf53qxlXyD0k=; b=QtziIemyc3t1kN
	jpH1AfEw1qpiYU0Pf4+8C0iuMvt20IbklyTPSTa25O6q78U5IuCqZ0SDGL7eplOKiCDL/2zOxPlsz
	P+jQNTXN5VT1AnKphWqLtSkOrro+JNU5DE/0uCJWqgcejsypnxf2i6u1o5cgUNYZv25Mph72B91cX
	BiTW8r0w4XDHaby7fH47Oru5bdBM9yNrJry8jcxUteUF9zM7dhTSqYyiG6j2bpzHdEDlGdUQRCa5d
	AGMGgGB1kL8btUAr5YpIzKZ+GhQYAPsG0DFR+iblE+s3FnNofq2Ap3nl38HrovQhutBbR+dSPCeI9
	TRnv3OAQIJc/yGPEknFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTKzt-002TVK-24;
	Tue, 08 Aug 2023 11:35:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTKzp-002TUH-2k;
	Tue, 08 Aug 2023 11:35:31 +0000
Received: from i53875a28.versanet.de ([83.135.90.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qTKzY-0007r7-Mx; Tue, 08 Aug 2023 13:35:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Thomas McKahan <tmckahan@singleboardsolutions.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add NanoPC T6
Date: Tue, 08 Aug 2023 13:35:11 +0200
Message-ID: <1770215.VLH7GnMWUR@diego>
In-Reply-To: <20230808002751.00001385@singleboardsolutions.com>
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
 <f49a803f-9ff4-794e-265b-a98e3711cca8@linaro.org>
 <20230808002751.00001385@singleboardsolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_043529_888732_28257965 
X-CRM114-Status: GOOD (  26.06  )
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

Am Dienstag, 8. August 2023, 06:32:45 CEST schrieb Thomas McKahan:
> On Mon, 7 Aug 2023 08:44:40 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
> > On 02/08/2023 07:14, Thomas McKahan wrote:
> > > Add the NanoPC T6, a single board computer from FriendlyElec based on
> > > the RK3588.
> > > 
> > > Initial device tree supports debug UART, SD, eMMC, PCIe 3, PMIC,
> > > and 40 pin GPIO assignments.
> > > 
> > > Signed-off-by: Thomas McKahan <tmckahan@singleboardsolutions.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> > >  .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 845 ++++++++++++++++++
> > >  2 files changed, 846 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > > index 1ebbb3e9c2f9..e7728007fd1b 100644
> > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > @@ -100,6 +100,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> > > new file mode 100644
> > > index 000000000000..2362da2c53d9
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> > > @@ -0,0 +1,845 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +/*
> > > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > > + * Copyright (c) 2023 Thomas McKahan
> > > + *
> > > + */
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/pinctrl/rockchip.h>
> > > +#include <dt-bindings/usb/pd.h>
> > > +#include "rk3588.dtsi"
> > > +
> > > +/ {
> > > +	model = "FriendlyElec NanoPC-T6";
> > > +	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
> > > +
> 
> ...
> 
> > > +&spi2 {
> > > +	status = "okay";
> > > +	assigned-clocks = <&cru CLK_SPI2>;
> > > +	assigned-clock-rates = <200000000>;
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
> > > +	num-cs = <1>;
> > > +
> > > +	pmic@0 {
> > > +		compatible = "rockchip,rk806";
> > > +		spi-max-frequency = <1000000>;
> > > +		reg = <0x0>;
> > > +
> > > +		interrupt-parent = <&gpio0>;
> > > +		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> > > +
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
> > > +			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> > > +
> > > +		vcc1-supply = <&vcc4v0_sys>;
> > > +		vcc2-supply = <&vcc4v0_sys>;
> > > +		vcc3-supply = <&vcc4v0_sys>;
> > > +		vcc4-supply = <&vcc4v0_sys>;
> > > +		vcc5-supply = <&vcc4v0_sys>;
> > > +		vcc6-supply = <&vcc4v0_sys>;
> > > +		vcc7-supply = <&vcc4v0_sys>;
> > > +		vcc8-supply = <&vcc4v0_sys>;
> > > +		vcc9-supply = <&vcc4v0_sys>;
> > > +		vcc10-supply = <&vcc4v0_sys>;
> > > +		vcc11-supply = <&vcc_2v0_pldo_s3>;
> > > +		vcc12-supply = <&vcc4v0_sys>;
> > > +		vcc13-supply = <&vcc_1v1_nldo_s3>;
> > > +		vcc14-supply = <&vcc_1v1_nldo_s3>;
> > > +		vcca-supply = <&vcc4v0_sys>;
> > > +
> > > +		gpio-controller;
> > > +		#gpio-cells = <2>;
> > > +
> > > +		rk806_dvs1_null: dvs1-null-pins {
> > > +			pins = "gpio_pwrctrl2";
> > > +			function = "pin_fun0";
> > > +		};
> > > +
> > > +		rk806_dvs2_null: dvs2-null-pins {
> > > +			pins = "gpio_pwrctrl2";
> > > +			function = "pin_fun0";
> > > +		};
> > > +
> > > +		rk806_dvs3_null: dvs3-null-pins {
> > > +			pins = "gpio_pwrctrl3";
> > > +			function = "pin_fun0";
> > > +		};
> > > +
> > > +		regulators {
> > > +			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> > > +				regulator-boot-on;  
> > 
> > Boolean properties are not first, but last. regulator-name is the first
> > one. This odd style...
> > 
> 
> I agree, however it seems the norm in Rockchip devices. This will
> become an outlier in Rockchip but fall in line with the general case.
> I'll put it in V2 with the other mentioned fixes unless a conflicting 
> opinion is expressed. 

I definitly do prefer regulator-name to be the first regulator-* (same as
compatible for regular nodes) and I think generally I do catch outliers
in this .

But for the rest of the propeties I guess it's different. While true I
followed a scheme of booleans at the bottom in the past, going with
"name at the top, rest alphabetically" is way easier to explain to people.

[normal nodes should do: {compatible, regs, interrupts, ..alphabetical..,
  status} of course ]

And of course regulator nodes are generally in board-files not in central
soc dtsis and if needed I'll also just move things around when applying ;-).


Heiko


> 
> > > +				regulator-min-microvolt = <550000>;
> > > +				regulator-max-microvolt = <950000>;
> > > +				regulator-ramp-delay = <12500>;
> > > +				regulator-name = "vdd_gpu_s0";
> > > +				regulator-enable-ramp-delay = <400>;
> > > +
> > > +				regulator-state-mem {
> > > +					regulator-off-in-suspend;
> > > +				};
> > > +			};  
> > 
> > 
> > 
> > Best regards,
> > Krzysztof
> > 
> 
> Best Regards,
> Thomas
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
