Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E65AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 15:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16D791yMxiui5Ck/u6uZm2FL11sfreWXxz3rQZ7qQH4=; b=nc0sz7Z6B321B1
	cn95gxRmvUNBz9cxlzWmsSI7Lz+Bn44jMWKTAsmEMx8CX+5FFOEP6FW5+tN7mqde8PxsBeM9Z+2rF
	0JwdNaa4YeJrMKrMRnTHIsFwSgSL6BAQQ9RYyMEz3K+9235DBsl1ED9JhYXNfs+Nvf7ox4slK0s48
	ovTtHLThm+0dTfZZGD2kU4ILfCvrmVgIwGBbW3PA1dUKX7KVcjnZvK/hSqR6DL9vmvME/11HkTU/9
	VC8ZnVPUY0Z2Xsjr0hFj2eQIHWtRQz9uOyoXK371UDtVMIoG7zu14NXnDFrY46zmCjhjH8RcQWckX
	ot9/nu1bz+AZJrajUbFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mucNb-009D7x-6M; Tue, 07 Dec 2021 15:27:43 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mucAR-0098hP-3L; Tue, 07 Dec 2021 15:14:08 +0000
Received: by mail-oi1-f181.google.com with SMTP id t23so28325093oiw.3;
 Tue, 07 Dec 2021 07:14:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gHLh/twxwqdkYak+CGLf6Up0AGsQd0DPoFCh/1guPoU=;
 b=qJYlAmUq8vyXyKax0tGG17BhutO7HLZSXHK6wGYJ6FABIlgRd8UFbBV02icM86Zicz
 9QnfOZ8ynhADft+FcJHod7TsoTgJfKyuoKiY9jQPSjIAAlutxzFRdmfIOy6SAtatzRAG
 F5oHeu+zy7T6jcoiF0CBMUCWJdiwzkcYRSGeYxjVA6xSoP1S8UstAqG3lEE2vRLU7hex
 I9xq6Vdqa68HJ+k2iG9bNqniRVHh5BiW471eUVsY+PfmaIzVGA0kQEWm+AmRroPxcEBX
 Xzs4/hfojbQuOxwfLUnWkK2QjUBgdhxV/EkyyLRB7nZ4MzWFHd4lU7jdEoOmHtWD+XN/
 t2kw==
X-Gm-Message-State: AOAM53389Y9qMnQyn7VQkoWULVJmzA9z9s3LyraVNzFbrf8uDVwZWOm8
 33FQkzykqCneFYOw4y6xAA==
X-Google-Smtp-Source: ABdhPJxIOWxApR2yPnoWn9mY/qhX8SpsrfoNf6wadNvZU6y0quA1Gbdi2DDCY4nBeHPW8uEW3WuDhA==
X-Received: by 2002:a54:438d:: with SMTP id u13mr5649541oiv.156.1638890045676; 
 Tue, 07 Dec 2021 07:14:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 184sm3297341oih.58.2021.12.07.07.14.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 07:14:04 -0800 (PST)
Received: (nullmailer pid 59673 invoked by uid 1000);
 Tue, 07 Dec 2021 15:14:03 -0000
Date: Tue, 7 Dec 2021 09:14:03 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, cphealy@gmail.com,
 benjamin.gaignard@collabora.com, hverkuil@xs4all.nl,
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
Subject: Re: [RFC V2 3/6] dt-bindings: media: nxp,imx8mq-vpu: Update the
 bindings for G2 support
Message-ID: <Ya96O6VXuIDdcM8p@robh.at.kernel.org>
References: <20211207015446.1250854-1-aford173@gmail.com>
 <20211207015446.1250854-4-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207015446.1250854-4-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_071407_216144_D5C4A44E 
X-CRM114-Status: GOOD (  22.36  )
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

On Mon, Dec 06, 2021 at 07:54:42PM -0600, Adam Ford wrote:
> From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> 
> Introducing the G2 hevc video decoder requires modifications of the bindings to allow
> one node per VPU.

Why? It looks like the G2 part was already described. If you are 
changing this because you want 2 drivers for G1 and G2, then NAK. DT 
nodes and drivers don't have to be 1:1. This change is breaking 
compatibility.

> 
> VPUs share one hardware control block which is provided as a phandle on
> a syscon.

That's not really ideal. Is this really a separate block?

> Each node has now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> 
> To be compatible with older DT the driver is still capable to use the 'ctrl'
> reg-name even if it is deprecated now.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..eaeba4ce262a 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,37 +15,36 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
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
> +    maxItems: 1
>  
>    interrupt-names:
> -    items:
> +    oneOf:
>        - const: g1
>        - const: g2
>  
>    clocks:
> -    maxItems: 3
> +    maxItems: 1
>  
>    clock-names:
> -    items:
> +    oneOf:
>        - const: g1
>        - const: g2
> -      - const: bus
>  
>    power-domains:
>      maxItems: 1
>  
> +  nxp,imx8m-vpu-ctrl:
> +    description: Specifies a phandle to syscon VPU hardware control block
> +    $ref: "/schemas/types.yaml#/definitions/phandle"

This is optional?

> +
>  required:
>    - compatible
>    - reg
> @@ -60,20 +59,27 @@ additionalProperties: false
>  examples:
>    - |
>          #include <dt-bindings/clock/imx8mq-clock.h>
> +        #include <dt-bindings/power/imx8mq-power.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
> -        vpu: video-codec@38300000 {
> +        vpu_g1: video-codec@38300000 {
>                  compatible = "nxp,imx8mq-vpu";
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
> +                reg = <0x38300000 0x10000>;
> +                reg-names "g1";
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g1";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +                clock-names = "g1";
> +                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> +        };
> +
> +        vpu_g2: video-codec@38310000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38300000 0x10000>;
> +                reg-names "g2";
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g2";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> +                clock-names = "g2";
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
