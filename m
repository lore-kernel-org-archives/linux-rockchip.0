Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 08:10:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F97C6115A
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 08:10:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6F97C6115A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qXStLLZif4ArWLJUpECju0tBKZOPp/aomi1ZJIbKp8=; b=L4zyCQ5W5fO8U3
	4RwPj7GZAa48/osxO4uJns7bJPF9g3JBVeGPvbTH3D5MdNAXCi34OCWUmsMX24L5Y9afZj0gy3uNc
	jmCp7KIuNmz6yWr2PnR6lln5n+ml4b0wopCc6Gih+rLQLUCZjVG79pj3LYdb56Vp/Jv1tz5KmHl2U
	5ueQfV0jPwGQtpHy/6TuexeLc/+ZRP3usqlSU36ArokeeVaAJ/28HA9rLxeqxrKvfQKzPAS9gaSIY
	kgooLQLwDkaa2nBaZ+od7fVtuutsXuYtsLAgMgXv5VzitVnUjwGcWQFAR9JQR35kA5DqiqvL296Xf
	SsfADQ3HIVm9bb2xDq/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md6gO-003nFt-PL; Wed, 20 Oct 2021 08:10:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md6gB-003nCL-F2; Wed, 20 Oct 2021 08:10:32 +0000
Received: from [213.208.157.36] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1md6g6-0002KZ-Qj; Wed, 20 Oct 2021 10:10:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399: Hook up DMA for UARTs
Date: Wed, 20 Oct 2021 10:10:25 +0200
Message-ID: <2163516.Xs4XyuuM7S@phil>
In-Reply-To: <20210920175647.13008-2-wens@kernel.org>
References: <20210920175647.13008-1-wens@kernel.org>
 <20210920175647.13008-2-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_011031_547088_027F0B46 
X-CRM114-Status: GOOD (  19.95  )
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

Hi,

Am Montag, 20. September 2021, 19:56:47 CEST schrieb Chen-Yu Tsai:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The RK3399 has two DMA controllers, one of which is wired up to work
> with the SPI controllers and UARTs. The SPI controllers are already
> hooked up, but the UARTs aren't.
> 
> Add the "dmas" and "dma-names" to the UART device nodes to hook up DMA.

last time this came up, there was the issue of the pl330 driver in the
kernel not being able to handle the case where the number of channels
hooked up was larger than the number of possible channels handled
at the same time (8 for dmac peri according to the TRM).

Did this get solved meanwhile or are we then possibly starving the spi
controllers from dma access when the uarts also get dma channels
and are possibly probed earlier?


Heiko


> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 3871c7fd83b0..87d6e4eb1337 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -608,6 +608,8 @@ uart0: serial@ff180000 {
>  		reg = <0x0 0xff180000 0x0 0x100>;
>  		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
>  		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac_peri 0>, <&dmac_peri 1>;
> +		dma-names = "tx", "rx";
>  		interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>;
>  		reg-shift = <2>;
>  		reg-io-width = <4>;
> @@ -621,6 +623,8 @@ uart1: serial@ff190000 {
>  		reg = <0x0 0xff190000 0x0 0x100>;
>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>  		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac_peri 2>, <&dmac_peri 3>;
> +		dma-names = "tx", "rx";
>  		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH 0>;
>  		reg-shift = <2>;
>  		reg-io-width = <4>;
> @@ -634,6 +638,8 @@ uart2: serial@ff1a0000 {
>  		reg = <0x0 0xff1a0000 0x0 0x100>;
>  		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
>  		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac_peri 4>, <&dmac_peri 5>;
> +		dma-names = "tx", "rx";
>  		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>;
>  		reg-shift = <2>;
>  		reg-io-width = <4>;
> @@ -647,6 +653,8 @@ uart3: serial@ff1b0000 {
>  		reg = <0x0 0xff1b0000 0x0 0x100>;
>  		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
>  		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac_peri 6>, <&dmac_peri 7>;
> +		dma-names = "tx", "rx";
>  		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH 0>;
>  		reg-shift = <2>;
>  		reg-io-width = <4>;
> @@ -1142,6 +1150,8 @@ uart4: serial@ff370000 {
>  		reg = <0x0 0xff370000 0x0 0x100>;
>  		clocks = <&pmucru SCLK_UART4_PMU>, <&pmucru PCLK_UART4_PMU>;
>  		clock-names = "baudclk", "apb_pclk";
> +		dmas = <&dmac_peri 8>, <&dmac_peri 9>;
> +		dma-names = "tx", "rx";
>  		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH 0>;
>  		reg-shift = <2>;
>  		reg-io-width = <4>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
