Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3904EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 18:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdFFev9XsshXAPwkGdbjA25W/eSMYPJ+a3ofwypYG3E=; b=zy1CfKDuswTH0w
	+zQWPtY5oZa5BRyF/+BeY8e8rIag9bhY8kdsO+RXAYzgw+OIgPRm6q06rlffR8NWqWKDcV74MV/zr
	V88/sPNid1QB3YLf7jsV7DD25X8+M6JNuduZ2jkBAXj9cFubCBYq47CedgbQIez/rKz6tZ1D29E5D
	CXtxj38zcD4wa81gepb7ko3hEL08etIuJvU4rBek9jFbqt4sZ3FBtlAG6mMPGMEFyL219D8y0ZLWG
	XWy6Uizm8OJP4ShDl5JO7IGzqBCTfIlqQDLSO4WRvqgaH1+yROE+uB2/OMLiAbKnuzXH3BAuvR5PZ
	pOL/hU8XzveodZUXdboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCQS5-009Che-75; Tue, 25 Jan 2022 18:21:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCQS2-009Cg3-6T
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 18:21:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nCQRt-0006Sa-B3; Tue, 25 Jan 2022 19:21:45 +0100
Message-ID: <19c4213b279992363080a9f36668562ddd17d1e0.camel@pengutronix.de>
Subject: Re: [PATCH V4 11/11] arm64: dts: imx8mm: Enable Hantro G1 and G2
 video decoders
From: Lucas Stach <l.stach@pengutronix.de>
To: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-staging@lists.linux.dev
Date: Tue, 25 Jan 2022 19:21:44 +0100
In-Reply-To: <20220125171129.472775-12-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-12-aford173@gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_102154_245172_CEA96B99 
X-CRM114-Status: GOOD (  13.07  )
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

Am Dienstag, dem 25.01.2022 um 11:11 -0600 schrieb Adam Ford:
> There are two decoders on the i.MX8M Mini controlled by the
> vpu-blk-ctrl.  The G1 supports H264 and VP8 while the
> G2 support HEVC and VP9.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 0c7a72c51a31..98aec4421713 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1272,6 +1272,22 @@ gpu_2d: gpu@38008000 {
>  			power-domains = <&pgc_gpu>;
>  		};
>  
> +		vpu_g1: video-codec@38300000 {
> +			compatible = "nxp,imx8mm-vpu-g1";
> +			reg = <0x38300000 0x10000>;
> +			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
> +			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
> +		};
> +
> +		vpu_g2: video-codec@38310000 {
> +			compatible = "nxp,imx8mq-vpu-g2";
> +			reg = <0x38310000 0x10000>;
> +			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
> +			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
> +		};
> +
>  		vpu_blk_ctrl: blk-ctrl@38330000 {
>  			compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
>  			reg = <0x38330000 0x100>;
> @@ -1282,6 +1298,12 @@ vpu_blk_ctrl: blk-ctrl@38330000 {
>  				 <&clk IMX8MM_CLK_VPU_G2_ROOT>,
>  				 <&clk IMX8MM_CLK_VPU_H1_ROOT>;
>  			clock-names = "g1", "g2", "h1";
> +			assigned-clocks = <&clk IMX8MM_CLK_VPU_G1>,
> +					  <&clk IMX8MM_CLK_VPU_G2>;
> +			assigned-clock-parents = <&clk IMX8MM_VPU_PLL_OUT>,
> +						 <&clk IMX8MM_VPU_PLL_OUT>;
> +			assigned-clock-rates = <600000000>,
> +					       <600000000>;
>  			#power-domain-cells = <1>;
>  		};
>  



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
