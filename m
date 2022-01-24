Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57DACC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 19:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSOqFMR8VZ18klKb7Lzi8bVqZGaiVyu48tBOKLQPl/Q=; b=GzDInUGhJChA0K
	ZnZQapucs98YFJsfKpjo7N6vBKezF7iClbNaXDsqKWp3+2ZmoVGqQHZPnkR/In662/O2z2WGiN8wz
	SJg6g5V2ePtwndmG3TVNCs+tnWgUt+tjsikizq0QLyyOOE/dkmLQCfPljs+cHYD8dMdngw/s9lFhr
	6A2h5By4mBPQ4wUGlYATdzGOiDM8lvcXRkkMQW6Ww3pt41JeBbBnXhzfsl0x7U9874aFLRir+SuMI
	S6R54gSugCv27duB/dH7olSXV8D2DWLpmRBos442IjdCSFtqfhUqFE2BWzCc5ph78SpCECW50UPz2
	FtrwItR/wOzfDG22g0sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC4if-004mDk-Kn; Mon, 24 Jan 2022 19:09:37 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC3nx-004P46-Hb
 for linux-rockchip@lists.infradead.org; Mon, 24 Jan 2022 18:11:03 +0000
Received: by mail-oi1-x230.google.com with SMTP id q186so26770905oih.8
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jan 2022 10:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bLjR18B4+O+BIq4G++lcJm85fWQaGrH2dHhZhdZDiNg=;
 b=4Pwvu6wbVKNMT1IIQfGgwf/cWB5DOhgoxtmYK9b6CJBDR/cUI8aLbOZCfdjQK3m8Oy
 fYczIA0hgH9T+qPlgcE6d5o896j4zVri+HqCwa1ld7/XoTdCR1F2qd4oNDAFDyCAyjfc
 1e91X48DOh4n4D+LcPA17yp8DIYCconJ51xP7BnflNfJ/vSnPtRWU0GSjkiDJU0kV4Kc
 XLMa7fgbCO8Vyns+V1qjIAnOKSZGIDxf96+kQ+kHGz3tIBpgAFuflEDcENF7GRTgSxR5
 WzSvGjETaJE1YsmuJ2b0vU2pJw1+fsx0n5zBJrd+KI4zrRBgmZDKsqTWwd0R8IyjQGp3
 oGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bLjR18B4+O+BIq4G++lcJm85fWQaGrH2dHhZhdZDiNg=;
 b=1wPNOTBMyx26Chi1kePdnMhS4ZKHUuSKOpQHJgn5qMKIv/4HKmsjwJvBRAYYN9BMZA
 GEL1Fj4LhtQLtTF7UYBc7K4d4nm45bAqBzJhiUZZpoaAHus7D2kcbAlmR7vjPzEgsxoX
 2B/RaFXUJA9w+MQyz34pmQ4CBNRbrDp3/JrTCV7OVABL22J8HWbdVaggdSTBOWFOZtH2
 Xem+aKXtuivEUbZ60rECqHVo3bkd7B5/hOIj5BaI3i4jIvO95/AL/YvsjOkHCW1H34NS
 x3lH/rvFHe5CnaHABZ5+fx9Kq8aBxzeh62Qh0aCCTFTXjFOZXur4cps14en2efa59C7f
 Gz9Q==
X-Gm-Message-State: AOAM532fvrO/huw7pPZmbIWUtOo1qWIpOFxg9Qy0jaFVxgh5TiKmiWIT
 l0Q1HkAbgL6dev4pSv2qK7b6xg==
X-Google-Smtp-Source: ABdhPJxJ2boFuR0dh+CNPK3ZdaELWLmFBxuDXsa8zlM+dj8aIG0igVhT92WI5bJwXPs1aRkb87N7PQ==
X-Received: by 2002:a05:6808:1644:: with SMTP id
 az4mr2599697oib.18.1643047860800; 
 Mon, 24 Jan 2022 10:11:00 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
 by smtp.gmail.com with ESMTPSA id b7sm4602674ooq.30.2022.01.24.10.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 10:10:59 -0800 (PST)
Date: Mon, 24 Jan 2022 15:10:53 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shawnguo@kernel.org, aford@beaconembedded.com,
 Rob Herring <robh@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V3 04/10] dt-bindings: media: nxp, imx8mq-vpu: Split G1
 and G2 nodes
Message-ID: <Ye7rrQHtu1rnbdHm@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-5-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_101101_657561_406A52CC 
X-CRM114-Status: GOOD (  17.34  )
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

On Sun, Jan 23, 2022 at 08:31:18PM -0600, Adam Ford wrote:
> The G1 and G2 are independent and separate decoder blocks
> that are enabled by the vpu-blk-ctrl power-domain controller,
> which now has a proper driver.
> 
> Because these blocks only share the power-domain, and can be
> independently fused out, update the bindings to support separate
> nodes for the G1 and G2 decoders with vpu-blk-ctrl power-domain
> support.
> 
> The new DT + old kernel isn't a supported configuration.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..9c28d562112b 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,33 +15,20 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
