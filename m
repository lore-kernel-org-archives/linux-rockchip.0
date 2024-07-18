Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0189C3DA63
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 13:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5csPzgsoQ2vHFluqakr4Bjb8ZHPQlMIkULU3NWzzPpo=; b=O4ov0PbqPPYkio
	J8rLWKzajHrCZlCyWeU3vQcHIjSml/v4YqhvC7Tec5V2mxM+2xLoSOL/shqwJT5YceppG75AVpo3N
	RDSMeIrFykJk4Bn3C0pNBuk2gjwspTxQE3MwfrVp4zKHiL8icT3N5Pusl7W8Mh5Gc3HnEt6bm+p+4
	SXYK42v1TGvLyhP6B/iUFd5uHqbB6ghHx59fsjy1ZgnnTdwqJrVOr+q6fiXQH2blzVgL6PNZpoT7T
	jjIIVT7VISwQ9ue98tfbPadjgo9ALH9MREtTF2knD+vwVEuQCCp8imVos7Zwrsbx1Nstky4kovbSO
	XKp1Qufpw32GsFHAHbzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sURXB-0000000HBzn-3rnk;
	Thu, 18 Jul 2024 13:51:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sURWo-0000000HBtV-2qnG;
	Thu, 18 Jul 2024 13:50:40 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sURWf-0005NY-Lb; Thu, 18 Jul 2024 15:50:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Conor Dooley <conor@kernel.org>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Date: Thu, 18 Jul 2024 15:50:28 +0200
Message-ID: <3522360.som1txNFv6@diego>
In-Reply-To: <1d0e65a0e7797727815ff1b735e881da@manjaro.org>
References: <20240715110251.261844-1-heiko@sntech.de> <30200583.43St1lv6Oq@diego>
 <1d0e65a0e7797727815ff1b735e881da@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_065038_902455_B21D532B 
X-CRM114-Status: GOOD (  70.37  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dragan,

Am Donnerstag, 18. Juli 2024, 15:00:57 CEST schrieb Dragan Simic:
> On 2024-07-18 13:30, Heiko St=FCbner wrote:
> > Am Donnerstag, 18. Juli 2024, 12:53:07 CEST schrieb Dragan Simic:
> >> On 2024-07-18 11:25, Heiko St=FCbner wrote:
> >> > Am Dienstag, 16. Juli 2024, 18:15:08 CEST schrieb Conor Dooley:
> >> >> On Mon, Jul 15, 2024 at 01:02:49PM +0200, Heiko Stuebner wrote:
> >> >> > In contrast to fixed clocks that are described as ungateable, boa=
rds
> >> >> > sometimes use additional oscillators for things like PCIe referen=
ce
> >> >> > clocks, that need actual supplies to get enabled and enable-gpios=
 to be
> >> >> > toggled for them to work.
> >> >> >
> >> >> > This adds a binding for such oscillators that are not configurable
> >> >> > themself, but need to handle supplies for them to work.
> >> >> >
> >> >> > In schematics they often can be seen as
> >> >> >
> >> >> >          ----------------
> >> >> > Enable - | 100MHz,3.3V, | - VDD
> >> >> >          |    3225      |
> >> >> >    GND - |              | - OUT
> >> >> >          ----------------
> >> >> >
> >> >> > or similar. The enable pin might be separate but can also just be=
 tied
> >> >> > to the vdd supply, hence it is optional in the binding.
> >> >> >
> >> >> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> >> >> > ---
> >> >> >  .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++=
++++++
> >> >> >  1 file changed, 49 insertions(+)
> >> >> >  create mode 100644 Documentation/devicetree/bindings/clock/volta=
ge-oscillator.yaml
> >> >> >
> >> >> > diff --git a/Documentation/devicetree/bindings/clock/voltage-osci=
llator.yaml b/Documentation/devicetree/bindings/clock/voltage-oscillator.ya=
ml
> >> >> > new file mode 100644
> >> >> > index 0000000000000..8bff6b0fd582e
> >> >> > --- /dev/null
> >> >> > +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.=
yaml
> >> >> > @@ -0,0 +1,49 @@
> >> >> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> >> > +%YAML 1.2
> >> >> > +---
> >> >> > +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> >> >> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> >> > +
> >> >> > +title: Voltage controlled oscillator
> >> >>
> >> >> Voltage controlled oscillator? Really? That sounds far too similar =
to
> >> >> a
> >> >> VCO to me, and the input voltage here (according to the description=
 at
> >> >> least) does not affect the frequency of oscillation.
> >> >
> >> > That naming was suggested by Stephen in v1 [0] .
> >> >
> >> > Of course the schematics for the board I have only describe it as
> >> > "100MHz,3.3V,3225" , thumbing through some mouser parts matching that
> >> > only mentions "supply voltage" in their datasheets but not a depende=
ncy
> >> > between rate and voltage.
> >> >
> >> > [0]
> >> > https://lore.kernel.org/linux-arm-kernel/b3c450a94bcb4ad0bc5b3c7ee87=
12cb8.sboyd@kernel.org/
> >> >
> >> >> Why the dedicated binding, rather than adding a supply and enable-g=
pio
> >> >> to the existing "fixed-clock" binding? I suspect that a large porti=
on
> >> >> of
> >> >> "fixed-clock"s actually require a supply that is (effectively)
> >> >> always-on.
> >> >
> >> > I guess there are three aspects:
> >> > - I do remember discussions in the past about not extending generic
> >> >   bindings with device-specific stuff. I think generic power-sequenc=
es
> >> >   were the topic back then, though that might have changed over time?
> >> > - There are places that describe "fixed-clock" as
> >> >   "basic fixed-rate clock that cannot gate" [1]
> >> > - Stephen also suggested a separate binding [2]
> >> >
> >> > With the fixed-clock being sort of the root for everything else on m=
ost
> >> > systems, I opted to leave it alone. I guess if the consenus really is
> >> > that
> >> > this should go there, I can move it, but discussion in v1
> >> >
> >> > Interestingly the fixed clock had a gpios property 10 years ago [3] =
:-)
> >> > .
> >> >
> >> > [1]
> >> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/t=
ree/drivers/clk/clk-fixed-rate.c#n18
> >> > [2]
> >> > https://lore.kernel.org/linux-arm-kernel/68f6dc44a8202fd83792e58aea1=
37632.sboyd@kernel.org/
> >> > [3]
> >> > https://lore.kernel.org/linux-kernel//20140515064420.9521.47383@quan=
tum/T/#t
> >> =

> >> After finally going through the v1 discussion [4] in detail,
> >> here are my further thoughts:
> >> =

> >> - I agree with dropping the Diodes stuff, [5] because I see
> >>    no need for that at this point;  though, am I missing
> >>    something, where are they actually used?
> > =

> > On the Rock5 ITX that 100MHz clock comes the one single oscillator =

> > thing.
> > =

> > The Diodes parts are not root sources for their clocks but instead sort
> > PLLs or something, though their manual describes them as
> > "clock generator supporting PCI Express and Ethernet requirements" [8]
> > =

> > So they generate the 100MHz (frequency actually is
> > selected by input pins of the chip) from a separate 25MHz source clock.
> > =

> > One example are the Theobroma/Cherry embedded boards changed in v1 =

> > where
> > they currently are described via existing generic things (no =

> > schematics).
> > =

> > Another user is the rk3568-rock3b for example, where the diodes part
> > is enabled by the same rail as the port itself, so in contrast to the
> > Rock 5 ITX, it works "by accident" on the rock 3b [9]
> =

> Ah, I see now, thanks for the clarification.  The way Diodes PI6C557
> is used on the ROCK 3B, together with its 25 MHz "passive" crystal,
> is pretty much the same as the way Aurasemi AU5426 is used on the
> ROCK 5 ITX, together with its 100 MHz "active" clock generator.  All
> that from the software standpoint, of course.
> =

> To explain it further, the PI6C577 and the AU5426 are the components
> that actually generate the clocks for the PCIe interfaces.  Thus,
> technically we should describe two components per board in their DTs:
> =

> - ROCK 5 ITX:
>      - 100 MHz clock generator (which goes to the AU5426),
>        i.e. the "100MHz,3.3V,3225"
>      - clock buffer that fans the 100 MHz clock out to the
>        PCIe interfaces, i.e. the Aurasemi AU5426
> =

> - ROCK 3B:
>      - 25 MHz "passive" crystal (which goes to the PI6C557)
>      - clock generator that uses the 25 MHz crystal to generate
>        100 MHz and fan it out to the PCIe interfaces, i.e. the
>        Diodes PI6C557
> =

> (The "passive" 25 MHz crystal is very similar to the main 24 MHz
> crystal used by the SoC, also known as xin24m.)
> =

> However, simplifying and abstracting the things out a bit should
> be fine, to end up with the following:
> =

> - ROCK 5 ITX:
>      - "black box" that generates fixed 100 MHz clocks for the
>         PCIe interfaces, which can be gated
> =

> - ROCK 3B:
>      - "black box" that generates fixed 100 MHz clocks for the
>         PCIe interfaces, which can be gated
> =

> ... and that's our, hopefully, gated-clock. :)

I don't think we want too many black-boxes. Devicetree's purpose is to
describe the hardware as best as possible, the OS can make of it what it
wants afterwards ;-) .

That was also Stephen's point in v1 when he wanted to distinguish
between the input-less oscillator and the Diodes things that needs an
input clock.


> > The interesting part of the Diodes ICs is that they actually allow
> > configuration of the generated frequency via their S0 + S1 pins,
> > though they might be statically set in the board layout without
> > being user configurable. (Rock3b does it this way for example)
> =

> The Aurasemi AU5426 also has a few tricks up its sleeve. :)  For
> example, it can also use a "passive" crystal instead of using an
> external clock generator, i.e. it can be configured to work in
> the same "big picture" layout as the PI6C577.
> =

> >> - I agree that "enable-gpios" and "vdd-supply" should be
> >>    required in the binding, [5] because that's the basis for
> >>    something to be actually represented this way
> > =

> > I would only require the vdd supply though.
> > =

> > On the Rock 5 ITX, the chip does have an enable-gpio input, but that is
> > tied directly to the voltage rail and is not user controllable.
> =

> Isn't that voltage rail (VCC3V3_PI6C_05, provided by the U90099 =

> regulator,
> which is an RT9193) actually enabled by GPIO1_A4_d (see pages 14 and 35
> in the ROCK 5 ITX schematic and follow PCIE30x_PWREN_H)?
> =

> Unless I'm missing something, that's the source of all troubles, because
> we basically also need to enable PCIE30x_PWREN_H when only the other M.2
> slot is in use, or when it's enumerated first.  Thus, we need =

> enable-gpios
> to be able to enable the VCC3V3_PI6C_05 independently.

And you correctly described the problem I faced and that got me on that
journey (sata-pcie-controller probing before M.2 attached controller).

PCIE30x4_PWREN_H actually drives two separate regulators though,
U90098 and U90099 . =


U90098 creates VCC3V3_MKEY which is the supply for the main M.2 slot
U90099 creates VCC3V3_PI6C_05 which is the oscillator and Au5426 supply

PCIE30x4_PWREN_H definitly belongs to a regulator node in the devicetree
that then either the M.2 slot or the oscillator can enable first.


> >> - I agree that it should be better not to touch fixed-clock
> >>    at this point, simply because it's used in very many places,
> >>    and because in this case we need more than it requires (see
> >>    the bullet point above)
> >> =

> >> - As I wrote already, [6] I highly disagree with this being
> >>    called voltage-controlled oscillator (VCO), [7] simply
> >>    because it isn't a VCO, but a clock that can be gated;
> >>    though, looking forward to what the last bullet point
> >>    asks to be clarified further
> >> =

> >> - I still think that gated-clock is the best choice for the
> >>    name, because it uses "clock" that's used throughout the
> >>    entire codebase, and uses "gated" to reflect the nature
> >>    of the clock generator
> > =

> > "gated-oscillator" perhaps?
> =

> But what's the output of an oscillator, which we actually care about?
> It's nothing more but a clock. :)
> =

> > This would make it more explicit that we're talking about a root
> > for clock signals. "gated-clock" can be anything, in the middle
> > of a clock tree. Having a very generic name, also invites misuse.
> =

> I can't escape wondering why doesn't "fixed-clock", which is also
> a very generic name, invite abuse?

I guess it does - see the misuse in the rk3588 tiger and jaguar boards.
But it is sort of grandfathered I guess. It is still from a time more than
12 years ago, when architectures (like sunxi) tried to model their clock-
controllers via individual interconnected dt-nodes.


> Speaking about the root of clock signals, the above-mentioned xin24m,
> which is represented in DTs as a fixed-clock, is the root of pretty
> much everything.  Also, it technically isn't a clock, it's a crystal.
> That's another example of the above-mentioned abstraction, in which
> we care about the way sotware sees it, which is a clock.

At this point I think we should dt-people weigh in more on which
direction to take ;-) .

Because as a lot of dt-binding review in the past mentioned, the
"software-perspective" doesn't matter for the binding.


Heiko

> >> - Maybe we could actually use fixed-gated-clock as the name,
> >>    which would make more sense from the stanpoint of possibly
> >>    merging it into fixed-clock at some point, but I'd like
> >>    to hear first what's actually going on with the Diodes
> >>    stuff that was deleted in v2, which I already asked about
> >>    in the first bullet point
> >> =

> >> [4]
> >> https://lore.kernel.org/linux-rockchip/20240709123121.1452394-1-heiko@=
sntech.de/T/#u
> >> [5]
> >> https://lore.kernel.org/linux-rockchip/2e5852b9e94b9a8d0261ce7ad79f432=
9.sboyd@kernel.org/
> >> [6]
> >> https://lore.kernel.org/linux-rockchip/ec84dc37e2c421ee6d31294e08392d5=
7@manjaro.org/
> >> [7]
> >> https://lore.kernel.org/linux-rockchip/b3c450a94bcb4ad0bc5b3c7ee8712cb=
8.sboyd@kernel.org/
> > =

> > [8] https://www.diodes.com/assets/Datasheets/PI6C557-03.pdf
> > [9] https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf
> >     page 31, bottom left of the page
> > =

> > =

> >> >> > +
> >> >> > +maintainers:
> >> >> > +  - Heiko Stuebner <heiko@sntech.de>
> >> >> > +
> >> >> > +properties:
> >> >> > +  compatible:
> >> >> > +    const: voltage-oscillator
> >> >> > +
> >> >> > +  "#clock-cells":
> >> >> > +    const: 0
> >> >> > +
> >> >> > +  clock-frequency: true
> >> >> > +
> >> >> > +  clock-output-names:
> >> >> > +    maxItems: 1
> >> >> > +
> >> >> > +  enable-gpios:
> >> >> > +    description:
> >> >> > +      Contains a single GPIO specifier for the GPIO that enables=
 and disables
> >> >> > +      the oscillator.
> >> >> > +    maxItems: 1
> >> >> > +
> >> >> > +  vdd-supply:
> >> >> > +    description: handle of the regulator that provides the suppl=
y voltage
> >> >> > +
> >> >> > +required:
> >> >> > +  - compatible
> >> >> > +  - "#clock-cells"
> >> >> > +  - clock-frequency
> >> >> > +  - vdd-supply
> >> >> > +
> >> >> > +additionalProperties: false
> >> >> > +
> >> >> > +examples:
> >> >> > +  - |
> >> >> > +    voltage-oscillator {
> >> >> > +      compatible =3D "voltage-oscillator";
> >> >> > +      #clock-cells =3D <0>;
> >> >> > +      clock-frequency =3D <1000000000>;
> >> >> > +      vdd-supply =3D <&reg_vdd>;
> >> >> > +    };
> >> >> > +...
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
