Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C92C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 17:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+M/jm9/mOezVCuQBkyzoey6JmH0nxgppIzTubZEoS1I=; b=TjcMX8UsFkIqAv0inn9uS9zqKT
	cn1aTB9DCP8NyYRge60yvttvwHw3nbDLI1KeOByCfzdeNiimBMfp6QOsOcbPALWK7jra4ZkGJqbh7
	j3WHVseKM3BfebUQiR3XVU1vJsKLCy/6oww6bbj2F0dE/2+uyMRZLKXrwItjFAc6TNZDTsVNAoJsl
	hq4iEoR+N12QUgxwx6We4kj0AXdndqAH7QkoY6ViU1bhRqAaj/KJM/8C5Ie9Hd8sJHjBL7g0nmJrE
	RcFD3KVXXwGbhA8yA0Q1l3hKSYqojPcmDGtK+kldmoYtaPgresFwOO7WAm4DNv+05ZnFXPy1sIbN6
	BiakQumA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqfNn-00BLYI-La; Fri, 26 Nov 2021 17:51:35 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqfNk-00BLWp-5U; Fri, 26 Nov 2021 17:51:34 +0000
Received: by mail-ed1-x531.google.com with SMTP id z5so42055467edd.3;
 Fri, 26 Nov 2021 09:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H1rJRoxjXF21NRzfiaQfEaPzGz9kbLbOhn5taK0xESo=;
 b=O6MrZXRI/mRxwjocRlycrq3FPmH7tCsc+STzeZZfrrPXwY1fzN7ZeQG0GAdLNmXJZa
 gqN+JFCaDbUImuCzzuGtI4QwdtIvjcvOgIPvSPZ9PxJ7n0LvV6tINVQyK66s8dWvzJRk
 idt4gFksL2SFP3Nu7K7llmEbh6j6eEHIHVpBdqmVxQgKADsfHP60cHTEYP38PsowfiXw
 Tz25dxhd6voPw6ivObQNusU1aEkIqb8U9LKcKjMswgvgbvulWiYUzhNQ2/paOhR9RbLM
 Dg/ufSfD0F73aidtY69orujNLYFBF8Xbo4wQJnXpHlDepN1MBzJthlHPiFy8Q4rj+DX+
 paYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H1rJRoxjXF21NRzfiaQfEaPzGz9kbLbOhn5taK0xESo=;
 b=Z4+5pvOHnKF3eozE73XkQ7mo8G4XhstEJdSmzTY5CvCPLMi7f1+SQ/O4nsQnrIBucd
 QcoGOkdSikFFcY4+fd+a6nascZ7u1bmH6TW9qTlemFpg9O1o2NFRqLXG2NydtZminnJc
 wS92Ha6hoMJo/H/3e/sLYCSN9Lgdi9+Dmcmjz48KN5ODoLW13nIQMucoJWNPSmkPtrgP
 T0CoPQa897D/Dhxk+20gFM+wXCfng74F9HuD75XQArAbLO8bw9OHcplq8WgEXlSumXer
 6SpvMZ15V6dhJQd7EAfL/IMf/W/9TdZqc95cL2pjQu4prjG+5voZ3D82s5XkaopQb1as
 y7tQ==
X-Gm-Message-State: AOAM532ezc+zWcnSRCDM3jXz8Vkcz+v1LFhTvYTYbK5IcvAf+83br87A
 bSlrRxYKAdXR2NSIWY2osQ2Jm4jwJF8=
X-Google-Smtp-Source: ABdhPJzle0E68HCo0DYRj0uTM5NfvWxNIMVrB5/CjVz8C3NpIkheeI62mugAk8LW1tt2NNb9MBy8YQ==
X-Received: by 2002:a17:906:b2c7:: with SMTP id
 cf7mr41325484ejb.303.1637949090528; 
 Fri, 26 Nov 2021 09:51:30 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 y19sm4744313edc.17.2021.11.26.09.51.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Nov 2021 09:51:30 -0800 (PST)
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add spi nodes on rk356x
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
 <20211126154344.724316-3-frattaroli.nicolas@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7562cf5c-c606-6bdc-bee9-328508a40952@gmail.com>
Date: Fri, 26 Nov 2021 18:51:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211126154344.724316-3-frattaroli.nicolas@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_095132_254338_095378CD 
X-CRM114-Status: GOOD (  18.78  )
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

Hi Nicolas,

Could you test with:
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml

On 11/26/21 4:43 PM, Nicolas Frattaroli wrote:
> This adds the four spi nodes (spi0, spi1, spi2, spi3) to the
> rk356x dtsi. These are from the downstream device tree, though
> I have double-checked that their interrupts and DMA numbers are
> correct. I have also tested spi1 with an SPI device.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 68 ++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 46d9552f6028..57c0197cc65a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -39,6 +39,10 @@ aliases {
>  		serial7 = &uart7;
>  		serial8 = &uart8;
>  		serial9 = &uart9;
> +		spi0 = &spi0;
> +		spi1 = &spi1;
> +		spi2 = &spi2;
> +		spi3 = &spi3;
>  	};
>  
>  	cpus {
> @@ -742,6 +746,70 @@ wdt: watchdog@fe600000 {
>  		clock-names = "tclk", "pclk";
>  	};
>  
> +	spi0: spi@fe610000 {
> +		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
> +		reg = <0x0 0xfe610000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;

> +		#address-cells = <1>;
> +		#size-cells = <0>;

Move above status.

> +		clocks = <&cru CLK_SPI0>, <&cru PCLK_SPI0>;
> +		clock-names = "spiclk", "apb_pclk";
> +		dmas = <&dmac0 20>, <&dmac0 21>;
> +		dma-names = "tx", "rx";

> +		pinctrl-names = "default", "high_speed";

Keep position of pinctrl-names in line with other nodes in this file
below pinctrl-0.

arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dt.yaml: spi@fe610000:
pinctrl-names:1: 'sleep' was expected
	From schema: /Documentation/devicetree/bindings/spi/spi-rockchip.yaml

Missing "high_speed" support?

spi: rockchip: set higher io driver when sclk higher than 24MHz
https://github.com/rockchip-linux/kernel/commit/7e4349ec9d70dbcfe7f78125700d2685539ea1bd

> +		pinctrl-0 = <&spi0m0_cs0 &spi0m0_cs1 &spi0m0_pins>;

> +		pinctrl-1 = <&spi0m0_cs0 &spi0m0_cs1 &spi0m0_pins_hs>;

Missing Linux mainline driver and document support? Maybe skip for now?

spi0m0_cs0_hs spi0m0_cs1_hs ???

> +		status = "disabled";
> +	};
> +



	spi0 {
		/omit-if-no-ref/
		spi0m0_pins: spi0m0-pins {
			rockchip,pins =
				/* spi0_clkm0 */
				<0 RK_PB5 2 &pcfg_pull_none>,
				/* spi0_misom0 */
				<0 RK_PC5 2 &pcfg_pull_none>,
				/* spi0_mosim0 */
				<0 RK_PB6 2 &pcfg_pull_none>;
		};

		/omit-if-no-ref/
		spi0m0_cs0: spi0m0-cs0 {
			rockchip,pins =
				/* spi0_cs0m0 */
				<0 RK_PC6 2 &pcfg_pull_none>;
		};

		/omit-if-no-ref/
		spi0m0_cs1: spi0m0-cs1 {
			rockchip,pins =
				/* spi0_cs1m0 */
				<0 RK_PC4 2 &pcfg_pull_none>;
		};

		/omit-if-no-ref/
		spi0m1_pins: spi0m1-pins {
			rockchip,pins =
				/* spi0_clkm1 */
				<2 RK_PD3 3 &pcfg_pull_none>,
				/* spi0_misom1 */
				<2 RK_PD0 3 &pcfg_pull_none>,
				/* spi0_mosim1 */
				<2 RK_PD1 3 &pcfg_pull_none>;
		};

		/omit-if-no-ref/
		spi0m1_cs0: spi0m1-cs0 {
			rockchip,pins =
				/* spi0_cs0m1 */
				<2 RK_PD2 3 &pcfg_pull_none>;
		};
	};

	spi0-hs {
		/omit-if-no-ref/
		spi0m0_pins_hs: spi0m0-pins {
			rockchip,pins =
				/* spi0_clkm0 */
				<0 RK_PB5 2 &pcfg_pull_up_drv_level_1>,
				/* spi0_misom0 */
				<0 RK_PC5 2 &pcfg_pull_up_drv_level_1>,
				/* spi0_mosim0 */
				<0 RK_PB6 2 &pcfg_pull_up_drv_level_1>;
		};

		/omit-if-no-ref/
		spi0m0_cs0_hs: spi0m0-cs0 {
			rockchip,pins =
				/* spi0_cs0m0 */
				<0 RK_PC6 2 &pcfg_pull_up_drv_level_1>;
		};

		/omit-if-no-ref/
		spi0m0_cs1_hs: spi0m0-cs1 {
			rockchip,pins =
				/* spi0_cs1m0 */
				<0 RK_PC4 2 &pcfg_pull_up_drv_level_1>;
		};

		/omit-if-no-ref/
		spi0m1_pins_hs: spi0m1-pins {
			rockchip,pins =
				/* spi0_clkm1 */
				<2 RK_PD3 3 &pcfg_pull_up_drv_level_1>,
				/* spi0_misom1 */
				<2 RK_PD0 3 &pcfg_pull_up_drv_level_1>,
				/* spi0_mosim1 */
				<2 RK_PD1 3 &pcfg_pull_up_drv_level_1>;
		};

		/omit-if-no-ref/
		spi0m1_cs0_hs: spi0m1-cs0 {
			rockchip,pins =
				/* spi0_cs0m1 */
				<2 RK_PD2 3 &pcfg_pull_up_drv_level_1>;
		};
	};



> +	spi1: spi@fe620000 {
> +		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
> +		reg = <0x0 0xfe620000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		clocks = <&cru CLK_SPI1>, <&cru PCLK_SPI1>;
> +		clock-names = "spiclk", "apb_pclk";
> +		dmas = <&dmac0 22>, <&dmac0 23>;
> +		dma-names = "tx", "rx";
> +		pinctrl-names = "default", "high_speed";
> +		pinctrl-0 = <&spi1m0_cs0 &spi1m0_cs1 &spi1m0_pins>;
> +		pinctrl-1 = <&spi1m0_cs0 &spi1m0_cs1 &spi1m0_pins_hs>;
> +		status = "disabled";
> +	};
> +
> +	spi2: spi@fe630000 {
> +		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
> +		reg = <0x0 0xfe630000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		clocks = <&cru CLK_SPI2>, <&cru PCLK_SPI2>;
> +		clock-names = "spiclk", "apb_pclk";
> +		dmas = <&dmac0 24>, <&dmac0 25>;
> +		dma-names = "tx", "rx";
> +		pinctrl-names = "default", "high_speed";
> +		pinctrl-0 = <&spi2m0_cs0 &spi2m0_cs1 &spi2m0_pins>;
> +		pinctrl-1 = <&spi2m0_cs0 &spi2m0_cs1 &spi2m0_pins_hs>;
> +		status = "disabled";
> +	};
> +
> +	spi3: spi@fe640000 {
> +		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
> +		reg = <0x0 0xfe640000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
> +		clock-names = "spiclk", "apb_pclk";
> +		dmas = <&dmac0 26>, <&dmac0 27>;
> +		dma-names = "tx", "rx";
> +		pinctrl-names = "default", "high_speed";
> +		pinctrl-0 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins>;
> +		pinctrl-1 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins_hs>;
> +		status = "disabled";
> +	};
> +
>  	uart1: serial@fe650000 {
>  		compatible = "rockchip,rk3568-uart", "snps,dw-apb-uart";
>  		reg = <0x0 0xfe650000 0x0 0x100>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
