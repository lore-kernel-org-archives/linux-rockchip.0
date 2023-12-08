Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2A0FC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 16:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEvhDlVJcph4TMdkUqYnjuBtGK08VU3y7yAe/7Vv0JM=; b=WP86UdfAuN1JCz
	Ef00pxn0aHlioGTKkK43w5QPFGrpNOJixDbPhK1Or4Hud+EAcY0ScwIVpK5AFabxtNMS4br2ndek+
	ErSETqD47kW5jzizJRcp3bmGQ6JmXoVJnh1xuUYHI+p7lmIFh6Lsrfo2Oen4yH6NsGeZKPV0o2+A/
	Tto/qMcL1TksjgWg0ghx19uPW0f/H0ZgvucYBzaJgtFnvSBoXwDyfs/287n0inmDYKj7Rq+7BuoIz
	N/VhaptNYszfs/7vrXbHiF3cHqd/I36IZ18QcWAO+FSv2UWddDbIilfW3eFdv6Bmy8xsmOcuyCVms
	PtV4doq69tNirrDevaMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBdgb-00G17Z-0L;
	Fri, 08 Dec 2023 16:26:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBdgZ-00G16T-0R
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 16:26:44 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBdgT-0000Lb-Kw; Fri, 08 Dec 2023 17:26:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 16/17] arm64: dts: rockchip: Add vop on rk3588
Date: Fri, 08 Dec 2023 17:26:36 +0100
Message-ID: <4730849.ejJDZkT8p0@diego>
In-Reply-To: <20231207080247.652780-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
 <20231207080247.652780-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_082643_172951_58A0DA54 
X-CRM114-Status: GOOD (  17.40  )
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

Hi Andy,

Am Donnerstag, 7. Dezember 2023, 09:02:47 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop dt node for rk3588.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 96 +++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 7064c0e9179f..a9810ca78dc4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -593,6 +608,87 @@ i2c0: i2c@fd880000 {
>  		status = "disabled";
>  	};
>  
> +	vop: vop@fdd90000 {
> +		compatible = "rockchip,rk3588-vop";
> +		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
> +		reg-names = "vop", "gamma_lut";
> +		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_VOP>,
> +			 <&cru HCLK_VOP>,
> +			 <&cru DCLK_VOP0>,
> +			 <&cru DCLK_VOP1>,
> +			 <&cru DCLK_VOP2>,
> +			 <&cru DCLK_VOP3>,
> +			 <&cru PCLK_VOP_ROOT>;
> +		clock-names = "aclk",
> +			      "hclk",
> +			      "dclk_vp0",
> +			      "dclk_vp1",
> +			      "dclk_vp2",
> +			      "dclk_vp3",
> +			      "pclk_vop";
> +		resets = <&cru SRST_A_VOP>,
> +			 <&cru SRST_H_VOP>,
> +			 <&cru SRST_D_VOP0>,
> +			 <&cru SRST_D_VOP1>,
> +			 <&cru SRST_D_VOP2>,
> +			 <&cru SRST_D_VOP3>;
> +		reset-names = "axi",
> +			      "ahb",
> +			      "dclk_vp0",
> +			      "dclk_vp1",
> +			      "dclk_vp2",
> +			      "dclk_vp3";

resets and reset-names do not seem to be part of the binding, so
should probably be added there.


> +		iommus = <&vop_mmu>;
> +		power-domains = <&power RK3588_PD_VOP>;
> +		rockchip,grf = <&sys_grf>;
> +		rockchip,vop-grf = <&vop_grf>;
> +		rockchip,vo1-grf = <&vo1_grf>;
> +		rockchip,pmu = <&pmu>;
> +

move this blank line _below_ the status=disabled please.

> +		status = "disabled";
> +		vop_out: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			vp0: port@0 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;
> +			};
> +
> +			vp1: port@1 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <1>;
> +			};
> +
> +			vp2: port@2 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <2>;
> +			};
> +
> +			vp3: port@3 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <3>;
> +			};
> +		};
> +	};
> +
> +	vop_mmu: iommu@fdd97e00 {
> +		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
> +		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "vop_mmu";

interrupt-names is not part of the mainline iommu binding, so should be dropped


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
