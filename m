Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28AEDC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 16:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia+EMQoMdg+2HCLXAicDhxXNY/idgMDWOmlSfW3YsYc=; b=nkRAjuRUcctXNk
	/Xy0witolXQR5/p8zW+SDkp/YXpG0rUJZzMc9f/B+Eehx+Ixu78dVj3lu3kBKcGpdp52C0cNXEjuA
	85j1Gwi0XRTkT96qzSnDLO95QAFoqzUGPgVKKK21XiMagmtzvXIKAKQJVD3X3KRMc0dLJ93Io4stm
	ekg8FHAS0xs5RTXIDzGRRYAe97/2S17Hq7wVYuxIWpFkTGrjrfsECKGdh9KzWiwXHxvvyuRAfw6q2
	TLy5QiBFjQLJ17Lqyowt1CKfOksHmYaosUU7X4csthDN1WvBMy2vskgFg2GYOcFCjsnDRIaWbonga
	VrlZPZn/EeNgYMv08qSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCP02-008mQ1-NO; Tue, 25 Jan 2022 16:48:54 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCOzK-008m7F-4r
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 16:48:15 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 b12-20020a9d754c000000b0059eb935359eso10671064otl.8
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jan 2022 08:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=T+/85uEpu2eNGNWD/5sNn1BpuagkYZLYJyTVK41DIzg=;
 b=47+BmtZtou4NgWMqWFzPj44eXxCp4g8Py4gfRKN0aqs6+3kLX5R+LnAdpsgCatY21K
 VSPva87aSIVmuGWoh0uDg2Pb8v8zvKWtEWTM0ur5k9KWk5/0mr7cd0Zr9SrEX484Q/lu
 mEyKfgPi1rIRTUE4BM8GG1ivH842WQduqi0y6EW99HHrM51LTb8WBwqVm0Z5IwAm3hl1
 AYFOi1/lE2MZ9HUlhac2QEqZk8z2uYbEBUd4M6fP39XSC9gZLHvn55X0Mbk5/pxlFp9z
 Tc8eKughnD0QrvI2UIEcaHwHE7HvowgDeQWi71MsOmKI0F1/pzIKeksHCl6MOk8ymEaN
 GaNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=T+/85uEpu2eNGNWD/5sNn1BpuagkYZLYJyTVK41DIzg=;
 b=xwEpVJ89YDOcqff3bCRX7/NxnQzt9UTmmax5Z/4pYzkKIISJH5Sd4FQEIwuSDXzBzf
 B5CrVxsOZEXErdFBn2DjU7PpAbeagVNO1ov/JsXDGC57U/V7s04AfyzyVPNTVGRNFSKN
 5+lRjlEh+tbr9UouQTL20gaFU9676LNpUz+NGcDkCiAKcUcoM/TypcwR0e0gGwgFr3to
 VEQIYmzDu3yqmcrTMaJrz6gf0n9Fqidb3IyKHQvJ1qHf7tdglU5etnH7hOhrGNjSOgvA
 1096QkEAiaFPh9U5PKfpD8IVvG2XY6Kj/3w9Vn/Zr3T3daTMkRiRhHHfsM1GcKDCpblY
 iFNA==
X-Gm-Message-State: AOAM530qd4fkQfKsyIwl/hQnwt5bWuIUUg8D+JR2+U1Ag9haIgjm092N
 dEDh24HZ/db1D4G2/GH8xtZADA==
X-Google-Smtp-Source: ABdhPJxWeJgYFK/ES63uSI9wOGCbRto0EWrjGp0VbBNHViImFHdqyepe2K445KbXZQtPfMBmVOg2cQ==
X-Received: by 2002:a9d:76d2:: with SMTP id p18mr16032229otl.226.1643129288610; 
 Tue, 25 Jan 2022 08:48:08 -0800 (PST)
Received: from eze-laptop ([186.122.18.78])
 by smtp.gmail.com with ESMTPSA id j19sm3696308ots.21.2022.01.25.08.48.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 08:48:07 -0800 (PST)
Date: Tue, 25 Jan 2022 13:48:00 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shawnguo@kernel.org, aford@beaconembedded.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V3 10/10] arm64: dts: imx8mm: Enable Hantro G1 and G2
 video decoders
Message-ID: <YfApwHMi5IYxHtq8@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-11-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-11-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_084810_411591_799CB0FC 
X-CRM114-Status: GOOD (  14.91  )
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

Hi Adam,

On Sun, Jan 23, 2022 at 08:31:24PM -0600, Adam Ford wrote:
> There are two decoders on the i.MX8M Mini controlled by the
> vpu-blk-ctrl.  The G1 supports H264 and VP8 while the
> G2 support HEVC and VP9.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Looks good.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

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
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
