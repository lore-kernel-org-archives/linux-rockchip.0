Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EF45C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 08:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm2+ji6gcmvruguD1QQcAjY8IgrDxicfjPEEXpLpjuY=; b=Dv3rdGnP7YnLfU
	FAZ8a6fXfVdXKXHXiXd1ypwGrK1CooYwSM3uApWHakxHP7Y2hYhZb/ijNEKXULfDFJ4OqwgPkGt+b
	wPOw28O4NKCS6IXkjprTmtWIjbmfsOgGeFnk4H8s2M3zQZUbtXIrjFwfEWj452/DRfS7vCHYl5viD
	fEWb6sDZGmPnON1UmknQOMzaQAT4YIxvf/adrQ08P6RoIaUpeiY6T3wG8xMKSvuexGTN0T/A1+0Hv
	jQ/5sQgg93BmnRyom+5728NZMHoECQrW8oI8ZvktT8Hq5VpD7jVNcm/4dwzdHULAQVgnfNFNBLFL3
	9Sqh60OYxIN+STkcVQ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVkA-003smK-BE; Fri, 25 Feb 2022 08:14:26 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVal-003oex-2I
 for linux-rockchip@bombadil.infradead.org; Fri, 25 Feb 2022 08:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vX5i8V22IHuIz7v34uCR11bKomjkHGvsynR6Gq20MOU=; b=cwNPsC18BDEpCVo+ycZcMYjnm8
 D9xWTXSIejo2Yh5Wy+0uT9VRsaXHbLZgJHIDQYZFpqRdYPccjqIxCt1QvpjOrwi/PUpF8ylAnZish
 yRbrdFGT4Tv8XkS03xz8ZElbRClk9oPMO2oxUyCsUWTedRW4A5/gnnyjkCRhRibetRQnUPXiUkcbR
 YFKetf/iAxM561K9827FGmxjitOR4W65JnFWuCcq4/iQl+y2bV9AeBSy4OAPFF9LRgWjsWhUhM3ZP
 bjG9iveXhVDAQ7A2/Rm8xiVCY4WV09LfKokHfE1LtTP9IPdCFdnY/bH7ex1TVdilHaQh13/bMfqpV
 ZguXNR+A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVag-00CtsR-L6
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 08:04:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNVaX-0003Un-Aq; Fri, 25 Feb 2022 09:04:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNVaV-0005A0-Hw; Fri, 25 Feb 2022 09:04:27 +0100
Date: Fri, 25 Feb 2022 09:04:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 17/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <20220225080427.GB19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-18-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225075150.2729401-18-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:53:41 up 76 days, 16:39, 83 users,  load average: 0.77, 0.60, 0.35
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_080438_757072_2CFBCB5D 
X-CRM114-Status: GOOD (  28.04  )
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

On Fri, Feb 25, 2022 at 08:51:43AM +0100, Sascha Hauer wrote:
> The VOP2 is the display output controller on the RK3568. Add the node
> for it to the dtsi file along with the required display-subsystem node
> and the iommu node.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> 
> Notes:
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
> index 2fd313a295f8a..1e55efb6fcfde 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -95,3 +95,7 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&vop {
> +	compatible = "rockchip,rk3568-vop";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index a68033a239750..19d8e67c4698b 100644
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
> @@ -451,6 +456,52 @@ gmac1_mtl_tx_setup: tx-queues-config {
>  		};
>  	};
>  
> +	vop: vop@fe040000 {
> +		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +		reg-names = "regs", "gamma_lut";
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

One thing I missed to log in the changelog: These defines now have a
ROCKCHIP_ prefix rather than a RK3568_ prefix so that they can be reused
by future SoCs. Also I start counting from one now so that a zero
initialized variable becomes an invalid value.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
