Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41929C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 19:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neE8t8vKFQj75MG8/VdID5rXQDSwex/xAPavpHsWjOQ=; b=vcAws25TnCW7eT
	CwFt3l2aYyRFjLhwLNnn7vsbWBPzV5Y/YnpaD3JdraEvcw8G/gMLDaax8uHGDzx/um+H6/ar33i93
	NkyQQckqdLIIz0HzXhsKNIJuMvMRVbWy1m0MEuKuCl7x7kIaAxx/GkRDlw6FVi11OS10hbZxszQ76
	sdNg71nLiZMadlMnKxe6nPqmyf1ejchkoZRbyE7at48eVqDc493w9F01ZU79rrhLaydIXTJuda9af
	Asfcen869m+yDbhDrfLmxZ0OeKkDS6nJJgpZXvt5MV8Qy3xrbroYECnxTfVNFRuTkna/4K4bYNAgm
	Z5mUi/kc1RMlkjBtckNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCR7j-009ILV-QF; Tue, 25 Jan 2022 19:04:59 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCR7X-009IIp-VT
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 19:04:49 +0000
Received: by mail-oi1-x236.google.com with SMTP id v67so14754837oie.9
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jan 2022 11:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xx6pPxDWusTyXDPmQQkkGMWNHJXpoVx/sQtpxlse54Q=;
 b=eL1XuwFOYuGbQjWefmXn6X59kcQdEJcCZ0aASe9nlq8PTeo3O0rnT1Qpn/1x7ivWkI
 4ZhaWoAqzBJr/lYrFFq3xNGF4BFcQ8zYx7O0jheGHTbCPf14s6Z18suZMXkvpRlglKY3
 lrfHLQSAHe4Zpg/wXlMH+melwJq2a6fGzyDvKR4QuygoxgypoukSjjY3xCXHtA8nyOKJ
 qMBZOZ9wR9cSVEkBdyyRJaddOaQqoix59xQlctEVoNA8U+kZLZ3VMwf1WUQrFJNo01Q8
 agr1KSTZTMyd4gRVquSgfyVDjQrkZDrKTVlDvOOcbYYVQF5F2y0VG7XVMwJGbPx1tlSt
 tlog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xx6pPxDWusTyXDPmQQkkGMWNHJXpoVx/sQtpxlse54Q=;
 b=FkZfPz/VTvTwSMYOtwEZhpw3sICmnNydtvb3IxuEZwUXGVQqOHfJo0BUL/u6vmN1Np
 aNh+sQ/NaWHaiogExXFmak/+xVN4pj/eNZtC/WlKA+ilWKxXatsAa+Znc096ZqL38I4P
 mpW2iP7LQxD2GJ9ehHIkhU77mAUtyymbxDwHdskQsY+YdVpnM0g/koDzCYp0tRcNqi+R
 zZdcunWnFtputBntiA45tFfEGvtNz5084GfJy9hY02J0WrvjJPVGr/iW9A7UFSGtM3SH
 B6Ghh7p1suG9nTw4uCK1E8zWjnUkx/uZQ1WYdkKMXtrtCWLVT4EWzdudJOtGhoEhVIdD
 nMjw==
X-Gm-Message-State: AOAM532QJG2UDy+5/RoV31KdZyAUXbNylFuVRTO1CAKjU6m5oFs3MduI
 T9u0EYNkvwT7tt9q+sJTJk/Q8jZeTvx6tw==
X-Google-Smtp-Source: ABdhPJxIP6+oD7gt9eH5+LFe++w9dIATHyaj+iBj28F054mPXWZGdYsjQk56Ug7nZcA1f6wMwrDeog==
X-Received: by 2002:a05:6808:1b06:: with SMTP id
 bx6mr1656291oib.176.1643137486631; 
 Tue, 25 Jan 2022 11:04:46 -0800 (PST)
Received: from eze-laptop ([186.122.18.78])
 by smtp.gmail.com with ESMTPSA id l18sm8138754otv.49.2022.01.25.11.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 11:04:45 -0800 (PST)
Date: Tue, 25 Jan 2022 16:04:38 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com,
 cphealy@gmail.com, kernel test robot <lkp@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 07/11] arm64: dts: imx8mq: Enable both G1 and G2 VPU's
 with vpu-blk-ctrl
Message-ID: <YfBJxmgwLGbVqGba@eze-laptop>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-8-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-8-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_110448_056825_EDD57198 
X-CRM114-Status: GOOD (  20.47  )
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

On Tue, Jan 25, 2022 at 11:11:24AM -0600, Adam Ford wrote:
> With the Hantro G1 and G2 now setup to run independently, update
> the device tree to allow both to operate.  This requires the
> vpu-blk-ctrl node to be configured.  Since vpu-blk-ctrl needs
> certain clock enabled to handle the gating of the G1 and G2
> fuses, the clock-parents and clock-rates for the various VPU's
> to be moved into the pgc_vpu because they cannot get re-parented
> once enabled, and the pgc_vpu is the highest in the chain.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>

It doesn't seem correct to have the Reported-by on this commit.

Thanks,
Ezequiel

> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 2df2510d0118..549b2440f55d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -737,7 +737,21 @@ pgc_gpu: power-domain@5 {
>  					pgc_vpu: power-domain@6 {
>  						#power-domain-cells = <0>;
>  						reg = <IMX8M_POWER_DOMAIN_VPU>;
> -						clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +						clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>,
> +							 <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +							 <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +						assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
> +								  <&clk IMX8MQ_CLK_VPU_G2>,
> +								  <&clk IMX8MQ_CLK_VPU_BUS>,
> +								  <&clk IMX8MQ_VPU_PLL_BYPASS>;
> +						assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
> +									 <&clk IMX8MQ_VPU_PLL_OUT>,
> +									 <&clk IMX8MQ_SYS1_PLL_800M>,
> +									 <&clk IMX8MQ_VPU_PLL>;
> +						assigned-clock-rates = <600000000>,
> +								       <600000000>,
> +								       <800000000>,
> +								       <0>;
>  					};
>  
>  					pgc_disp: power-domain@7 {
> @@ -1457,30 +1471,31 @@ usb3_phy1: usb-phy@382f0040 {
>  			status = "disabled";
>  		};
>  
> -		vpu: video-codec@38300000 {
> -			compatible = "nxp,imx8mq-vpu";
> -			reg = <0x38300000 0x10000>,
> -			      <0x38310000 0x10000>,
> -			      <0x38320000 0x10000>;
> -			reg-names = "g1", "g2", "ctrl";
> -			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "g1", "g2";
> +		vpu_g1: video-codec@38300000 {
> +			compatible = "nxp,imx8mq-vpu-g1";
> +			reg = <0x38300000 0x10000>;
> +			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> +			power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> +		};
> +
> +		vpu_g2: video-codec@38310000 {
> +			compatible = "nxp,imx8mq-vpu-g2";
> +			reg = <0x38310000 0x10000>;
> +			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +			power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
> +		};
> +
> +		vpu_blk_ctrl: blk-ctrl@38320000 {
> +			compatible = "fsl,imx8mq-vpu-blk-ctrl";
> +			reg = <0x38320000 0x100>;
> +			power-domains = <&pgc_vpu>, <&pgc_vpu>, <&pgc_vpu>;
> +			power-domain-names = "bus", "g1", "g2";
>  			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> -				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> -				 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> -			clock-names = "g1", "g2", "bus";
> -			assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
> -					  <&clk IMX8MQ_CLK_VPU_G2>,
> -					  <&clk IMX8MQ_CLK_VPU_BUS>,
> -					  <&clk IMX8MQ_VPU_PLL_BYPASS>;
> -			assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
> -						 <&clk IMX8MQ_VPU_PLL_OUT>,
> -						 <&clk IMX8MQ_SYS1_PLL_800M>,
> -						 <&clk IMX8MQ_VPU_PLL>;
> -			assigned-clock-rates = <600000000>, <600000000>,
> -					       <800000000>, <0>;
> -			power-domains = <&pgc_vpu>;
> +				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +			clock-names = "g1", "g2";
> +			#power-domain-cells = <1>;
>  		};
>  
>  		pcie0: pcie@33800000 {
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
