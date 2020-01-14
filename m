From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Tue, 14 Jan 2020 08:11:12 +0000
Message-ID: <CA+V-a8sP=zTU1UAbXBWCpAn0uduNnUg+JEK0-y8G-4dV4AVVGQ@mail.gmail.com>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com> <20200113212252.GA3120@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20200113212252.GA3120@bogus>
Sender: linux-pci-owner@vger.kernel.org
To: Rob Herring <robh@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Catalin Marinas <catalin.marinas@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.re>
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

thank you for the review.

On Mon, Jan 13, 2020 at 9:23 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jan 08, 2020 at 04:22:09PM +0000, Lad Prabhakar wrote:
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>
> Fails 'make dt_binding_check':
>
> Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml: $id:
> path/filename 'pci/rcar-pcie-ep.yaml' doesn't match actual filename
>
my bad fill that and post a v4.

Cheers,
--Prabhakar Lad
> >
> > diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> > new file mode 100644
> > index 000000000000..99c2a1174463
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Renesas R-Car PCIe Endpoint
> > +
> > +maintainers:
> > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: renesas,r8a774c0-pcie-ep
> > +      - const: renesas,rcar-gen3-pcie-ep
> > +
> > +  reg:
> > +    maxItems: 5
> > +
> > +  reg-names:
> > +    items:
> > +      - const: apb-base
> > +      - const: memory0
> > +      - const: memory1
> > +      - const: memory2
> > +      - const: memory3
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: pcie
> > +
> > +  max-functions:
> > +    minimum: 1
> > +    maximum: 6
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - resets
> > +  - power-domains
> > +  - clocks
> > +  - clock-names
> > +  - max-functions
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
> > +    #include <dt-bindings/power/r8a774c0-sysc.h>
> > +
> > +     pcie0_ep: pcie-ep@fe000000 {
> > +            compatible = "renesas,r8a774c0-pcie-ep",
> > +                         "renesas,rcar-gen3-pcie-ep";
> > +            reg = <0 0xfe000000 0 0x80000>,
> > +                  <0x0 0xfe100000 0 0x100000>,
> > +                  <0x0 0xfe200000 0 0x200000>,
> > +                  <0x0 0x30000000 0 0x8000000>,
> > +                  <0x0 0x38000000 0 0x8000000>;
> > +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> > +            resets = <&cpg 319>;
> > +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> > +            clocks = <&cpg CPG_MOD 319>;
> > +            clock-names = "pcie";
> > +            max-functions = /bits/ 8 <1>;
> > +    };
> > --
> > 2.20.1
> >
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
