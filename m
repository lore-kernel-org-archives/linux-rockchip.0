Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22B66C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 23:07:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD6E760FDA
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 23:07:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AD6E760FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9Y9eKEs9A/RHs/1u0/jGkxfR4S62bm43S5XmLfdUwg=; b=0AJYtsC0ZN/6gt
	pWEsrnZc9LcZ4UB446+QNfOhoNP8OxLmbjNcYxMTJOFOqGGIJc18/U8NEsppKK8lYFJxCWaRlWkdN
	uSUxw+2b6vlyzO0UaTZrc/X004TZ9PDOIMpEqoXAzMVV0RScs0Su6uFjQnPMTGi7L+r8zENhZiNsA
	vNtOUTd2fMEDvPT72Lv4WOCaOGg8OM6STHTeL+EMD2jYTyODZOw5FhPOPyR5Jo/kd4DXeUtPibiHj
	vBSolRpsm3I7uUgbMLLzuylryeBlCjuysJK8IWKP5jnrSsH0qGEPDBnStcY9AMfuM1KC8Js91AvnN
	dnGJ85rBJYQOYuO1eUcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1manLd-000ySO-RJ; Wed, 13 Oct 2021 23:07:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1manLQ-000yNa-K0; Wed, 13 Oct 2021 23:07:34 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1manLN-0007nY-N9; Thu, 14 Oct 2021 01:07:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: change gpio nodenames
Date: Thu, 14 Oct 2021 01:07:29 +0200
Message-ID: <8500866.vLymJHTRYH@diego>
In-Reply-To: <20211007144019.7461-3-jbx6244@gmail.com>
References: <20211007144019.7461-1-jbx6244@gmail.com>
 <20211007144019.7461-3-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_160732_842299_F7FB3675 
X-CRM114-Status: GOOD (  16.51  )
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

Am Donnerstag, 7. Oktober 2021, 16:40:19 CEST schrieb Johan Jonker:
> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Acked-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi   |  8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 10 +++++-----
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi |  8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi |  8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 +++++-----
>  5 files changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 64f643145..17a64c3f0 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1297,7 +1297,7 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> -		gpio0: gpio0@ff040000 {
> +		gpio0: gpio@ff040000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff040000 0x0 0x100>;
>  			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1309,7 +1309,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio1: gpio1@ff250000 {
> +		gpio1: gpio@ff250000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff250000 0x0 0x100>;
>  			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1321,7 +1321,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio2: gpio2@ff260000 {
> +		gpio2: gpio@ff260000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff260000 0x0 0x100>;
>  			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1333,7 +1333,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio3: gpio3@ff270000 {
> +		gpio3: gpio@ff270000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff270000 0x0 0x100>;
>  			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index ce6f4a28d..cec6d179b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -790,7 +790,7 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> -		gpio0: gpio0@ff220000 {
> +		gpio0: gpio@ff220000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff220000 0x0 0x100>;
>  			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> @@ -801,7 +801,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio1: gpio1@ff230000 {
> +		gpio1: gpio@ff230000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff230000 0x0 0x100>;
>  			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> @@ -812,7 +812,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio2: gpio2@ff240000 {
> +		gpio2: gpio@ff240000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff240000 0x0 0x100>;
>  			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> @@ -823,7 +823,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio3: gpio3@ff250000 {
> +		gpio3: gpio@ff250000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff250000 0x0 0x100>;
>  			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> @@ -834,7 +834,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio4: gpio4@ff260000 {
> +		gpio4: gpio@ff260000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff260000 0x0 0x100>;
>  			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 5b2020590..6edb1a537 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -1014,7 +1014,7 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> -		gpio0: gpio0@ff210000 {
> +		gpio0: gpio@ff210000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff210000 0x0 0x100>;
>  			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1027,7 +1027,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio1: gpio1@ff220000 {
> +		gpio1: gpio@ff220000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff220000 0x0 0x100>;
>  			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1040,7 +1040,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio2: gpio2@ff230000 {
> +		gpio2: gpio@ff230000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff230000 0x0 0x100>;
>  			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1053,7 +1053,7 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> -		gpio3: gpio3@ff240000 {
> +		gpio3: gpio@ff240000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff240000 0x0 0x100>;
>  			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 4217897cd..ef6847014 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -797,7 +797,7 @@
>  		#size-cells = <0x2>;
>  		ranges;
>  
> -		gpio0: gpio0@ff750000 {
> +		gpio0: gpio@ff750000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff750000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO0>;
> @@ -810,7 +810,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio1: gpio1@ff780000 {
> +		gpio1: gpio@ff780000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff780000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO1>;
> @@ -823,7 +823,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio2: gpio2@ff790000 {
> +		gpio2: gpio@ff790000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff790000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO2>;
> @@ -836,7 +836,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio3: gpio3@ff7a0000 {
> +		gpio3: gpio@ff7a0000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff7a0000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 44def886b..577c02047 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1978,7 +1978,7 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> -		gpio0: gpio0@ff720000 {
> +		gpio0: gpio@ff720000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff720000 0x0 0x100>;
>  			clocks = <&pmucru PCLK_GPIO0_PMU>;
> @@ -1991,7 +1991,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio1: gpio1@ff730000 {
> +		gpio1: gpio@ff730000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff730000 0x0 0x100>;
>  			clocks = <&pmucru PCLK_GPIO1_PMU>;
> @@ -2004,7 +2004,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio2: gpio2@ff780000 {
> +		gpio2: gpio@ff780000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff780000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO2>;
> @@ -2017,7 +2017,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio3: gpio3@ff788000 {
> +		gpio3: gpio@ff788000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff788000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO3>;
> @@ -2030,7 +2030,7 @@
>  			#interrupt-cells = <0x2>;
>  		};
>  
> -		gpio4: gpio4@ff790000 {
> +		gpio4: gpio@ff790000 {
>  			compatible = "rockchip,gpio-bank";
>  			reg = <0x0 0xff790000 0x0 0x100>;
>  			clocks = <&cru PCLK_GPIO4>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
