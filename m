Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15663EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 17:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYOx1BHyrJDO0zL7IT9fDdO1K5iL/SkdvjzHLQ3uAdw=; b=i11m6m8cdQjWuv
	mc5vH2PO30KGZopg+FoTPoOv/dDB7bKjXtghiTROi18TlWb4S7UtYzIB1qp+o51JBgZvU9gmRnzNt
	3rac5Q2belJH3V11BMp6br9PZvonhsUNeNqu9RKbUPK5xJFwigLP7TLoUuDAh+GRJaVCyB+RFOCYM
	sYfS1tl7BS7iYS8z/TQZYxM7wWLporyMKQoia3D2OZzrYbMMOYn0/tw9v5gt/mSrAcfpuLFF8xqhy
	RGHLpCG/KanhWLtltOr2gTfWwChOG9nlp67lGPtywrAmrHHqvKkTb20a83nLJbXIjea/Q0hSlujkf
	0Y31n1glZebDk7TFF6HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMdF-006lEF-0e;
	Fri, 14 Jul 2023 17:31:05 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKMdC-006lDG-1d;
	Fri, 14 Jul 2023 17:31:04 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4fbaef9871cso3679218e87.0;
        Fri, 14 Jul 2023 10:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689355858; x=1691947858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VpMFCE+Ca146c1cbtzsHnNoAmFwnj+Ac+T3KfufJ/1E=;
        b=p+1k1JvMlq0J5cumGBWyOL8kGH0TmUDQ+aN0Vgij/N+H202thGb5vzpfTtQN/oiFt+
         Lq/4TEEM7BNVO7wOxOFfHUSsBiAb/H/V8xnreA8oEsEnzY/A1Uh5V9ahm24mzTD04EMG
         lnsjE2zTqZYuAEHkU/J5v/VrgJ0qE6Nyd3i7/B03tz4erwtCBg7om3Ipl50BZeKRUq9F
         xX3j8esQOvxgAWfpn7uOb6MJy9usJ3S+xN7oJ5/wf1pV42bZhhV2//6HnoVyEM2UO8V0
         Sxt2cvnaPj0qylHZT/JuOE/kRXw98j5cKFbh8RM+pzsxllqZ43jlAlpHzUGbAOKhSiZ8
         ik8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689355858; x=1691947858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VpMFCE+Ca146c1cbtzsHnNoAmFwnj+Ac+T3KfufJ/1E=;
        b=SmR4saM5A4oiat8WLZGixPLdMl3gBadbpBTrSpFMwM49uYyjyY59+yXlJ9NagbZo+B
         5eTlw3VIYqhsA5zl8TzOzrDjZ18yhID60j4HAYOVoFiA0yhWUqpVpTIhJVdM0AXrNxFj
         LMtmgOyYfAMLvHfSFqznWZ8Cbl/p+CC2KKjlj0TZTHq/6cN6loUyQfU5wMMUZRc2Ft0b
         uaQr+McjLsU9O6WSfeAVokyKVz4SrRG65LSGL9f+yr1DnIRBR06frh/X7DEr9GSkjiyK
         ZKLaLTg+pRopAlOIdzxfcMX4d8Y/aU2zL1nUkPfyaV3f9se1AwnLgIkeuK8yCdKnVqhp
         /PcQ==
X-Gm-Message-State: ABy/qLbCDx370SfHEF1/O9Mu4n1JFLdOnZqnvB6sr8DgkJWABQbYXLE4
	WNyq9vDCrtml0kPaA9jWJizuJM+IuapqLg==
X-Google-Smtp-Source: APBJJlEMMbo9KZIyXFxmxp3JHP/GnReaOpIbfs6lexxSvvqnKyowfI97WlZtL+7nl76t/WqTnMgmIA==
X-Received: by 2002:a05:6512:39cf:b0:4f8:6b7f:c6d6 with SMTP id k15-20020a05651239cf00b004f86b7fc6d6mr4662367lfu.48.1689355858268;
        Fri, 14 Jul 2023 10:30:58 -0700 (PDT)
Received: from mobilestation ([85.249.18.201])
        by smtp.gmail.com with ESMTPSA id z1-20020a19f701000000b004fb78959218sm1541574lfe.200.2023.07.14.10.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 10:30:57 -0700 (PDT)
Date: Fri, 14 Jul 2023 20:30:53 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: rk3588: add PCIe2 support
Message-ID: <cfdkanrvpcvqyjow22gp25xpf4bgel6slqfhkjdeu7tzn5rlzf@jyuncjnvdp3m>
References: <20230713171851.73052-1-sebastian.reichel@collabora.com>
 <20230713171851.73052-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230713171851.73052-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_103102_566427_02CE95AD 
X-CRM114-Status: GOOD (  16.21  )
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

On Thu, Jul 13, 2023 at 07:18:51PM +0200, Sebastian Reichel wrote:
> Add all three PCIe2 IP blocks to the RK3588 DT. Note, that RK3588
> also has two PCIe3 IP blocks, that will be handled separately.
> 
> Co-developed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi  |  54 +++++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 108 ++++++++++++++++++++++
>  2 files changed, 162 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> index 6be9bf81c09c..4d66ca6c2e4c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -80,6 +80,60 @@ i2s10_8ch: i2s@fde00000 {
>  		status = "disabled";
>  	};
>  
> +	pcie2x1l0: pcie@fe170000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x20 0x2f>;
> +		clocks = <&cru ACLK_PCIE_1L0_MSTR>, <&cru ACLK_PCIE_1L0_SLV>,
> +			 <&cru ACLK_PCIE_1L0_DBI>, <&cru PCLK_PCIE_1L0>,
> +			 <&cru CLK_PCIE_AUX2>, <&cru CLK_PCIE1L0_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie2x1l0_intc 0>,
> +				<0 0 0 2 &pcie2x1l0_intc 1>,
> +				<0 0 0 3 &pcie2x1l0_intc 2>,
> +				<0 0 0 4 &pcie2x1l0_intc 3>;
> +		linux,pci-domain = <2>;

> +		num-ib-windows = <8>;
> +		num-ob-windows = <8>;
> +		num-viewport = <4>;

These properties are marked as deprecated and unused by the driver
anyway. You can freely drop them.

> +		max-link-speed = <2>;
> +		msi-map = <0x2000 &its0 0x2000 0x1000>;
> +		num-lanes = <1>;
> +		phys = <&combphy1_ps PHY_TYPE_PCIE>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0x9 0x80000000 0x0 0x40000000>;
> +		reg = <0xa 0x40800000 0x0 0x00400000>,
> +		      <0x0 0xfe170000 0x0 0x00010000>,
> +		      <0x0 0xf2000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
> +		reset-names = "pwr", "pipe";
> +		status = "disabled";
> +
> +		pcie2x1l0_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 240 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
>  	gmac0: ethernet@fe1b0000 {
>  		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
>  		reg = <0x0 0xfe1b0000 0x0 0x10000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index c9f9dd2472f5..27d711d114d6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1227,6 +1227,114 @@ qos_vop_m1: qos@fdf82200 {
>  		reg = <0x0 0xfdf82200 0x0 0x20>;
>  	};
>  
> +	pcie2x1l1: pcie@fe180000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x30 0x3f>;
> +		clocks = <&cru ACLK_PCIE_1L1_MSTR>, <&cru ACLK_PCIE_1L1_SLV>,
> +			 <&cru ACLK_PCIE_1L1_DBI>, <&cru PCLK_PCIE_1L1>,
> +			 <&cru CLK_PCIE_AUX3>, <&cru CLK_PCIE1L1_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie2x1l1_intc 0>,
> +				<0 0 0 2 &pcie2x1l1_intc 1>,
> +				<0 0 0 3 &pcie2x1l1_intc 2>,
> +				<0 0 0 4 &pcie2x1l1_intc 3>;
> +		linux,pci-domain = <3>;

> +		num-ib-windows = <8>;
> +		num-ob-windows = <8>;
> +		num-viewport = <4>;

ditto

> +		max-link-speed = <2>;
> +		msi-map = <0x3000 &its0 0x3000 0x1000>;
> +		num-lanes = <1>;
> +		phys = <&combphy2_psu PHY_TYPE_PCIE>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0x9 0xc0000000 0x0 0x40000000>;
> +		reg = <0xa 0x40c00000 0x0 0x00400000>,
> +		      <0x0 0xfe180000 0x0 0x00010000>,
> +		      <0x0 0xf3000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
> +		reset-names = "pwr", "pipe";
> +		status = "disabled";
> +
> +		pcie2x1l1_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 245 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
> +	pcie2x1l2: pcie@fe190000 {
> +		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x40 0x4f>;
> +		clocks = <&cru ACLK_PCIE_1L2_MSTR>, <&cru ACLK_PCIE_1L2_SLV>,
> +			 <&cru ACLK_PCIE_1L2_DBI>, <&cru PCLK_PCIE_1L2>,
> +			 <&cru CLK_PCIE_AUX4>, <&cru CLK_PCIE1L2_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie2x1l2_intc 0>,
> +				<0 0 0 2 &pcie2x1l2_intc 1>,
> +				<0 0 0 3 &pcie2x1l2_intc 2>,
> +				<0 0 0 4 &pcie2x1l2_intc 3>;
> +		linux,pci-domain = <4>;

> +		num-ib-windows = <8>;
> +		num-ob-windows = <8>;
> +		num-viewport = <4>;

ditto

-Serge(y)

> +		max-link-speed = <2>;
> +		msi-map = <0x4000 &its0 0x4000 0x1000>;
> +		num-lanes = <1>;
> +		phys = <&combphy0_ps PHY_TYPE_PCIE>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
> +			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
> +			 <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
> +		reg = <0xa 0x41000000 0x0 0x00400000>,
> +		      <0x0 0xfe190000 0x0 0x00010000>,
> +		      <0x0 0xf4000000 0x0 0x00100000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
> +		reset-names = "pwr", "pipe";
> +		status = "disabled";
> +
> +		pcie2x1l2_intc: legacy-interrupt-controller {
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 250 IRQ_TYPE_EDGE_RISING 0>;
> +		};
> +	};
> +
>  	gmac1: ethernet@fe1c0000 {
>  		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
>  		reg = <0x0 0xfe1c0000 0x0 0x10000>;
> -- 
> 2.40.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
