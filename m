From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v4 4/7] dt-bindings: sram: Merge Renesas SRAM bindings
 into generic
Date: Fri, 1 Nov 2019 11:53:45 +0100
Message-ID: <CAJKOXPcZGhC1+-tOwL6N_ohWzXEqJ3T6=HWefNzXsa3eeQN1fg@mail.gmail.com>
References: <20191021161351.20789-1-krzk@kernel.org> <20191021161351.20789-4-krzk@kernel.org>
 <CAMuHMdXr7_HP5NUQ_0D76N-eBuootQqyPusqmf6nyDnLN__ORA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAMuHMdXr7_HP5NUQ_0D76N-eBuootQqyPusqmf6nyDnLN__ORA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 1 Nov 2019 at 11:08, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Krzysztof,
>
> On Mon, Oct 21, 2019 at 6:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > The Renesas SRAM bindings list only compatible so integrate them into
> > generic SRAM bindings schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Thanks for your patch, whcih is now commit 0759b09eadd0d9a1 ("dt-bindings:
> sram: Merge Renesas SRAM bindings into generic") in Rob's for-next branch.
>
> > --- a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
> > +++ /dev/null
> > @@ -1,27 +0,0 @@
> > -* Renesas SMP SRAM
> > -
> > -Renesas R-Car Gen2 and RZ/G1 SoCs need a small piece of SRAM for the jump stub
> > -for secondary CPU bringup and CPU hotplug.
> > -This memory is reserved by adding a child node to a "mmio-sram" node, cfr.
> > -Documentation/devicetree/bindings/sram/sram.txt.
> > -
> > -Required child node properties:
> > -  - compatible: Must be "renesas,smp-sram",
> > -  - reg: Address and length of the reserved SRAM.
> > -    The full physical (bus) address must be aligned to a 256 KiB boundary.
> > -
> > -
> > -Example:
> > -
> > -       icram1: sram@e63c0000 {
> > -               compatible = "mmio-sram";
> > -               reg = <0 0xe63c0000 0 0x1000>;
> > -               #address-cells = <1>;
> > -               #size-cells = <1>;
> > -               ranges = <0 0 0xe63c0000 0x1000>;
> > -
> > -               smp-sram@0 {
> > -                       compatible = "renesas,smp-sram";
> > -                       reg = <0 0x10>;
> > -               };
>
> > --- a/Documentation/devicetree/bindings/sram/sram.yaml
> > +++ b/Documentation/devicetree/bindings/sram/sram.yaml
>
> > @@ -186,3 +187,17 @@ examples:
> >              reg = <0x1ff80 0x8>;
> >          };
> >      };
> > +
> > +  - |
> > +    sram@e63c0000 {
> > +        compatible = "mmio-sram";
> > +        reg = <0xe63c0000 0x1000>;
>
> Is there any specific reason you converted the example from 64-bit to
> 32-bit addressing?
> All Renesas SoCs using this have #address-cells and #size-cells = <2>.

I should mention it in commit msg. The reason is because examples are
compiled inside a {} with address/size cells of 1. Instead of
conversion maybe it would be reasonable to put it inside additional
node adjusting the address/size cells.

Best regards,
Krzysztof
