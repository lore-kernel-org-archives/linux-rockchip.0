Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 513E4C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 19:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgIk4xpKFaV1dCdZb+dtS+rQMPrGews4b2vxF0GU96o=; b=zEGyj7T81FKaoQ
	lQT2i4XCGSkJbkCI5hNCmaNXuiojrtHbPtnbwy017F+/ppatp97muu9IehOsrtZeWyYxkNX8inX/q
	NDozylFNK8pLWT+mORwApsIgdXmZZrz9g/KgHlcrElldidrwr1ny26IN+iUAgCWLDdmWA/DWV6c26
	l9+3BKfrYT8v1ia/naQqn14fyjXTcYimn3TqOGBToteCMX9A+Q+eIpzcJk/No0Ku5EBGJaaHIJHig
	ELhL0WSJCF4fDxWCOBK2hX3fVihYmw5t7D70KZPT6CHsFkkNtYJU8HiwvYkbxu6uI4zSPFPZHcJfa
	0+rAkgffH3KLLVxN2Srg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpXZ5-00000005x0Y-2EDe;
	Tue, 04 Mar 2025 19:04:27 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpVtl-00000005anV-3bhn;
	Tue, 04 Mar 2025 17:17:43 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741108654; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Cn3hJpE7SoGEucl3ZE5MWdfDQTZaqZB+4tdMp9wJ3NNHrtKGuR5476yRJ+z2jkF9yRBa4H7Fr/DrRn9FMpZ2ClWH8ClDHniWWDwSjt8WN+ljcklTnbLz+tiE1CUSrIcIAcdlRAIh+g3a0RxT8i2ezboUSU0gWm7/OsNdczeiDcU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741108654; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7WMScFZAkTq8yg1G5slYKsHitTL/MRFrvfKi5nUyvhA=; 
	b=BNatXZo2xInUuPrLuBs4G95bC9v3vmmJNKstBi+f5g12pFVB3r0arjj/1QVKDQozSF3iAVXShNuiYhMqrStdSdlZwtls/QktP1tZF1bmnuT3tfvbuXv7Kg9+z64TcSH2mhkTUmaIjVXFruQzf07otuXjpCHsV+jmqAcmDnzVrRc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741108654;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=7WMScFZAkTq8yg1G5slYKsHitTL/MRFrvfKi5nUyvhA=;
	b=OdeKeDmcdDmQDVFAxowDTIQ6TyS8EjDlgxqAwSp5MqXBREgQAPyTE8jFNF6UgG3X
	xuuGG8yENhwuZ5ozhN7K+AjMJ4A6N0+NS5W+Cdh1v+0QvLtp+bbFH4uyk+RXRDlk7t+
	ZwVpMBxHN+9LMXj54hAw1RmEhhZb/GpC7vezYhAE=
Received: by mx.zohomail.com with SMTPS id 1741108651558457.8426232371871;
	Tue, 4 Mar 2025 09:17:31 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: rockchip: Add hdmi for rk3576
Date: Tue, 04 Mar 2025 12:17:30 -0500
Message-ID: <6133294.lOV4Wx5bFT@earth>
In-Reply-To: <20241231095728.253943-3-andyshrk@163.com>
References: <20241231095728.253943-1-andyshrk@163.com>
 <20241231095728.253943-3-andyshrk@163.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_091741_963290_18172AF0 
X-CRM114-Status: GOOD (  13.38  )
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

On Tuesday, 31 December 2024 04:57:19 EST Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add hdmi and it's phy dt node for rk3576.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 58 ++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3576.dtsi index 130d11a2cc89..b83f421dc11d
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -450,6 +450,11 @@ soc {
>  		#size-cells = <2>;
>  		ranges;
> 
> +		hdptxphy_grf: syscon@26032000 {
> +			compatible = "rockchip,rk3576-hdptxphy-grf", 
"syscon";
> +			reg = <0x0 0x26032000 0x0 0x100>;
> +		};
> +
>  		sys_grf: syscon@2600a000 {
>  			compatible = "rockchip,rk3576-sys-grf", "syscon";
>  			reg = <0x0 0x2600a000 0x0 0x2000>;
> @@ -894,6 +899,46 @@ vop_mmu: iommu@27d07e00 {
>  			status = "disabled";
>  		};
> 
> +		hdmi: hdmi@27da0000 {
> +			compatible = "rockchip,rk3576-dw-hdmi-qp";
> +			reg = <0x0 0x27da0000 0x0 0x20000>;
> +			clocks = <&cru PCLK_HDMITX0>,
> +				 <&cru CLK_HDMITX0_EARC>,
> +				 <&cru CLK_HDMITX0_REF>,
> +				 <&cru MCLK_SAI6_8CH>,
> +				 <&cru CLK_HDMITXHDP>,
> +				 <&cru HCLK_VO0_ROOT>;
> +			clock-names = "pclk", "earc", "ref", "aud", "hdp", 
"hclk_vo1";
> +			interrupts = <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "avp", "cec", "earc", "main", 
"hpd";
> +			phys = <&hdptxphy>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&hdmi_txm0_pins &hdmi_tx_scl 
&hdmi_tx_sda>;
> +			power-domains = <&power RK3576_PD_VO0>;
> +			resets = <&cru SRST_HDMITX0_REF>, <&cru 
SRST_HDMITXHDP>;
> +			reset-names = "ref", "hdp";
> +			rockchip,grf = <&ioc_grf>;
> +			rockchip,vo-grf = <&vo0_grf>;
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				hdmi_in: port@0 {
> +					reg = <0>;
> +				};
> +
> +				hdmi_out: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
>  		qos_hdcp1: qos@27f02000 {
>  			compatible = "rockchip,rk3576-qos", "syscon";
>  			reg = <0x0 0x27f02000 0x0 0x20>;
> @@ -1655,6 +1700,19 @@ uart11: serial@2afd0000 {
>  			status = "disabled";
>  		};
> 
> +		hdptxphy: hdmiphy@2b000000 {
> +			compatible = "rockchip,rk3576-hdptx-phy", 
"rockchip,rk3588-hdptx-phy";
> +			reg = <0x0 0x2b000000 0x0 0x2000>;
> +			clocks = <&cru CLK_PHY_REF_SRC>, <&cru 
PCLK_HDPTX_APB>;
> +			clock-names = "ref", "apb";
> +			resets = <&cru SRST_P_HDPTX_APB>, <&cru 
SRST_HDPTX_INIT>,
> +				 <&cru SRST_HDPTX_CMN>, <&cru 
SRST_HDPTX_LANE>;
> +			reset-names = "apb", "init", "cmn", "lane";
> +			rockchip,grf = <&hdptxphy_grf>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		sram: sram@3ff88000 {
>  			compatible = "mmio-sram";
>  			reg = <0x0 0x3ff88000 0x0 0x78000>;

This patch needs rebasing over the USB support patches.

Regards,
Detlev.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
