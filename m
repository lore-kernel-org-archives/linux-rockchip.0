Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BE9CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 15:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diS+FVd2aktCAjRBi2VG/N7XZ72lZ8s+lkcXb9m3+DU=; b=N0C1Au0JMyC88L
	QrI2DJjjb75kFmrcXtAh5CLNTOOPc4QESMxR3r0IxwmYzvbMf31mxCvh84sCL6fbDQqi4wYVbj83D
	LXEuXC2vdkczY1nqBEY7o6WAPyeOCZney2Lm+VhVdTIAIWxnzkiBUmufBIZpsNeeeW52cShNqcmur
	/PTeYVJWMTi8Eh3BD6Iblv5Kb/2AyfgfxzpC4nwtEXUrT6TvaSmhZmeyMYTTAawft08D7fCoN7Ew2
	SVfTbWbPsISN9l3QAc7NWvW5eO6NLrpJAKcXSPDMOMIZjzbZEajbYhz/obc+J6FNagJfLxm+1lnIR
	/ZGcA7gl8+J0L5eJ3uMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0P9h-00GraP-8J; Sun, 12 Jun 2022 15:05:33 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0P9d-00GrZS-FJ; Sun, 12 Jun 2022 15:05:31 +0000
Received: by mail-ej1-x630.google.com with SMTP id n10so6637062ejk.5;
        Sun, 12 Jun 2022 08:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=htFjsSXu7ZGxTjaP5i3din+9CWxv94Bctr84QoNiliY=;
        b=APsLw00dy2F55yoY3iXIMcnELsihcXP/p6SNiyRSf5oZEwPYW3D+p0hDD/fhfBGpLe
         213n/Vi5KHjD4mMgEBXf2SHm9ZkNEaPVqBySbH1z3UhGpTHYFKFPNey4vj/pQ1X6HLEG
         CwJlDpgpTCvyl7Jilb5g9EBt7kK4A5jHct8fJEqfqx1dGEYyx4yqxwH5Hci+eZ5+6a1/
         mwPrbmd2GM57MA2FANPMcQZRrQ+t0+ZzePfDQ0ZscrO4pnZjGmDSRDbNGdr3E+hjTEc+
         vjADJaLYSq1uDbnUJWHDibDyKWaovFiZ9vlJy+aEvP/Vs+lyavPcbmcBUjdLyOjwTAEb
         xhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=htFjsSXu7ZGxTjaP5i3din+9CWxv94Bctr84QoNiliY=;
        b=nF3a8KReHCdXR1i0Hph3rRigUxxfbfFZ7A8FMUW9Ajb7c7SjcXgqD/lYLE85JOc3JA
         RZyEuTDPNIOKQQR1bUgx4FBkdIX0VTlv8Kh0YRJ1jHd+THE1ek0m2uK+bRlWbVDzBEae
         Zjwy+ypbbQdYQST/mNatx3fKy2v0u28uJGrhgEXXIZQ27yOESMR6noSO+1Ra/21NPRcl
         5lJgfLtSEU3JnG85eGFiBYb17/DSzCAVsolI2u6o7iiIWje7oRPyZFFoY4bIi9JGDvtK
         rhe1APs43Fxzv+iqbmnHqq6eAA9m3oQycvflPZJUvQhruXETPjq37Xshx60ihV+0Yc49
         ltMQ==
X-Gm-Message-State: AOAM533CHOY1ERhGhPEoUUEP73MG04tfb1xJx9sVKLJprekehZ9yfFkm
	YPkP/RH4sC55lnLTCru7vFQ=
X-Google-Smtp-Source: ABdhPJyi9sxjMamNlGeaPrfv21rrYPCrriGAL73CCnuOlTCxSIfRQCJRmSiN3kIcksZEs7Yydc4tvg==
X-Received: by 2002:a17:906:8301:b0:6e4:896d:59b1 with SMTP id j1-20020a170906830100b006e4896d59b1mr47420520ejx.396.1655046326879;
        Sun, 12 Jun 2022 08:05:26 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id gv17-20020a170906f11100b006febc1e9fc8sm2553325ejb.47.2022.06.12.08.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 08:05:26 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] media: dt-binding: media: Add rockchip-vepu binding
Date: Sun, 12 Jun 2022 17:05:25 +0200
Message-ID: <1885873.U9Vi27CkfU@archbook>
In-Reply-To: <440a7dc6-7ec4-d7a9-0c56-3b3dc15b79d0@linaro.org>
References: <20220514133604.174905-1-frattaroli.nicolas@gmail.com> <20220514133604.174905-2-frattaroli.nicolas@gmail.com> <440a7dc6-7ec4-d7a9-0c56-3b3dc15b79d0@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_080529_582952_1522CE02 
X-CRM114-Status: GOOD (  29.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hello

On Samstag, 14. Mai 2022 22:41:29 CEST Krzysztof Kozlowski wrote:
> On 14/05/2022 15:36, Nicolas Frattaroli wrote:
> > The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> > encoding. This patch adds a new binding to describe it, as it
> > does not really fit the rockchip-vpu binding, since there is no
> > decoder.
> > 
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> >  .../bindings/media/rockchip-vepu.yaml         | 64 +++++++++++++++++++
> >  MAINTAINERS                                   |  1 +
> >  2 files changed, 65 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vepu.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip-vepu.yaml
> > new file mode 100644
> > index 000000000000..b7ba5bf3517a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vepu.yaml
> 
> Filename: vendor,device (not hyphen)
> It would be actually better if it followed the first compatible, so
> "rockchip,rk3568-vepu.yaml"

Thanks, will do.

> 
> > @@ -0,0 +1,64 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/media/rockchip-vepu.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Hantro G1 VPU encoders implemented on Rockchip SoCs
> > +
> > +maintainers:
> > +  - Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > +
> > +description:
> > +  Hantro G1 video encode-only accelerators present on Rockchip SoCs.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3568-vepu
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: hclk
> 
> Since these are new bindings, it would be good to follow DT convention
> and not add common "clk" prefix to clocks. Just like DMA is "tx" not
> "txdma". However clock names "a" and "h" are also not good and maybe
> this is already shared implementation?

This is indeed a shared implementation. Theoretically I could change
the driver for this one case but that seems pointless, especially
since "aclk" and "hclk" are the usual clk names for AXI and AHB on
ARM as far as I understand. I think I've been told before that those
two clocks should always be called aclk and hclk.

> 
> > + 
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  iommus:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +        #include <dt-bindings/clock/rk3568-cru.h>
> 
> Indentation starts at "|" (so four spaces)
> 
> > +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +        #include <dt-bindings/power/rk3568-power.h>
> > +
> > +        vepu: video-codec@fdee0000 {
> 
> four spaces.
> 
> > +                compatible = "rockchip,rk3568-vepu";
> > +                reg = <0x0 0xfdee0000 0x0 0x800>;
> > +                interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > +                clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> > +                clock-names = "aclk", "hclk";
> > +                iommus = <&vepu_mmu>;
> > +                power-domains = <&power RK3568_PD_RGA>;
> > +        };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 9ce78f2275dc..f901a42e5d0f 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -8637,6 +8637,7 @@ L:	linux-media@vger.kernel.org
> >  L:	linux-rockchip@lists.infradead.org
> >  S:	Maintained
> >  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > +F:	Documentation/devicetree/bindings/media/rockchip-vepu.yaml
> >  F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> >  F:	drivers/staging/media/hantro/
> >  
> 
> 
> Best regards,
> Krzysztof
> 

Thank you for your feedback,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
