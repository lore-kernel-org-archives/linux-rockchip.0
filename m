Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D20E5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 19:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JsACeXnqgXg1E4sFFsFWXxa7VcGEFTfIS4wkqy7S4Q=; b=eSpR4tpXs+nPb/
	JB8PdO6kpVlLQfctxTDzwytivmHfDhcEXGewzhXshmarcQu7eUVzFFLAzZgcgvuDbSQOHjbvfNMBT
	SrB0ZS+6B+Y2x+XxwYSSoagQ5KSGRczxbEXm9n1A0Lo2F1zqYCaUn5PYALXQ7gb3/8lGYmIpyYJAb
	PAeYoTa+iTCzfP1b8c60Q6Qye46X08ihA9ju9EzsBnOYm4xh76IjmrMKIoda3s5nHWW97pxT1HXTA
	7QfXIhDScku4ZyECwRY2l0UsATpfT9j9xKinw0TiX/lYCuv7Hx1Of2++wMd5d/JCJ6B+TrpHpMwRC
	GBsYNtCOy1KBNe5Qg9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqJk0-004kVZ-PO; Sun, 15 May 2022 19:17:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqJjy-004kUh-Tq; Sun, 15 May 2022 19:17:20 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqJjs-0005vt-RK; Sun, 15 May 2022 21:17:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 4/5] arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
Date: Sun, 15 May 2022 21:17:11 +0200
Message-ID: <5575428.DvuYhMxLoT@diego>
In-Reply-To: <20220429123832.2376381-5-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
 <20220429123832.2376381-5-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_121719_006731_2CD6F609 
X-CRM114-Status: GOOD (  15.73  )
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

Am Freitag, 29. April 2022, 14:38:30 CEST schrieb Peter Geis:
> The PCIe2x1 controller is common between the rk3568 and rk3566. It is a
> single lane PCIe2 compliant controller.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..aea5d9255235 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -689,6 +689,58 @@ qos_vop_m1: qos@fe1a8100 {
>  		reg = <0x0 0xfe1a8100 0x0 0x20>;
>  	};
>  
> +	pcie2x1: pcie@fe260000 {
> +		compatible = "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x0 0xf>;
> +		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
> +			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
> +			 <&cru CLK_PCIE20_AUX_NDFT>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk", "aux";
> +		device_type = "pci";
> +		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "sys", "pmc", "msi", "legacy", "err";
> +		#interrupt-cells = <1>;

I guess #interrupt-cells shouldn't be necessary here, as that property
is meant for interrupt-controller nodes - like the subnode here
which already has its own #interrupt-cells, right?

> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie_intc 0>,
> +				<0 0 0 2 &pcie_intc 1>,
> +				<0 0 0 3 &pcie_intc 2>,
> +				<0 0 0 4 &pcie_intc 3>;
> +		linux,pci-domain = <0>;
> +		num-ib-windows = <6>;
> +		num-ob-windows = <2>;
> +		max-link-speed = <2>;
> +		msi-map = <0x0 &gic 0x0 0x1000>;
> +		num-lanes = <1>;
> +		phys = <&combphy2 PHY_TYPE_PCIE>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		reg = <0x3 0xc0000000 0x0 0x00400000>,
> +		      <0x0 0xfe260000 0x0 0x00010000>,
> +		      <0x3 0x00000000 0x0 0x01000000>;
> +		ranges = <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
> +			  0x02000000 0x0 0x02000000 0x3 0x01100000 0x0 0x3ef00000>;
> +		reg-names = "dbi", "apb", "config";
> +		resets = <&cru SRST_PCIE20_POWERUP>;
> +		reset-names = "pipe";
> +		status = "disabled";
> +
> +		pcie_intc: legacy-interrupt-controller {
> +			#address-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-controller;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>;
> +		};
> +
> +	};
> +
>  	sdmmc0: mmc@fe2b0000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe2b0000 0x0 0x4000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
