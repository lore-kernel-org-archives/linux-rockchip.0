Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86657C3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eb4BWmqJMZQFVPAW6KdPDcfoFENqWXSvCc6eMGn21Q8=; b=xjo7Ck6pcRswWs
	dDowvJVAOABjcfvNOGtgEFEQiB0I74X4IgrLGbafKFlgddOWrCkCjgrzMXNtjRJyGhPWbvYWyy4y1
	NTLaQq05kwgTmExtYmEBT7gANDgU7UzTGBcfrs1ODNqYz4d27tCMWrCxkQLovRvhz3d/evj8NUOf5
	yUU9gol3ELwn1w9HseitELRQLadXAc7oM3+MYyWeIoV3g207P+gKJC6PDQRGbpPVzFOhPQuHmFrvc
	Xircf5uoGhWG6n7thD+GroHWYhR8vEnyOSj6szrpjwFwdJojYuCaHb/3rqKfdJnKmKm1BXNvXDUCT
	zv9OjRA+6kdtFlkBenNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabXc-0000000DLZQ-2rPY;
	Sun, 04 Aug 2024 13:44:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabX4-0000000DLS2-3SOF;
	Sun, 04 Aug 2024 13:44:24 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sabWj-0000Gv-Os; Sun, 04 Aug 2024 15:44:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>, Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Sun, 04 Aug 2024 15:44:00 +0200
Message-ID: <2408413.9XhxPE3A7Q@diego>
In-Reply-To: <88dd5910904c03280f37ca0051f5de4e@manjaro.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <Zq-AFWYaqu7zGuz-@ziyaolaptop.my.domain>
 <88dd5910904c03280f37ca0051f5de4e@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_064422_902685_5F3E3C2D 
X-CRM114-Status: GOOD (  32.35  )
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

Am Sonntag, 4. August 2024, 15:25:47 CEST schrieb Dragan Simic:
> On 2024-08-04 15:20, Yao Zi wrote:
> > On Sun, Aug 04, 2024 at 12:05:11PM +0200, Krzysztof Kozlowski wrote:
> >> On 03/08/2024 14:55, Yao Zi wrote:
> >> > This initial device tree describes CPU, interrupts and UART on the chip
> >> > and is able to boot into basic kernel with only UART. Cache information
> >> > is omitted for now as there is no precise documentation. Support for
> >> > other features will be added later.
> >> >
> >> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> >> > ---
> >> >  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 182 +++++++++++++++++++++++
> >> >  1 file changed, 182 insertions(+)
> >> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> >
> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> > new file mode 100644
> >> > index 000000000000..77687d9e7e80
> >> > --- /dev/null
> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> > @@ -0,0 +1,182 @@
> >> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> > +/*
> >> > + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> >> > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> >> > + */
> >> > +
> >> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> >> > +#include <dt-bindings/interrupt-controller/irq.h>
> >> > +
> >> > +/ {
> >> > +	compatible = "rockchip,rk3528";
> >> > +
> >> > +	interrupt-parent = <&gic>;
> >> > +	#address-cells = <2>;
> >> > +	#size-cells = <2>;
> >> > +
> >> > +	aliases {
> >> > +		serial0 = &uart0;
> >> > +		serial1 = &uart1;
> >> > +		serial2 = &uart2;
> >> > +		serial3 = &uart3;
> >> > +		serial4 = &uart4;
> >> > +		serial5 = &uart5;
> >> > +		serial6 = &uart6;
> >> > +		serial7 = &uart7;
> >> > +	};
> >> > +
> >> > +	cpus {
> >> > +		#address-cells = <1>;
> >> > +		#size-cells = <0>;
> >> > +
> >> > +		cpu-map {
> >> > +			cluster0 {
> >> > +				core0 {
> >> > +					cpu = <&cpu0>;
> >> > +				};
> >> > +				core1 {
> >> > +					cpu = <&cpu1>;
> >> > +				};
> >> > +				core2 {
> >> > +					cpu = <&cpu2>;
> >> > +				};
> >> > +				core3 {
> >> > +					cpu = <&cpu3>;
> >> > +				};
> >> > +			};
> >> > +		};
> >> > +
> >> > +		cpu0: cpu@0 {
> >> > +			device_type = "cpu";
> >> > +			compatible = "arm,cortex-a53";
> >> > +			reg = <0x0>;
> >> > +			enable-method = "psci";
> >> > +		};
> >> > +
> >> > +		cpu1: cpu@1 {
> >> > +			device_type = "cpu";
> >> > +			compatible = "arm,cortex-a53";
> >> > +			reg = <0x1>;
> >> > +			enable-method = "psci";
> >> > +		};
> >> > +
> >> > +		cpu2: cpu@2 {
> >> > +			device_type = "cpu";
> >> > +			compatible = "arm,cortex-a53";
> >> > +			reg = <0x2>;
> >> > +			enable-method = "psci";
> >> > +		};
> >> > +
> >> > +		cpu3: cpu@3 {
> >> > +			device_type = "cpu";
> >> > +			compatible = "arm,cortex-a53";
> >> > +			reg = <0x3>;
> >> > +			enable-method = "psci";
> >> > +		};
> >> > +	};
> >> > +
> >> > +	psci {
> >> > +		compatible = "arm,psci-1.0", "arm,psci-0.2";
> >> > +		method = "smc";
> >> > +	};
> >> > +
> >> > +	timer {
> >> > +		compatible = "arm,armv8-timer";
> >> > +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> >> > +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> >> > +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> >> > +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> >> > +	};
> >> > +
> >> > +	xin24m: xin24m {
> >> 
> >> Please use name for all fixed clocks which matches current format
> >> recommendation: 'clock-([0-9]+|[a-z0-9-]+)+'
> > 
> > Will be fixed in next revision.
> 
> Hmm, why should we apply that rule to the xin24m clock, which is
> named exactly like that everywhere else in Rockchip SoC dtsi files?
> It's much better to remain consistent.

bindings or how we write devicetrees evolve over time ... similarly the
xin24m name comes from more than 10 years ago.

We also name all those regulator nodes regulator-foo now, which in turn
automatically does enforce a nice sorting rule to keep all the regulators
around the same area ;-)

So I don't see a problem of going with xin24m: clock-xin24m {}


Heiko

> 
> >> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/clock/fixed-clock.yaml?h=v6.11-rc1
> >> 
> >> > +		compatible = "fixed-clock";
> >> > +		#clock-cells = <0>;
> >> > +		clock-frequency = <24000000>;
> >> > +		clock-output-names = "xin24m";
> >> > +	};
> >> > +
> >> > +	gic: interrupt-controller@fed01000 {
> >> 
> >> Why this all is outside of SoC?
> > 
> > Just as Heiko says, device tree for all other Rockchip SoCs don't have
> > a "soc" node. I didn't know why before but just follow the style.
> > 
> > If you prefer add a soc node, I am willing to.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
