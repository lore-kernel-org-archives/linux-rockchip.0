Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A030C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 21:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmsNLmxHuhtsEoFc7md8EX8sxKpnUyuTeq117j5vNLA=; b=VNCrsC3AB63Z6D
	mrGuCAVTsEFstOrf9Dus/jRmx11mu7QtqwMQXsN+Vp6PdjmJ3v//loF+h00qD6nzwxB8sWbf/mewr
	LukAcKcFnDo1wEQsuv1vudm1sjgMWii6Iue/ZN63LqcyeogqhXMYfalLgZ7ZeKraP5LFcivC1HKSi
	/x6b6hindqipiPz3SCyJvMsgY+unViyldtVeGLrWxp3kiGXNjg4PPPqS/4kLVFhwIYnieL7atFFq+
	blhcKtRG3s3YIppUJ+5CiiIn2YFNu8jHxNLjDmQJ8QIuAvsbmIGseb4jEQArs2qC6+mGsefrXQrI0
	YXrabmW3yQEk8JWlaTMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxxyk-007bT2-ON; Thu, 16 Dec 2021 21:07:54 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxxyh-007bPp-NO; Thu, 16 Dec 2021 21:07:53 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 x43-20020a056830246b00b00570d09d34ebso452419otr.2; 
 Thu, 16 Dec 2021 13:07:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cx2O43LmNvC8GyZN+btCibCu9iyCGJB6KtMGjIeaSF8=;
 b=hiQ/ngR5usieGp45rx3/uo3pkFMiTPRfGNqssOtDdp4yAD3DtqGQ27tFUOSx56GwtE
 k4P8xqr+3pv1wMLqXRtFFFSMD/OkqZNHt/e5MYkqtlPqcLpOTH+L9fWKg5btJUOEjL4b
 tGT0Gy2sZsjtrPdAsPJ/1/8jbRTVRhdUneHkSvnFXYDW09akkW0VdODVsG6mPO4uV242
 mADWNI0i8dlT8wp6WytdD8OVU4wPMv64Qk6Ebq9Bq9FxFmJgkYqNe5TvLTsLHaXK6Yr2
 HlTOWdObcPYHzBSIZJXHkllsbv5O0Y88EPmC/s915CRMIw1dunWiLxVSdqcAXr3VshsL
 Sg+g==
X-Gm-Message-State: AOAM531XJwq++X1DLMaxMTjpcRXycFj5IZWhzVntCMWRdrApd7/iwHcM
 DD/UbpzMI5gEvyjnMSGRCw==
X-Google-Smtp-Source: ABdhPJwpr9IO7zj4qWR3cuBfdUVvEAAstbCB8u01288B7/rYhH2qI+Lua/zGG9hBO0hoFbVeIQE+3w==
X-Received: by 2002:a9d:1ca9:: with SMTP id l41mr14278100ota.341.1639688870339; 
 Thu, 16 Dec 2021 13:07:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 184sm1194863oih.58.2021.12.16.13.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 13:07:50 -0800 (PST)
Received: (nullmailer pid 764267 invoked by uid 1000);
 Thu, 16 Dec 2021 21:07:49 -0000
Date: Thu, 16 Dec 2021 15:07:49 -0600
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
Subject: Re: [PATCH V2 08/10] dt-bindings: media: nxp, imx8mq-vpu: Add support
 for G1 and G2 on imx8mm
Message-ID: <YbuqpayfYVPp1dTe@robh.at.kernel.org>
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-9-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216111256.2362683-9-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_130751_795285_C46B8A1C 
X-CRM114-Status: GOOD (  18.09  )
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

On Thu, Dec 16, 2021 at 05:12:53AM -0600, Adam Ford wrote:
> The i.MX8M mini appears to have a similar G1 and G2 decoder but the
> post-procesing isn't present, so different compatible flags are requred.

post-processing

> Since all the other parameters are the same with imx8mq, just add
> the new compatible flags to nxp,imx8mq-vpu.yaml.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index c1e157251de7..b1f24c48c73b 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -5,7 +5,7 @@
>  $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
>  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  
> -title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
> +title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ/i.MX8MM SoCs

Just 'i.MX8' so we don't have to change this everytime?

>  
>  maintainers:
>    - Philipp Zabel <p.zabel@pengutronix.de>
> @@ -20,6 +20,8 @@ properties:
>          deprecated: true
>        - const: nxp,imx8mq-vpu-g1
>        - const: nxp,imx8mq-vpu-g2
> +      - const: nxp,imx8mm-vpu-g1
> +      - const: nxp,imx8mm-vpu-g2

Not compatible with the imx8mq variants?

>  
>    reg:
>      maxItems: 1
> @@ -66,3 +68,27 @@ examples:
>                  clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
>                  power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
>          };
> +  - |
> +        #include <dt-bindings/clock/imx8mm-clock.h>
> +        #include <dt-bindings/power/imx8mm-power.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +        vpu_g1: video-codec@38300000 {
> +                compatible = "nxp,imx8mm-vpu-g1";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
> +                power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
> +        };
> +  - |
> +        #include <dt-bindings/clock/imx8mm-clock.h>
> +        #include <dt-bindings/power/imx8mm-power.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +        vpu_g2: video-codec@38300000 {
> +                compatible = "nxp,imx8mm-vpu-g2";
> +                reg = <0x38310000 0x10000>;
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
> +                power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
> +        };

No point in more examples just for a different compatible.

> -- 
> 2.32.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
