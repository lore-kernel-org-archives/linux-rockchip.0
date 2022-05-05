Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2406DC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 00:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7TZkwkivSuvVMQ9ZmRuaJcnYhQ8N6eYoybhoUVDjLM=; b=FSH/VC+vjSDF2s
	TlekRht0VLSlmCmB2JsVqiPQql+7+Wjdbagfq9YYxhxgnczbx7ZlGaoL41CPvPEAeuyI2vmSV441F
	P4rb5YHyFWaqXIFoPurA1o6X5WmkxgrNyVFKwx1j7aUvY1qkG0D0R11S9cjsZk1jm/MaqSEZwEFjx
	XlFchI0QTMc6fSERPirvMXH5VShBwEQp0n64yoKQAb3BkCjk6S/1O7Gd8d/Z0oN4RGVWy4hyhKEEZ
	A98cxoo19xV+E+Ppm9BI67qKr5TWSrc/LPIu3rlXxXXpz9t0WiFxTfCcOCW1DcuOLXLg5xFvLb9dK
	AUT4guM+zNoBvL3pnrHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmPMO-00DIzo-9p; Thu, 05 May 2022 00:28:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmPMD-00DIxE-AF; Thu, 05 May 2022 00:28:38 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nmPM3-00058A-6y; Thu, 05 May 2022 02:28:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date: Thu, 05 May 2022 02:28:24 +0200
Message-ID: <1911394.usQuhbGJ8B@diego>
In-Reply-To: <20220422072841.2206452-17-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-17-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_172837_407256_0374245D 
X-CRM114-Status: GOOD (  23.45  )
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

Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> The VOP2 is the display output controller on the RK3568. Add the node
> for it to the dtsi file along with the required display-subsystem node
> and the iommu node.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> 
> Notes:
>     Changes since v6:
>     - Change RK3568_ prefix to ROCKCHIP_ prefix
>     - start counting from one instead of zero
>     
>     Changes since v4:
>     - Add Robs Ack
>     
>     Changes since v3:
>     - Bring back gamma_lut regs
>     - Drop redundant _vop suffix from clock names
> 
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi |  4 ++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  4 ++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 51 ++++++++++++++++++++++++
>  include/dt-bindings/soc/rockchip,vop2.h  | 14 +++++++
>  4 files changed, 73 insertions(+)
>  create mode 100644 include/dt-bindings/soc/rockchip,vop2.h
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> index 3839eef5e4f76..595fa2562cb8e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> @@ -18,3 +18,7 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&vop {
> +	compatible = "rockchip,rk3566-vop";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 5b0f528d68180..4deab90e83834 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -114,3 +114,7 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&vop {
> +	compatible = "rockchip,rk3568-vop";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3ce..fdb7a9a6ca743 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -129,6 +129,11 @@ opp-1800000000 {
>  		};
>  	};
>  
> +	display_subsystem: display-subsystem {
> +		compatible = "rockchip,display-subsystem";
> +		ports = <&vop_out>;
> +	};
> +
>  	firmware {
>  		scmi: scmi {
>  			compatible = "arm,scmi-smc";
> @@ -569,6 +574,52 @@ gmac1_mtl_tx_setup: tx-queues-config {
>  		};
>  	};
>  
> +	vop: vop@fe040000 {
> +		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +		reg-names = "regs", "gamma_lut";

reg-names does not seem to be part of the dt-binding.
Though now in the vop2-driver I see that the code uses that naming.

I guess we might want to just go the vop1-way by using numbered
platform-resources via a follow-up patch and drop the regnames here?


Heiko


> +		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>, <&cru DCLK_VOP0>,
> +			 <&cru DCLK_VOP1>, <&cru DCLK_VOP2>;
> +		clock-names = "aclk", "hclk", "dclk_vp0", "dclk_vp1", "dclk_vp2";
> +		iommus = <&vop_mmu>;
> +		power-domains = <&power RK3568_PD_VO>;
> +		rockchip,grf = <&grf>;
> +		status = "disabled";
> +
> +		vop_out: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			vp0: port@0 {
> +				reg = <0>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			vp1: port@1 {
> +				reg = <1>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			vp2: port@2 {
> +				reg = <2>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +	};
> +
> +	vop_mmu: iommu@fe043e00 {
> +		compatible = "rockchip,rk3568-iommu";
> +		reg = <0x0 0xfe043e00 0x0 0x100>, <0x0 0xfe043f00 0x0 0x100>;
> +		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
> +		clock-names = "aclk", "iface";
> +		#iommu-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	qos_gpu: qos@fe128000 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe128000 0x0 0x20>;
> diff --git a/include/dt-bindings/soc/rockchip,vop2.h b/include/dt-bindings/soc/rockchip,vop2.h
> new file mode 100644
> index 0000000000000..6e66a802b96a5
> --- /dev/null
> +++ b/include/dt-bindings/soc/rockchip,vop2.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
> +
> +#ifndef __DT_BINDINGS_ROCKCHIP_VOP2_H
> +#define __DT_BINDINGS_ROCKCHIP_VOP2_H
> +
> +#define ROCKCHIP_VOP2_EP_RGB0	1
> +#define ROCKCHIP_VOP2_EP_HDMI0	2
> +#define ROCKCHIP_VOP2_EP_EDP0	3
> +#define ROCKCHIP_VOP2_EP_MIPI0	4
> +#define ROCKCHIP_VOP2_EP_LVDS0	5
> +#define ROCKCHIP_VOP2_EP_MIPI1	6
> +#define ROCKCHIP_VOP2_EP_LVDS1	7
> +
> +#endif /* __DT_BINDINGS_ROCKCHIP_VOP2_H */
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
