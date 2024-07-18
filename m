Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79521C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 09:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfkIWV8B51awOCzJqSppt6fttirhAuVedHka6Y7EG/g=; b=BUetF3kp0DY6NP
	fh9jb2l0P3ysmMl/OHwgjWEv7D8aHqFup6U1njKomrc2wQflro1YsyAAXAFZo5cMGCH0mW6VqjGQw
	s3oqU/Ev7G3kiGKtj38koUJZtjVQBJ7LFmt5DhNgc9r8e/3ih/Bjr91D7aMNxBPEWvP/Izf/vFk+W
	dIdIwvqx/BF8lmPdauHyP6hcbnHm/S07Dg+/vseXLRta9CSOiodK7dBl8PjN+ClkASGCtDjHo6sZm
	3xk8fJpdUEjTtFxYd41vvJMUL6dpR9JHMe5lHsRY+LLJIncnAOykpSwNy+XHbVtpgzKp5LKj1FPP/
	J5tsuONQWMUiuYBusQ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUNOp-0000000GYNt-0F35;
	Thu, 18 Jul 2024 09:26:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUNOS-0000000GYIH-2e5p;
	Thu, 18 Jul 2024 09:25:46 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sUNOD-0003Jt-IN; Thu, 18 Jul 2024 11:25:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Date: Thu, 18 Jul 2024 11:25:28 +0200
Message-ID: <3178118.zE8UqtGg2D@diego>
In-Reply-To: <20240716-deceiving-saucy-851fb2303c1f@spud>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
 <20240716-deceiving-saucy-851fb2303c1f@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_022544_705678_850F3654 
X-CRM114-Status: GOOD (  33.64  )
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

Hi Conor,

Am Dienstag, 16. Juli 2024, 18:15:08 CEST schrieb Conor Dooley:
> On Mon, Jul 15, 2024 at 01:02:49PM +0200, Heiko Stuebner wrote:
> > In contrast to fixed clocks that are described as ungateable, boards
> > sometimes use additional oscillators for things like PCIe reference
> > clocks, that need actual supplies to get enabled and enable-gpios to be
> > toggled for them to work.
> > 
> > This adds a binding for such oscillators that are not configurable
> > themself, but need to handle supplies for them to work.
> > 
> > In schematics they often can be seen as
> > 
> >          ----------------
> > Enable - | 100MHz,3.3V, | - VDD
> >          |    3225      |
> >    GND - |              | - OUT
> >          ----------------
> > 
> > or similar. The enable pin might be separate but can also just be tied
> > to the vdd supply, hence it is optional in the binding.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > new file mode 100644
> > index 0000000000000..8bff6b0fd582e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Voltage controlled oscillator
> 
> Voltage controlled oscillator? Really? That sounds far too similar to a
> VCO to me, and the input voltage here (according to the description at
> least) does not affect the frequency of oscillation.

That naming was suggested by Stephen in v1 [0] .

Of course the schematics for the board I have only describe it as
"100MHz,3.3V,3225" , thumbing through some mouser parts matching that
only mentions "supply voltage" in their datasheets but not a dependency
between rate and voltage.

[0] https://lore.kernel.org/linux-arm-kernel/b3c450a94bcb4ad0bc5b3c7ee8712cb8.sboyd@kernel.org/

> Why the dedicated binding, rather than adding a supply and enable-gpio
> to the existing "fixed-clock" binding? I suspect that a large portion of
> "fixed-clock"s actually require a supply that is (effectively)
> always-on.

I guess there are three aspects:
- I do remember discussions in the past about not extending generic
  bindings with device-specific stuff. I think generic power-sequences
  were the topic back then, though that might have changed over time?
- There are places that describe "fixed-clock" as
  "basic fixed-rate clock that cannot gate" [1]
- Stephen also suggested a separate binding [2]

With the fixed-clock being sort of the root for everything else on most
systems, I opted to leave it alone. I guess if the consenus really is that
this should go there, I can move it, but discussion in v1 

Interestingly the fixed clock had a gpios property 10 years ago [3] :-) .

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/clk-fixed-rate.c#n18
[2] https://lore.kernel.org/linux-arm-kernel/68f6dc44a8202fd83792e58aea137632.sboyd@kernel.org/
[3] https://lore.kernel.org/linux-kernel//20140515064420.9521.47383@quantum/T/#t


Heiko


> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> > +    const: voltage-oscillator
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
> > +      the oscillator.
> > +    maxItems: 1
> > +
> > +  vdd-supply:
> > +    description: handle of the regulator that provides the supply voltage
> > +
> > +required:
> > +  - compatible
> > +  - "#clock-cells"
> > +  - clock-frequency
> > +  - vdd-supply
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    voltage-oscillator {
> > +      compatible = "voltage-oscillator";
> > +      #clock-cells = <0>;
> > +      clock-frequency = <1000000000>;
> > +      vdd-supply = <&reg_vdd>;
> > +    };
> > +...
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
