Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4850C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 12:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0T82tsNNIvYQPhxeSi/4KaHJLLeVFAXD+NX5UkQ/78=; b=p/kQt23g+559yx
	ySV1OaY4pkLHw1p44j2c6XzK/nVCMeepsnP53q+xfgg1dKAWJhje75E0+U3dD6dUFbS8AGF3sUMYT
	z6Gf3Q9+/yK1Vs1x0u2dH/d1nJYP6OhUs+Kr4UrFDsNhbMaUQBMc7JQ8MaFB8wb4RaEdACK0lHnyt
	WGsdhQQdnWb/4NQy2UOdu/kgiMRjxXJsSDQgaluMjZvTyH0JdRG/u5UEL33LOx1iXCPWqKVZcKscf
	PTOm6WGixQfd7oOzKeV9TS3uCigRP1YsGTFVxKovlqCEECVY6UMGgWoUVCgYrhiGwRBvEE0lt6H3+
	SzTv3QeNorToPpTW2V7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUWa-00000000K8W-1cpo;
	Mon, 12 Aug 2024 12:51:48 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUVy-00000000K1o-0XTC;
	Mon, 12 Aug 2024 12:51:12 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8A3E041515;
	Mon, 12 Aug 2024 14:51:06 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMZAk-i2Lzoa; Mon, 12 Aug 2024 14:51:05 +0200 (CEST)
Date: Mon, 12 Aug 2024 20:50:29 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723467065; bh=CVNKSbLYEeSmnP+OvcToyXEeMut4bzfxHpnr90eyLe0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Mesmbd63hEeaQoftBXPQoJynz88NwARw7G72V5f155OtTf9cmFmu0+9037fxZN8YL
	 uNs/Q+hjRyc1ETLg2ZNVx6tHZ5rLh3VjPexDkgU1pXOTXQcxgttkbUyDX0S9EfUfy+
	 Myne47pt6dB9DuZGOW2bazzStrDfZpzXdMuMnsBugg1umSrHKeXZGlvMbtYQKbRQG3
	 a23Cp2XSyevt/fyeqKSad1ZXpl/eN3KSn9Lg0eMysRPG0cpcfHJBpptcCobW4gwkXB
	 B/HcLx5CpTBYKpr/+lwcfUj9IAu42HO1SHJstRn0MPycJbZdLEd4HO1TvYkSMirumR
	 V+Mqub8U7NXJQ==
From: Yao Zi <ziyao@disroot.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
	Celeste Liu <CoelacanthusHex@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Message-ID: <ZroDTp6Y6ueODB0g@ziyaolaptop.my.domain>
References: <20240811140725.64866-1-ziyao@disroot.org>
 <20240811140725.64866-4-ziyao@disroot.org>
 <24e2b1d2c970e894afd8849d501bcddd@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24e2b1d2c970e894afd8849d501bcddd@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_055110_604154_F07A447E 
X-CRM114-Status: GOOD (  24.16  )
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

On Sun, Aug 11, 2024 at 11:39:18PM +0200, Dragan Simic wrote:
> Hello Yao,
> 
> Please see one comment below.
> 
> On 2024-08-11 16:07, Yao Zi wrote:
> > This initial device tree describes CPU, interrupts and UART on the chip
> > and is able to boot into basic kernel with only UART. Cache information
> > is omitted for now as there is no precise documentation. Support for
> > other features will be added later.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 182 +++++++++++++++++++++++
> >  1 file changed, 182 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > new file mode 100644
> > index 000000000000..0596cdc38737
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> > @@ -0,0 +1,182 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> > + */
> > +
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/ {
> > +	compatible = "rockchip,rk3528";
> > +
> > +	interrupt-parent = <&gic>;
> > +	#address-cells = <2>;
> > +	#size-cells = <2>;
> > +
> > +	aliases {
> > +		serial0 = &uart0;
> > +		serial1 = &uart1;
> > +		serial2 = &uart2;
> > +		serial3 = &uart3;
> > +		serial4 = &uart4;
> > +		serial5 = &uart5;
> > +		serial6 = &uart6;
> > +		serial7 = &uart7;
> > +	};
> > +
> > +	cpus {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		cpu-map {
> > +			cluster0 {
> > +				core0 {
> > +					cpu = <&cpu0>;
> > +				};
> > +				core1 {
> > +					cpu = <&cpu1>;
> > +				};
> > +				core2 {
> > +					cpu = <&cpu2>;
> > +				};
> > +				core3 {
> > +					cpu = <&cpu3>;
> > +				};
> > +			};
> > +		};
> > +
> > +		cpu0: cpu@0 {
> > +			compatible = "arm,cortex-a53";
> > +			reg = <0x0>;
> > +			device_type = "cpu";
> > +			enable-method = "psci";
> > +		};
> > +
> > +		cpu1: cpu@1 {
> > +			compatible = "arm,cortex-a53";
> > +			reg = <0x1>;
> > +			device_type = "cpu";
> > +			enable-method = "psci";
> > +		};
> > +
> > +		cpu2: cpu@2 {
> > +			compatible = "arm,cortex-a53";
> > +			reg = <0x2>;
> > +			device_type = "cpu";
> > +			enable-method = "psci";
> > +		};
> > +
> > +		cpu3: cpu@3 {
> > +			compatible = "arm,cortex-a53";
> > +			reg = <0x3>;
> > +			device_type = "cpu";
> > +			enable-method = "psci";
> > +		};
> > +	};
> > +
> > +	psci {
> > +		compatible = "arm,psci-1.0", "arm,psci-0.2";
> > +		method = "smc";
> > +	};
> > +
> > +	timer {
> > +		compatible = "arm,armv8-timer";
> > +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
> > IRQ_TYPE_LEVEL_LOW)>,
> > +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> > +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> > +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> > +	};
> > +
> > +	xin24m: clk-24m {
> 
> Please use "xin24m: clock-xin24m { ... }" instead, because that follows
> the recently established revised pattern for clock names.  We should have
> come consistency in the new SoC dtsi additions.

It's a careless typo, sorry for the noise. Will be fixed in next version.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
