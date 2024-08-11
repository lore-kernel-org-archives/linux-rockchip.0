Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9CFBC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 21:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KUVy3mbIdujPfDNOL+u/NgZM2r+C681w3Rt6UtNq974=; b=5Aib+DZ44ajPimOajrgA+og+GA
	A91hUx90YKWJxTBeNRdNpCKXubP69BJo+88P8YHy58bD1YcIMP19wcVZNdOQwmbpyyRokg2QoJ22r
	2/qKCTTXVD1pzAQsfT3zhxud9iHr/Qqq3YL9G7tM81LjESX4TUEZ1brIB7Mr1fJwsOXDxMVNgmMsm
	27zefN9h7SG0bvptV9G8MwxOdvMMBCAtMWGeQMlVjwvHlB5ZQMmHJzz4YXWvnBH1KcZiTvqSik2HU
	rm2LHAK0qhG9elBClh9LSHXgKrMOHWpkGRwQGfWJrV+vjULqDxHqZ/hi3dnjs05N/UkZ40RyZepzW
	evplNM0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdGIC-0000000GLTD-3sPF;
	Sun, 11 Aug 2024 21:40:00 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdGHb-0000000GLLh-1FuI;
	Sun, 11 Aug 2024 21:39:25 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723412360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zGqo9g+SoFcjlWadP87QaHf5NGtLpnQnXJR1D/7cuxI=;
	b=MPZ8/K7cwyh8O1rdyBMHPpJBpUJ3GhleN0lB+wiKtRdfRp0s59rpfwvaNHjxzFttKBiajL
	eNk5TxDldhTVM1e8zzEXNA42bk0mZVT36cTj/DB+oMVEldppwZofuySef8lFmUyJNiw+EM
	CTQ21ZlgRn4lEkqPSLZgjhjYoFQ5RFGzEJCzVblUzAydVtlAT8/ilCDFLjs6OYsZpGaTwU
	Q14hYse8UTv6xeWXCH+zheyyt9s9PBCtIfar+/szkH8cJWiIs/6JLzIZyYCRXLCZhIKtld
	esCkD5TA3ReMB59NU2lfppJCfhTHfWspyYLF05pD97lR4Dm/nWP1eJEPVwwW/A==
Date: Sun, 11 Aug 2024 23:39:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Jonas
 Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Andy Yan
 <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>, Jagan Teki
 <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>, Celeste Liu
 <CoelacanthusHex@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
In-Reply-To: <20240811140725.64866-4-ziyao@disroot.org>
References: <20240811140725.64866-1-ziyao@disroot.org>
 <20240811140725.64866-4-ziyao@disroot.org>
Message-ID: <24e2b1d2c970e894afd8849d501bcddd@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_143923_719665_EAFED1EE 
X-CRM114-Status: GOOD (  17.20  )
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

Hello Yao,

Please see one comment below.

On 2024-08-11 16:07, Yao Zi wrote:
> This initial device tree describes CPU, interrupts and UART on the chip
> and is able to boot into basic kernel with only UART. Cache information
> is omitted for now as there is no precise documentation. Support for
> other features will be added later.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 182 +++++++++++++++++++++++
>  1 file changed, 182 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> new file mode 100644
> index 000000000000..0596cdc38737
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -0,0 +1,182 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	compatible = "rockchip,rk3528";
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
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +				core2 {
> +					cpu = <&cpu2>;
> +				};
> +				core3 {
> +					cpu = <&cpu3>;
> +				};
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +		};
> +
> +		cpu1: cpu@1 {
> +			compatible = "arm,cortex-a53";
> +			reg = <0x1>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +		};
> +
> +		cpu2: cpu@2 {
> +			compatible = "arm,cortex-a53";
> +			reg = <0x2>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +		};
> +
> +		cpu3: cpu@3 {
> +			compatible = "arm,cortex-a53";
> +			reg = <0x3>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +		};
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2";
> +		method = "smc";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | 
> IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	xin24m: clk-24m {

Please use "xin24m: clock-xin24m { ... }" instead, because that follows
the recently established revised pattern for clock names.  We should 
have
come consistency in the new SoC dtsi additions.

> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xin24m";
> +		#clock-cells = <0>;
> +	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
