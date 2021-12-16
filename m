Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43EC9C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 17:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3GffjxM8xlCV3FBNfvtImUjJGmwruhAqnF3i4Qv1QQ=; b=fav1BdCieqe9Rc
	DMDmpjUFkshaSOlG9CrXKdUfnLIhJzhZNUZghc8x7MImAACK5s9V3Asijxd7C+MSqwUOKDpqJJAfN
	etHRQnBGg/DEBbYl9OkMqwWCrQRTkkgxGidCufFUqS0yCQmrDYLzTbPc6CvEnpzrrHd+9GQ1BVEDK
	N/ggI3aCtL5Jjp2KzxM98UNmdb1Lv4CO/Zzlbw8GX7WY1blRRrcvEiZdYrm7kApgz2x8trAGBZecb
	lVMkA9ItWyylsbZlY0UeuZc3B55McRPgJ7upfUK32YNqafgO5HvGv7JwQ8+l21M//ugrHHceqzua7
	Gjv7TNltwdLE83VyupZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxudl-006wXj-FJ; Thu, 16 Dec 2021 17:34:01 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxuZA-006uzU-HL; Thu, 16 Dec 2021 17:29:18 +0000
Received: by mail-oi1-f170.google.com with SMTP id p4so3256891oia.9;
 Thu, 16 Dec 2021 09:29:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BGDKRwosuspfYWxZApqXKSNZ+F/8DLGm7NO/ffPXmr0=;
 b=mgLnM+1l3Hha64gJsjTRQvDA09w6DAZQnlvtcCYmeaEfhD3L0agVba/CAfpIdP4kiV
 jfUhUM+hNBs8LibUKIEEZjvHcUa7XYarn32EjhsQKdu303CwAQHQKoh1lPRy8bIMguJx
 Fj+bIYkOJlInqzHVF3VGjhJVoZ0Q+c39YwOsLX6qF2sXHa3lMp3wMzeMxvWT7VyLajw1
 jPIsIeYGIk8R6hakeSPOyS0+zl1ETJFusW5HiI1p6cTNzzzxgbQS+oJFX0fLWw/rTadw
 b/VSP0NYbI+SQJu/OHjdeTHBG5316xBhDqvahQO7X+8MlmdPeg/DPaN1nyuyAmcuF95T
 sK7g==
X-Gm-Message-State: AOAM531pS2nG4zzaLPn368Ih1xfpIue/FvEBuwUDoOkP5ShD/v7EoYSL
 Xd2CVviRIRd5ujje3KBLvA==
X-Google-Smtp-Source: ABdhPJzpIdbfDFxlf+VQ8oNO/3zvGLjwEQsh7u9aVYPQ0hfaH6c6G98GZZ3yZtc9iElIOJF/los3iw==
X-Received: by 2002:a05:6808:1a02:: with SMTP id
 bk2mr4936718oib.52.1639675754325; 
 Thu, 16 Dec 2021 09:29:14 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e26sm1102831oog.46.2021.12.16.09.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 09:29:13 -0800 (PST)
Received: (nullmailer pid 430626 invoked by uid 1000);
 Thu, 16 Dec 2021 17:29:12 -0000
Date: Thu, 16 Dec 2021 11:29:12 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V2 04/10] dt-bindings: media: nxp,imx8mq-vpu: Split G1
 and G2 nodes
Message-ID: <Ybt3aHfscuKMM0ie@robh.at.kernel.org>
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216111256.2362683-5-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_092916_632335_D0EF7050 
X-CRM114-Status: GOOD (  17.74  )
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

On Thu, Dec 16, 2021 at 05:12:49AM -0600, Adam Ford wrote:
> The G1 and G2 are separate decoder blocks that are enabled by the
> vpu-blk-ctrl power-domain controller, which now has a proper driver.
> Update the bindings to support separate nodes for the G1 and G2
> decoders with vpu-blk-ctrl power-domain support.

You could expand this a bit more with Lucas' explanation and being 
explicit on the compatibility implications.

Otherwise, with that and indentation fixed:

Reviewed-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..c1e157251de7 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,33 +15,20 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +     oneOf:
> +      - const: nxp,imx8mq-vpu
> +        deprecated: true
> +      - const: nxp,imx8mq-vpu-g1
> +      - const: nxp,imx8mq-vpu-g2
>  
>    reg:
> -    maxItems: 3
> -
> -  reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    maxItems: 1
>  
>    interrupts:
> -    maxItems: 2
> -
> -  interrupt-names:
> -    items:
> -      - const: g1
> -      - const: g2
> +    maxItems: 1
>  
>    clocks:
> -    maxItems: 3
> -
> -  clock-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: bus
> +    maxItems: 1
>  
>    power-domains:
>      maxItems: 1
> @@ -49,31 +36,33 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - reg-names
>    - interrupts
> -  - interrupt-names
>    - clocks
> -  - clock-names
>  
>  additionalProperties: false
>  
>  examples:
>    - |
>          #include <dt-bindings/clock/imx8mq-clock.h>
> +        #include <dt-bindings/power/imx8mq-power.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +        vpu_g1: video-codec@38300000 {
> +                compatible = "nxp,imx8mq-vpu-g1";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> +                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> +        };
> +  - |
> +        #include <dt-bindings/clock/imx8mq-clock.h>
> +        #include <dt-bindings/power/imx8mq-power.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
> -        vpu: video-codec@38300000 {
> -                compatible = "nxp,imx8mq-vpu";
> -                reg = <0x38300000 0x10000>,
> -                      <0x38310000 0x10000>,
> -                      <0x38320000 0x10000>;
> -                reg-names = "g1", "g2", "ctrl";
> -                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -                interrupt-names = "g1", "g2";
> -                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> -                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> -                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> -                clock-names = "g1", "g2", "bus";
> -                power-domains = <&pgc_vpu>;
> +        vpu_g2: video-codec@38300000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38310000 0x10000>;
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
>          };
> -- 
> 2.32.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
