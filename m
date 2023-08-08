Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2219C001DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 04:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slReMitJdzvHzUp8v7/9vLm0p2lRICBWpyzwPbRGK7E=; b=F1TZ/O4WWbZd8x
	9O9U7hfqiUja6vDDd/xU+hGTcl2EeUpOoyZUqTDuhuIYdsAJROe2jnchv36Eji1MbYU9X4k2vnu9R
	+wnOm+T4HszKXszpkKInjuaoOQw4ymxn8HJvt4WbMLzr4nN2ukh5LtHykGoowMcTKvBsGRMrukcyz
	guHDtkX53JSxGcF1iXInoEnvSywLqhBHwh7sAK/qzDjyntSQZY6MFwzjQU+I4yKV9Y2Lqc9rKNx2j
	Bla1pZHXY9hP5GyugV97t+mnCipkyPUXtlWMKyjxH2RcGCsNc7IiA+FHPYjBpdJoIT1o8fdrNqkDS
	H3QdKn+6FKuClSpnRpDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTEP5-001iPp-1c;
	Tue, 08 Aug 2023 04:33:07 +0000
Received: from omta039.useast.a.cloudfilter.net ([44.202.169.38])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTEP1-001iPD-1z
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 04:33:05 +0000
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTP
	id T22TqtXuDyYOwTEOmqWMYV; Tue, 08 Aug 2023 04:32:49 +0000
Received: from just2025.justhost.com ([173.254.28.237])
	by cmsmtp with ESMTPS
	id TEOmqq7MikixlTEOmqCE6p; Tue, 08 Aug 2023 04:32:48 +0000
X-Authority-Analysis: v=2.4 cv=YtMc+qUX c=1 sm=1 tr=0 ts=64d1c570
 a=Jt2RHIFfQig1ELqEZVeWfA==:117 a=Jt2RHIFfQig1ELqEZVeWfA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=kj9zAlcOel0A:10 a=UttIx32zK-AA:10 a=5SfhNeb3QxAA:10 a=KKAkSRfTAAAA:8
 a=DgXrqYuCAAAA:8 a=GSijrbc5iI-EyksDHAcA:9 a=CjuIK1q_8ugA:10
 a=cvBusfyB2V15izCimMoJ:22 a=NFkmT8Fa3oR8cXbSjPxL:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=singleboardsolutions.com; s=default; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rjTn9RMqmc9D6A5adLY0IpZ/5DQrAzRrHeDSqfaYass=; b=rYt3grja0MVGFWW41s6aVLLrvM
	MWtyTwLmWb8Danll0iumxCfgI18R9xx0FrYngNIcBojUsF63VnhvRTb5FuRqSzu5wwOiwsYsd3Un0
	aFIT4dNjd1vv6RFliz0pdCmfbi5YqSFCwJjB1bIjYVu2YUeztr6fz16BzNiXaBzNz/deoK+ImiIlL
	XFRMcxnNtYv9IBvA7t39e7KzqQn56zdzXalwzCJi/wy9XSTLhgGJhfXK1xgYBHSEDtqVYQ762G4NM
	mCd/PE/z8nR687lm+ZHn8ONrLqGdATltcBMVPIRzU4WTAAEo0IF0IZCQrqYOxTT1fX3BS0hwYjMwz
	VwZqyOOQ==;
Received: from 097-084-242-070.res.spectrum.com ([97.84.242.70]:63357 helo=localhost)
	by just2025.justhost.com with smtp (Exim 4.96)
	(envelope-from <tmckahan@singleboardsolutions.com>)
	id 1qTEOl-002ROx-0S;
	Mon, 07 Aug 2023 22:32:47 -0600
Date: Tue, 8 Aug 2023 00:32:45 -0400
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add NanoPC T6
Message-ID: <20230808002751.00001385@singleboardsolutions.com>
In-Reply-To: <f49a803f-9ff4-794e-265b-a98e3711cca8@linaro.org>
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
	<20230802051441.3106-3-tmckahan@singleboardsolutions.com>
	<f49a803f-9ff4-794e-265b-a98e3711cca8@linaro.org>
Organization: Single Board Solutions LLC
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.34; x86_64-w64-mingw32)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - just2025.justhost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 97.84.242.70
X-Source-L: No
X-Exim-ID: 1qTEOl-002ROx-0S
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 097-084-242-070.res.spectrum.com (localhost) [97.84.242.70]:63357
X-Source-Auth: electri9
X-Email-Count: 5
X-Org: HG=bhshared_jh;ORG=bluehost;
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7anVzdDIwMjUuanVzdGhvc3QuY29t
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfM7/jaFyEOWxLPk1IdAVl7oVCFDh6vITQH/oHZcfLi0Ydtw2VCRfYvfO4jdmQJ1LfoaPBdDPWFOmf9WWr3eySkfQ7rocPxWFOtjpAw4ry6AcSwfj8feR
 7aT+Hk+tH0ZFBK+LSpqPIvUnQShELR63D0QHDwLh/ZlPNdWtVeD/HxolPian1Oe5N8p9PF+KomM5pS1+ar+PgKHM0TCnfZ+MmvZM2YIKnd7Mz5N+simzZ28C
 OMlH2bYkPgz3snh2dZWdxg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_213303_797486_EDAC8E0D 
X-CRM114-Status: GOOD (  17.60  )
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

On Mon, 7 Aug 2023 08:44:40 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 02/08/2023 07:14, Thomas McKahan wrote:
> > Add the NanoPC T6, a single board computer from FriendlyElec based on
> > the RK3588.
> > 
> > Initial device tree supports debug UART, SD, eMMC, PCIe 3, PMIC,
> > and 40 pin GPIO assignments.
> > 
> > Signed-off-by: Thomas McKahan <tmckahan@singleboardsolutions.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 845 ++++++++++++++++++
> >  2 files changed, 846 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 1ebbb3e9c2f9..e7728007fd1b 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -100,6 +100,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> > new file mode 100644
> > index 000000000000..2362da2c53d9
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> > @@ -0,0 +1,845 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + * Copyright (c) 2023 Thomas McKahan
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/usb/pd.h>
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +	model = "FriendlyElec NanoPC-T6";
> > +	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
> > +

...

> > +&spi2 {
> > +	status = "okay";
> > +	assigned-clocks = <&cru CLK_SPI2>;
> > +	assigned-clock-rates = <200000000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
> > +	num-cs = <1>;
> > +
> > +	pmic@0 {
> > +		compatible = "rockchip,rk806";
> > +		spi-max-frequency = <1000000>;
> > +		reg = <0x0>;
> > +
> > +		interrupt-parent = <&gpio0>;
> > +		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> > +
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
> > +			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> > +
> > +		vcc1-supply = <&vcc4v0_sys>;
> > +		vcc2-supply = <&vcc4v0_sys>;
> > +		vcc3-supply = <&vcc4v0_sys>;
> > +		vcc4-supply = <&vcc4v0_sys>;
> > +		vcc5-supply = <&vcc4v0_sys>;
> > +		vcc6-supply = <&vcc4v0_sys>;
> > +		vcc7-supply = <&vcc4v0_sys>;
> > +		vcc8-supply = <&vcc4v0_sys>;
> > +		vcc9-supply = <&vcc4v0_sys>;
> > +		vcc10-supply = <&vcc4v0_sys>;
> > +		vcc11-supply = <&vcc_2v0_pldo_s3>;
> > +		vcc12-supply = <&vcc4v0_sys>;
> > +		vcc13-supply = <&vcc_1v1_nldo_s3>;
> > +		vcc14-supply = <&vcc_1v1_nldo_s3>;
> > +		vcca-supply = <&vcc4v0_sys>;
> > +
> > +		gpio-controller;
> > +		#gpio-cells = <2>;
> > +
> > +		rk806_dvs1_null: dvs1-null-pins {
> > +			pins = "gpio_pwrctrl2";
> > +			function = "pin_fun0";
> > +		};
> > +
> > +		rk806_dvs2_null: dvs2-null-pins {
> > +			pins = "gpio_pwrctrl2";
> > +			function = "pin_fun0";
> > +		};
> > +
> > +		rk806_dvs3_null: dvs3-null-pins {
> > +			pins = "gpio_pwrctrl3";
> > +			function = "pin_fun0";
> > +		};
> > +
> > +		regulators {
> > +			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> > +				regulator-boot-on;  
> 
> Boolean properties are not first, but last. regulator-name is the first
> one. This odd style...
> 

I agree, however it seems the norm in Rockchip devices. This will
become an outlier in Rockchip but fall in line with the general case.
I'll put it in V2 with the other mentioned fixes unless a conflicting 
opinion is expressed. 

> > +				regulator-min-microvolt = <550000>;
> > +				regulator-max-microvolt = <950000>;
> > +				regulator-ramp-delay = <12500>;
> > +				regulator-name = "vdd_gpu_s0";
> > +				regulator-enable-ramp-delay = <400>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};  
> 
> 
> 
> Best regards,
> Krzysztof
> 

Best Regards,
Thomas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
