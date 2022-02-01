Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE3AFC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Feb 2022 17:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwXqQBC6BoyK571UOHmojRYiuU2woDWLvIwpXwU6ePg=; b=BPHd52wfW9wZX3
	eWHZ3UeFX1x+sQSB4Mx/hgU7fDRPibKFYqir3MILHdx4YU5OByao631nFgJC0Wn9T3eqOU0rRKZKO
	M4T1x2lzGVxC1jNO6SFpmpKm+zqInkuyYYa9gEdcJS148w/iyLR/FLCDzBjzyrmqKFyBUkVbZ7q8L
	ybCWLvd1F3R5zF52grDlneeejIfnGl/YAUDVluk/J0xuoBzS2EUcg0mcOsCk3/Ivnpf/aOu/g0DFX
	g5KEaHOzgFQIFSKHR7dOazKbnKNKtUQerwmIrz/aA5ToAT01JJAiBt7A9rS38OgTIHMxCanL7cH9X
	LKreH2Z/xgOLOwtO5QPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEwsm-00DA2N-Vd; Tue, 01 Feb 2022 17:23:57 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEwrW-00D9Uw-9U; Tue, 01 Feb 2022 17:22:40 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 j38-20020a9d1926000000b0059fa6de6c71so16871278ota.10; 
 Tue, 01 Feb 2022 09:22:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZXG/HpK5iimHhno4a4gmqcNT8xzbRL3eWb4JTlbIiWA=;
 b=CQUc6FgeUbFUA6Gt0hjkDVyftMtG+KAaBPlF/k6vAuZwWqztFo66Q0kQnljQ222VMK
 qYimF+DmHxD42Mc7loV3J0qi/z/zfasFIALvn47JHU4C8AxXlcXDbJcRZzqhShiQKvWa
 7ObbfjtGa98+Lss7NIxaQUl4xROAEDWcHIM0SxQgECiZDo9OJoz4kegb+8pNDrRplRM8
 zdCNh+Vtsljs8B78uj7RAwBCvfPgZz0sIZ5hgqvCFTancTq3Ro8hDCouXGFs1zhc4oGf
 aUti2pm2q3JHUmfhp52hJYXMq1vGcUcoxWxMta5rI+yQ3AHG77F8sHBr6XblXIeoFQH8
 1O1w==
X-Gm-Message-State: AOAM531JcSGCDXu0jswWPRBrteiUsVFtAUiZkho71F7/0EZg7QCkh3M2
 JwLXmG20AKFBTNHCvXjX0YceUJqe1g==
X-Google-Smtp-Source: ABdhPJyUvXkJDpPdLDNVyZW0OTXgSkoXrPNkaXMM14hMv3h2yJGcl0URslitlIeJWL8iqgqI2BIobg==
X-Received: by 2002:a05:6830:1e11:: with SMTP id
 s17mr14458124otr.347.1643736155108; 
 Tue, 01 Feb 2022 09:22:35 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s64sm13024778oos.0.2022.02.01.09.22.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Feb 2022 09:22:34 -0800 (PST)
Received: (nullmailer pid 235445 invoked by uid 1000);
 Tue, 01 Feb 2022 17:22:33 -0000
Date: Tue, 1 Feb 2022 11:22:33 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 17/27] dt-bindings: display: rockchip: Add binding for VOP2
Message-ID: <YflsWTaUexj3u9Je@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-18-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-18-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220201_092238_382854_5469D771 
X-CRM114-Status: GOOD (  24.69  )
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

On Wed, Jan 26, 2022 at 03:55:39PM +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Changes since v3:
> - drop redundant _vop suffix from clock names
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> new file mode 100644
> index 000000000000..572cfb307c20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC display controller (VOP2)
> +
> +description:
> +  VOP2 (Video Output Processor v2) is the display controller for the Rockchip
> +  series of SoCs which transfers the image data from a video memory
> +  buffer to an external LCD interface.
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3566-vop
> +      - rockchip,rk3568-vop
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description:
> +          Must contain one entry corresponding to the base address and length
> +          of the register space.
> +      - description:
> +          Can optionally contain a second entry corresponding to
> +          the CRTC gamma LUT address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The VOP interrupt is shared by several interrupt sources, such as
> +      frame start (VSYNC), line flag and other status interrupts.
> +
> +  clocks:
> +    items:
> +      - description: Clock for ddr buffer transfer.
> +      - description: Clock for the ahb bus to R/W the phy regs.
> +      - description: Pixel clock for video port 0.
> +      - description: Pixel clock for video port 1.
> +      - description: Pixel clock for video port 2.
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: dclk_vp0
> +      - const: dclk_vp1
> +      - const: dclk_vp2
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to GRF regs used for misc control
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP0
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP1
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP2
> +

> +  assigned-clocks: true
> +
> +  assigned-clock-rates: true
> +
> +  assigned-clock-parents: true

You can drop these. They are implicitly allowed with 'clocks'.

> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +        #include <dt-bindings/clock/rk3568-cru.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        #include <dt-bindings/power/rk3568-power.h>
> +        bus {
> +            #address-cells = <2>;
> +            #size-cells = <2>;
> +            vop: vop@fe040000 {
> +                compatible = "rockchip,rk3568-vop";
> +                reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +                interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&cru ACLK_VOP>,
> +                         <&cru HCLK_VOP>,
> +                         <&cru DCLK_VOP0>,
> +                         <&cru DCLK_VOP1>,
> +                         <&cru DCLK_VOP2>;
> +                clock-names = "aclk_vop",
> +                              "hclk_vop",
> +                              "dclk_vp0",
> +                              "dclk_vp1",
> +                              "dclk_vp2";
> +                power-domains = <&power RK3568_PD_VO>;
> +                iommus = <&vop_mmu>;
> +                vop_out: ports {
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +                    vp0: port@0 {
> +                        reg = <0>;
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +                    };
> +                    vp1: port@1 {
> +                        reg = <1>;
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +                    };
> +                    vp2: port@2 {
> +                        reg = <2>;
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +                    };
> +                };
> +            };
> +        };
> -- 
> 2.30.2
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
