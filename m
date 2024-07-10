Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA89C38150
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 08:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEu6AJp3VgBEV7oNQQ1g10mPmFq3z3W2s6c/4Zuc214=; b=2p+rNp18DTVB8N
	NtIM8crgTcNQKk7WketusjFm24BO21ZJcknuD4WCHmeJxnprIiQIrn95se+HOgrp+ZKr7VY1Eww59
	OvCCGeDbnXoMCYRjNGOC8a7TdqzefjMF5hKj7FSp6tp0VJlj4e6FGWbp5/jKkbW7G1/KYVegWolst
	6/JQm7L3Mnrw/6urkm6lkt4N9RVDfC/se5m7p3Aoq7KxcOtu36xt2T9iBxafonfycDdN86gHMz0z7
	Oovd/++HS2rPaGsgDime+m+E7kIpuDBboZmCcYmRfFC8tlANuZEXb3mWZj0ZKBN2sIcgIhGLkToMU
	d6MiUzcQ6JJYPHfAB8Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRSIN-00000009pKG-0SKR;
	Wed, 10 Jul 2024 08:03:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRSI5-00000009pFt-1Cgk;
	Wed, 10 Jul 2024 08:03:06 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRSHy-0005Wq-Iy; Wed, 10 Jul 2024 10:02:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
Date: Wed, 10 Jul 2024 10:02:57 +0200
Message-ID: <1903511.1xdlsreqCQ@diego>
In-Reply-To: <2e5852b9e94b9a8d0261ce7ad79f4329.sboyd@kernel.org>
References: <20240709123121.1452394-1-heiko@sntech.de>
 <20240709123121.1452394-2-heiko@sntech.de>
 <2e5852b9e94b9a8d0261ce7ad79f4329.sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_010305_365700_BA9EDD62 
X-CRM114-Status: GOOD (  35.74  )
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

Hi Stephen,

Am Dienstag, 9. Juli 2024, 23:45:20 CEST schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2024-07-09 05:31:16)
> > In contrast to fixed clocks that are described as ungateable, boards
> > sometimes use additional clock generators for things like PCIe reference
> > clocks, that need actual supplies to get enabled and enable-gpios to be
> > toggled for them to work.
> > 
> > This adds a binding for such clock generators that are not configurable
> > themself, but need to handle supplies for them to work.
> 
> Sounds like vdd-supply is required?

yeah, I guess this could move to required

> > 
> > While in a lot of cases the type of the IC used is described in board
> > schematics, in some cases just a generic type description like
> > "100MHz, 3.3V" might also be used. The binding therefore allows both
> > cases. Specifying the type is of course preferred.
> > 
> > The clock-frequency is set in devicetree, because while some clock
> > generators have pins to decide between multipls output rates, those
> > are generally set statically on the board-layout-level.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  .../bindings/clock/clock-generator.yaml       | 62 +++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/clock-generator.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/clock-generator.yaml b/Documentation/devicetree/bindings/clock/clock-generator.yaml
> > new file mode 100644
> > index 0000000000000..f44e61e414e89
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/clock-generator.yaml
> > @@ -0,0 +1,62 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/clock-generator.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Simple clock generators
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  $nodename:
> > +    anyOf:
> > +      - description:
> > +          Preferred name is 'clock-<freq>' with <freq> being the output
> > +          frequency as defined in the 'clock-frequency' property.
> > +        pattern: "^clock-([0-9]+|[a-z0-9-]+)$"
> > +      - description: Any name allowed
> > +        deprecated: true
> 
> Drop the deprecated stuff from the fixed-clock binding?

ok

> 
> > +
> > +  compatible:
> > +    oneOf:
> > +      - const: clock-generator
> > +      - items:
> > +          - enum:
> > +              - diodes,pi6c557-03b
> 
> I see this datasheet[1]. Can that link be included somewhere? That shows
> there's a clock input pin, which means I expect a 'clocks' property.

ok, I guess we could add a clock property and make it mandatory for the
Diodes compatibles.


> Maybe instead of creating a generic binding just make a binding for
> these diodes parts? It certainly looks like a generic binding could come
> later when another vendor supports the same binding.

I was actually primarily aiming at solving the Rock 5 ITX clock generator
issue described in patch 5, where the 100 MHz clock generator is just
described as "100MHz,3.3V,3225" in the schematics, but definitly needs
the supply regulator to be enabled [1].

The Theobroma boards were addons because I felt they could also describe
the hardware better instead of lumping together 2 existing bindings.


> > +              - diodes,pi6c557-05b
> > +          - const: clock-generator
> > +
> > +  "#clock-cells":
> > +    const: 0
> > +
> > +  clock-frequency: true
> > +
> > +  clock-output-names:
> > +    maxItems: 1
> > +
> > +  enable-gpios:
> > +    description:
> > +      Contains a single GPIO specifier for the GPIO that enables and disables
> > +      the clock generator.
> > +    maxItems: 1
> > +
> > +  vdd-supply:
> > +    description: handle of the regulator that provides the supply voltage
> > +
> > +required:
> > +  - compatible
> > +  - "#clock-cells"
> > +  - clock-frequency
> 
> This is the same required properties as fixed rate clocks. I'd guess
> that at least 'enable-gpios' or 'vdd-supply' should also be required, or
> the node would simply use fixed-clock compatible.

ok, as said above, having the vdd-supply as requirement does make sense.


Heiko


[1] https://dl.radxa.com/rock5/5itx/radxa_rock_5_itx_X1100_schematic.pdf
page 35, bottom left, to the left of the big Au5426 "clock buffer".



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
