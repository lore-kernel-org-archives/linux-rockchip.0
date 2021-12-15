Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A32EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 16:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLm9xjrDT0Eth4/zDuCYXlPEOST7IbDTYpZ9EEH82ww=; b=eNt5cGt1yCrCfG
	RtvPDhJWy/rJt78r/0s7d3sd7oX/oDdktVr2rdtyGZddUZ0BOv3EFXipmKR3dJY/s7c+oAUSvTElL
	QJ0+t+rd/7tO95bwTvdRIhkpPtGN2pwX+ozQslFD2dVy97uHeTpXQILtDWtRw6FlyzYtB7AiA6IvQ
	WDnq2Fx9A8L2Up+IMqqr/TbPjdt8d7RfQqmAS6n/2qn7nQTV37m7ZYlNGzL5EZoKgV5BE1EcoPbOg
	a6yrMeNoyUa7J2fS83HJxGrCRjUmSuC0dUzUorKiPqssjusQJFUZQGJgAhTtmXW0qQ9dvhaX16GXH
	vbqTAgj//KxxND3FBfJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxXd0-001unl-NW; Wed, 15 Dec 2021 16:59:42 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxXI4-001mBW-8v; Wed, 15 Dec 2021 16:38:06 +0000
Received: by mail-oi1-f175.google.com with SMTP id r26so32410440oiw.5;
 Wed, 15 Dec 2021 08:38:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pyzDEpSOQgdCiOSbwrSV+3W9QMVtWPI913uVY3KbW+g=;
 b=MrKC0DZrDfAyhViPsMGZIk933NOj+ckvvS+JB3HvGFlYLvDBxTWURvfIo83ON4sy5v
 PEBFKIoZM7OyX2ylAzUmGA7vbBfI350pORxGN6RNBKaJq3swp2fCsQEB6JQYTQbIeC2g
 W5lXeCK87tHaGRJKL80BXgNqjxm/dSaLjZK7OdmhzfXXFGxfaXh4zsqxnL/K80uJMzpb
 wcSl6OtdQLhPYPgulcY1sr8WI67wcOT4sw99VnXIgYyWemhFgMCGzpS2WM4+Bsr8BdxO
 7oBOH2Mit4P5h5RQgSgJnRbLB1bxBpnHcETXg+EYc9MKBU6+U2VOMhjIinVgPkEVjdBd
 JXCQ==
X-Gm-Message-State: AOAM532Vm3rg/tZH+Ws5bbJVxQETfXL/aLdlIzDqObG29CXzzOIjXeWt
 uZa/mfL8P1Hk29RRfb1ygw==
X-Google-Smtp-Source: ABdhPJwchxUpomWZ84XMD8NECADxpL1WphGhTrDCmu+5xiuED9HghkfnDdHWfY06xUvJVQI/VrKNBA==
X-Received: by 2002:aca:581:: with SMTP id 123mr574137oif.13.1639586282530;
 Wed, 15 Dec 2021 08:38:02 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id h1sm537374oog.26.2021.12.15.08.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 08:38:01 -0800 (PST)
Received: (nullmailer pid 1441302 invoked by uid 1000);
 Wed, 15 Dec 2021 16:38:01 -0000
Date: Wed, 15 Dec 2021 10:38:01 -0600
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
Subject: Re: [PATCH 10/18] dt-bindings: display: rockchip: Add binding for VOP2
Message-ID: <YboZ6aXQXZ/WReB1@robh.at.kernel.org>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-11-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208151230.3695378-11-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_083804_394133_C0A9B792 
X-CRM114-Status: GOOD (  22.54  )
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

On Wed, Dec 08, 2021 at 04:12:22PM +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 118 ++++++++++++++++++
>  1 file changed, 118 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> new file mode 100644
> index 0000000000000..6533c4ae4ec3a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -0,0 +1,118 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings.

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
> +      - const: aclk_vop
> +      - const: hclk_vop
> +      - const: dclk_vp0
> +      - const: dclk_vp1
> +      - const: dclk_vp2
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port

Please describe what the port represents.

> +
> +  assigned-clocks:
> +    maxItems: 2
> +
> +  assigned-clock-rates:
> +    maxItems: 2
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
> +  - port
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
> +                vop_out: port {
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +                    vp0_out_dsi0: endpoint@0 {
> +                        reg = <0>;
> +                        remote-endpoint = <&dsi0_in_vp0>;
> +                    };
> +                    vp0_out_hdmi: endpoint@1 {
> +                        reg = <1>;
> +                        remote-endpoint = <&hdmi0_in_vp0>;
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
