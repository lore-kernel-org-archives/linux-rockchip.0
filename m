Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17FB3C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 08:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecoEhPh6OrUROSf9I8Zjtqhjm4YuElqxcZavo9IuQ4Q=; b=l+PS1xLZty0zWH
	07AxLQdZ1Q38k95hV/pJcAnigbsF0d12f0pIFlo3WRZrz9zqOI3PysedN/a5DxbXZev+JSgUcZr0m
	MTIRB6W9gC068tVSnQ06agqz+rBhVQVIBBK2zT3b5+ETUUtigV+adck9P+KmtnmEvgoLDL8qZRBa5
	jnqo6SPh+5a6/mwADP2X1WtuoPHq1vmzvu6NHZOwDz7etYAUaEMkt1okYCGgoOofQrGytjMtYj0TK
	BCSuvrtrlXucDbwfdX19jrCHPmgB6qvUplAMZADxXmEQljSxl0i6zhK17bwHSZQaLuopLc7vqMCt8
	eLBQTXYEzTNONuXgJfkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxMtC-00000001Neq-1Asz;
	Thu, 18 Apr 2024 08:13:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxMt8-00000001NcG-1V8j;
	Thu, 18 Apr 2024 08:13:00 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxMt5-0004Xm-Bg; Thu, 18 Apr 2024 10:12:55 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar
Date: Thu, 18 Apr 2024 10:12:54 +0200
Message-ID: <5932394.MhkbZ0Pkbq@diego>
In-Reply-To: <cb2004e3-563e-4d36-ab69-89b1d9f6221b@theobroma-systems.com>
References: <20240417141642.2243193-1-heiko@sntech.de>
 <cb2004e3-563e-4d36-ab69-89b1d9f6221b@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_011258_436608_A9CF9D3A 
X-CRM114-Status: GOOD (  28.29  )
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

Am Donnerstag, 18. April 2024, 10:07:37 CEST schrieb Quentin Schulz:
> On 4/17/24 16:16, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > 
> > The Jaguar SBC provides a M.2 slot connected to the pcie3 controller.
> > In contrast to a number of other boards the pcie-refclk is gpio-controlled,
> > so the necessary clock is added to the list of pcie3 clocks.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >   .../arm64/boot/dts/rockchip/rk3588-jaguar.dts | 53 +++++++++++++++++++
> >   1 file changed, 53 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> > index 5002105dc78e..908fbabd8b00 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> > @@ -72,6 +72,25 @@ led-1 {
> >   		};
> >   	};
> >   
> > +	/*
> > +	 * 100MHz reference clock for PCIe peripherals from PI6C557-05BLE
> > +	 * clock generator.
> > +	 * The clock output is gated via the OE pin on the clock generator.
> > +	 * This is modeled as a fixed-clock plus a gpio-gate-clock.
> > +	 */
> > +	pcie_refclk_gen: pcie-refclk-gen-clock {
> > +		compatible = "fixed-clock";
> > +		#clock-cells = <0>;
> > +		clock-frequency = <1000000000>;
> > +	};
> > +
> > +	pcie_refclk: pcie-refclk-clock {
> > +		compatible = "gpio-gate-clock";
> > +		clocks = <&pcie_refclk_gen>;
> > +		#clock-cells = <0>;
> > +		enable-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>; /* PCIE30X4_CLKREQN_M0 */
> 
> I think we usually want to have the pinctrl for GPIOs as well to not 
> assume the pins are muxed in that function by default or by the bootloader?
> 
> > +	};
> > +
> >   	pps {
> >   		compatible = "pps-gpio";
> >   		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> > @@ -466,6 +485,40 @@ &pcie2x1l0 {
> >   	status = "okay";
> >   };
> >   
> > +&pcie30phy {
> > +	status = "okay";
> > +};
> > +
> > +&pcie30x4m0_pins {
> 
> I'm wondering if it really makes sense to reuse this node if we're 
> planning to change the only property it has to mean something different?

ok, will create a specific node for the new pinctrl
As an added pro, this also moves it to the pinctrl area in the dts

> > +	/*
> > +	 * pcie30x4_clkreqn_m0 is used by the refclk generator
> > +	 * pcie30x4_perstn_m0 is used as via the reset-gpio
> > +	 */
> > +	rockchip,pins =
> > +		/* pcie30x4_waken_m0 */
> > +		<0 RK_PC7 12 &pcfg_pull_none>;
> > +};
> > +
> > +&pcie3x4 {
> > +	/*
> > +	 * The board has a gpio-controlled "pcie_refclk" generator,
> > +	 * so add it to the list of clocks.
> > +	 */
> > +	clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> > +		 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> > +		 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
> > +		 <&pcie_refclk>;
> > +	clock-names = "aclk_mst", "aclk_slv",
> > +		      "aclk_dbi", "pclk",
> > +		      "aux", "pipe",
> > +		      "ref";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie30x4m0_pins>;
> > +	reset-gpios = <&gpio0 RK_PD0 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTN_M0 */
> 
> Ditto, I assume we want to have a pinmux for that GPIO as well?

Correct. While the Rockchip pinctrl driver _does_ the muxing when a gpio
is requested, it wouldn't touch pinconf settings u-boot or whoever might
have set differently before.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
