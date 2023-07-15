Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78C4EC0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jul 2023 16:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo7D1+WDwNQo/yOHDkjhQlmF6K9Yq2jHVyTXcp0xgys=; b=4aONiWL49pe8+t
	V/Jujny2jT9dsW2AQVcbshDWWFt2XNu35DOTszO8vCwmV7LWAK32d87UvKukAkbMfbOe6THeBM0SY
	UIz/vNhz4Y2wrTnabGB9YjYOVTKqdaEgohXiM4PSwyJR3eWme9FJkJ1L3h/HJAM9uN5K1lbl03cr9
	zCTE48oDBka+pdAnE1cNS13TRsPp12yA44vOwyudJXG8j16RczLZ5JMRIZIg22TdMbPS9uuDxC9hL
	iUaY3QHd4GvPMqgu6SGsSqLrnQr06fookgS3gTj6FJUVN3G/aj0XJpqZ5KeZrkZmnz+iZhZpqmXsc
	hbppMmAEpwuajVEITpAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKiOf-009AHy-0J;
	Sat, 15 Jul 2023 16:45:29 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKiOb-009AGv-35;
	Sat, 15 Jul 2023 16:45:27 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f954d7309fso3699621e87.1;
        Sat, 15 Jul 2023 09:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689439523; x=1692031523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EwMjCMmgFy+bMl1QJUCT4Klvjl5MSrobMO0CXLv/rL0=;
        b=AM1M8mOZjpDYu0Mp1emKj57echxJen7yUrTluBU8QOKNMDqGadR/nImML+xWrYKNKe
         G79/7KJAvQUDuqK6pF1N9n0yABzg3LVUQVIF2sMWxqhG0EmIqGHjKn561KTeL4cf/o4j
         EYXR0Y4Csgdrn4Z5U2Dt+CnsJ4NMU/cmk8FiKBOQ3leLXk45UY29qfZOPVeW7HZdSaQD
         cLLnUpYU1E0lUbspouZDgJBp1BlWJ1Jw0pOp0vh1cVHi5HvaLlwjDYMZENAHf/bgoABS
         GoI0f9BONy4Ud/ZnouQPndIj+XDuNI10kFVhByIC9+g6fa41P4DBMLSAFQBP3Nwbojm9
         FwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689439523; x=1692031523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EwMjCMmgFy+bMl1QJUCT4Klvjl5MSrobMO0CXLv/rL0=;
        b=eKUmOzX5ubmnmiGKzUbpSay7EpuuhhILE4woqgpFpDlG3Pufi98l/0nTASadKCKekg
         K2kB5a5ZyB9RG48gtkI87TVd+tQNqSLsLT5MfTn2XagrnWGZchdgOGECJvRXeZ5/v3Z5
         wvAhIYT9ieDCe3LQfpdgFmKxIlIyjVd3+WPxCzkb+99H61Nkrah60QxzbhZ+SgFHp+kq
         b+/RcQTn7ACvX7z7aAD1E+/sbOVG9jBLOVpBPyegIIHCUWgSuJV+WuZhwJlWUn1U6Nuz
         1/4E1Rg9MZ7pR6mXW1YcKVvabW9S6NhCVxaenD5sUOmoY7S4o0+HUDjX2muFhtXZqlPm
         VMMg==
X-Gm-Message-State: ABy/qLZTnnKdAZ3ZqTMSjYXrks6y+0nrpkGa2Afc8QYwEPhk3o1FzpqL
	Zj7yhkRPHRHxuO12tCbI8ng=
X-Google-Smtp-Source: APBJJlGykHR1KvoejifoTKBZ04W1CPB9vcJDULQA1JDvD+8gffcDEF1Tbfbi2KwGO78902M25vRQEw==
X-Received: by 2002:a05:6512:15a2:b0:4f9:5807:aba7 with SMTP id bp34-20020a05651215a200b004f95807aba7mr2155118lfb.27.1689439522939;
        Sat, 15 Jul 2023 09:45:22 -0700 (PDT)
Received: from mobilestation ([85.249.20.164])
        by smtp.gmail.com with ESMTPSA id p17-20020a19f011000000b004fbb2080185sm1921535lfc.213.2023.07.15.09.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jul 2023 09:45:22 -0700 (PDT)
Date: Sat, 15 Jul 2023 19:45:19 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, John Clark <inindev@gmail.com>, Qu Wenruo <wqu@suse.com>, 
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
Message-ID: <ypdmpxzpl7plcxzlgyhtx7zmyx4u25y7enivu2om3n3rtm4eas@o4xpm2guoope>
References: <20230714175331.112923-1-sebastian.reichel@collabora.com>
 <20230714175331.112923-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230714175331.112923-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230715_094526_022569_9F0CAF60 
X-CRM114-Status: GOOD (  16.34  )
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

On Fri, Jul 14, 2023 at 07:53:31PM +0200, Sebastian Reichel wrote:
> Add both PCIe3 controllers together with the shared PHY.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi | 128 +++++++++++++++++++++++
>  1 file changed, 128 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> index 4d66ca6c2e4c..af6f52afbaff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -7,6 +7,11 @@
>  #include "rk3588-pinctrl.dtsi"
>  
>  / {
> +	pcie30_phy_grf: syscon@fd5b8000 {
> +		compatible = "rockchip,rk3588-pcie3-phy-grf", "syscon";
> +		reg = <0x0 0xfd5b8000 0x0 0x10000>;
> +	};
> +
>  	pipe_phy1_grf: syscon@fd5c0000 {
>  		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
>  		reg = <0x0 0xfd5c0000 0x0 0x100>;
> @@ -80,6 +85,116 @@ i2s10_8ch: i2s@fde00000 {
>  		status = "disabled";
>  	};
>  
> +	pcie3x4: pcie@fe150000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x00 0x0f>;
> +		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> +			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> +			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie3x4_intc 0>,
> +				<0 0 0 2 &pcie3x4_intc 1>,
> +				<0 0 0 3 &pcie3x4_intc 2>,
> +				<0 0 0 4 &pcie3x4_intc 3>;
> +		linux,pci-domain = <0>;

> +		num-ib-windows = <16>;
> +		num-ob-windows = <16>;
> +		num-viewport = <8>;

These are marked as deprecated in the bindings and unused by the
driver anyway. The DW PCIe core driver auto-detects a number of
available iATU memory windows. So you can freely drop these
properties.

> +		max-link-speed = <3>;
> +		msi-map = <0x0000 &its1 0x0000 0x1000>;
> +		num-lanes = <4>;
> +		phys = <&pcie30phy>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0x9 0x00000000 0x0 0x40000000>;
> +		reg = <0xa 0x40000000 0x0 0x00400000>,
> +		      <0x0 0xfe150000 0x0 0x00010000>,
> +		      <0x0 0xf0000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
> +		reset-names = "pwr", "pipe";
> +		rockchip,pipe-grf = <&php_grf>;
> +		status = "disabled";
> +
> +		pcie3x4_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 260 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
> +	pcie3x2: pcie@fe160000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x10 0x1f>;
> +		clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
> +			 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
> +			 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie3x2_intc 0>,
> +				<0 0 0 2 &pcie3x2_intc 1>,
> +				<0 0 0 3 &pcie3x2_intc 2>,
> +				<0 0 0 4 &pcie3x2_intc 3>;
> +		linux,pci-domain = <1>;

> +		num-ib-windows = <16>;
> +		num-ob-windows = <16>;
> +		num-viewport = <8>;

ditto

-Serge(y)

> +		max-link-speed = <3>;
> +		msi-map = <0x1000 &its1 0x1000 0x1000>;
> +		num-lanes = <2>;
> +		phys = <&pcie30phy>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0x9 0x40000000 0x0 0x40000000>;
> +		reg = <0xa 0x40400000 0x0 0x00400000>,
> +		      <0x0 0xfe160000 0x0 0x00010000>,
> +		      <0x0 0xf1000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
> +		reset-names = "pwr", "pipe";
> +		rockchip,pipe-grf = <&php_grf>;
> +		status = "disabled";
> +
> +		pcie3x2_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 255 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
>  	pcie2x1l0: pcie@fe170000 {
>  		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
>  		#address-cells = <3>;
> @@ -221,4 +336,17 @@ combphy1_ps: phy@fee10000 {
>  		rockchip,pipe-phy-grf = <&pipe_phy1_grf>;
>  		status = "disabled";
>  	};
> +
> +	pcie30phy: phy@fee80000 {
> +		compatible = "rockchip,rk3588-pcie3-phy";
> +		reg = <0x0 0xfee80000 0x0 0x20000>;
> +		#phy-cells = <0>;
> +		clocks = <&cru PCLK_PCIE_COMBO_PIPE_PHY>;
> +		clock-names = "pclk";
> +		resets = <&cru SRST_PCIE30_PHY>;
> +		reset-names = "phy";
> +		rockchip,pipe-grf = <&php_grf>;
> +		rockchip,phy-grf = <&pcie30_phy_grf>;
> +		status = "disabled";
> +	};
>  };
> -- 
> 2.40.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
