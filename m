Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59997C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 22:48:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 075AB60241
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 22:48:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 075AB60241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4s5r2r7ULjYhFN6G3yUW+2bVci2eoSthmrJXGe7RRBA=; b=Yowl8PbPxmAR4D7K1UwE22EYI
	e8rASNThxgj/e2dIM8P6xAVZaAqMSPAX1sSJDECO4CS9ei/ZZNztsiwrvhege9xkQprE103UekXUc
	i3WHrqfaTd//M3NRvIM31LImMdbIGV2s81Fd1lRxMhJCB/0ALwh8Ewhs1/4q6LO/HzLICgM6caZ7z
	UMeeUhfJiRPwTBE1GupZ2eDhg/G4U1HBYus8TXR6qQDtKuL9fcyq+TQT6CooPExsedy/dc+0HobNq
	DugloHfdn7X8u3gbuiOP3Z/U1+LrBSWMtWxNnY1Ht/LHFo0bFrcPG4DTI1+Ffn9CqKzBGQ4HFk/md
	PiC7e8q3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCVcn-000500-3i; Wed, 17 Feb 2021 22:48:49 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCVcl-0004z1-4i; Wed, 17 Feb 2021 22:48:48 +0000
Received: by mail-oi1-f176.google.com with SMTP id r75so16754308oie.11;
 Wed, 17 Feb 2021 14:48:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iwFEJ3kjWH7byU1Bj+qTU+zAIBp4rtQWtPBYut/wBEM=;
 b=kYqwsKrzCFE3GGKoFbGM1s9yhh96k0JFwcnnOTrIyWKw9/ZUncvRJoNRqDKym6gtXH
 GKsIgEs9VnbpHur4Z8b0Oyy26pHzLQi9HG5tbFUtQcl04wRd3VAaKJnWAh3tx9snVPQy
 nDFPp2whVnvGQcI4XC/NVwt4PKbW5mAQm7W6gkBZMtmOQarLuzuOd/z46pwyHCCZuK/Q
 LnI10kPkEBKLdusnplRSH5UCS9ipaur9686jwL91hjvXKF2qOk9tSmaFUUkMrp2zatwx
 ej6mOlcYLwkJc6FZ/Q5eHhP0nwSG3eIzKiqmpQc5gGbMzZd2LAl9pPa9PUkt/T699wfP
 TTyQ==
X-Gm-Message-State: AOAM532W/vtWskQ1iZiCRNBghRVPLr3R7yP61tDQXUNIQAhECl4jp9e3
 IqpKnbeWF4IPT63ZmoDImw==
X-Google-Smtp-Source: ABdhPJyf/6sqkBW6AkNJ46Z+XYd5SPLiqxsxxEvUsHVT9KbgLtYtbIRNM/9Zyv8yIyOIeh47JrRsXA==
X-Received: by 2002:a05:6808:8da:: with SMTP id
 k26mr704298oij.165.1613602122708; 
 Wed, 17 Feb 2021 14:48:42 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 20sm166385oiz.14.2021.02.17.14.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 14:48:41 -0800 (PST)
Received: (nullmailer pid 2937635 invoked by uid 1000);
 Wed, 17 Feb 2021 22:48:39 -0000
Date: Wed, 17 Feb 2021 16:48:39 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 17/18] dt-bindings: media: nxp,imx8mq-vpu: Update
 bindings
Message-ID: <20210217224839.GA2888647@robh.at.kernel.org>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-18-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217080306.157876-18-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_174847_228708_B76D7749 
X-CRM114-Status: GOOD (  17.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, kernel@pengutronix.de,
 s.hauer@pengutronix.de, mripard@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 17, 2021 at 09:03:05AM +0100, Benjamin Gaignard wrote:
> The introduction on HEVC decoder lead to update the bindings
> to support it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 54 ++++++++++++-------
>  1 file changed, 36 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..468435c70eef 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,24 +15,25 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    enum:
> +      - nxp,imx8mq-vpu
> +      - nxp,imx8mq-vpu-g2
>  
>    reg:
> -    maxItems: 3
> +    maxItems: 1
>  
>    reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    enum:
> +      - g1
> +      - g2

This isn't a compatible change. You need to state why that's okay if it 
is okay.

>  
>    interrupts:
> -    maxItems: 2
> +    maxItems: 1
>  
>    interrupt-names:
> -    items:
> -      - const: g1
> -      - const: g2
> +    enum:
> +      - g1
> +      - g2
>  
>    clocks:
>      maxItems: 3
> @@ -46,6 +47,9 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> +  resets:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> @@ -54,6 +58,7 @@ required:
>    - interrupt-names
>    - clocks
>    - clock-names
> +  - resets
>  
>  additionalProperties: false
>  
> @@ -61,19 +66,32 @@ examples:
>    - |
>          #include <dt-bindings/clock/imx8mq-clock.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        #include <dt-bindings/reset/imx8mq-vpu-reset.h>
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
> +                reg = <0x38300000 0x10000>;
> +                reg-names = "g1";
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g1";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +                clock-names = "g1", "g2", "bus";
> +                power-domains = <&pgc_vpu>;
> +                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G1>;
> +        };
> +
> +        vpu_g2: video-codec@38310000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38310000 0x10000>;
> +                reg-names = "g2";
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g2";
>                  clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
>                  clock-names = "g1", "g2", "bus";
>                  power-domains = <&pgc_vpu>;
> +                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G2>;
>          };
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
