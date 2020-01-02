From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Thu, 2 Jan 2020 08:47:47 +0000
Message-ID: <CA+V-a8vO_3P3vDFVuKLJAK7v99E7qKVAei0Kmba8tKist7mAaw@mail.gmail.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com> <20191219233525.GA9478@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191219233525.GA9478@bogus>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Linux-Renesa
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

Thank you for the review.

On Thu, Dec 19, 2019 at 11:35 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:46AM +0000, Lad Prabhakar wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>
> Please make this a DT schema.
>
sure will do.

> >
> > diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > new file mode 100644
> > index 0000000..7f0a97e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > @@ -0,0 +1,37 @@
> > +* Renesas R-Car PCIe Endpoint Controller DT description
> > +
> > +Required properties:
> > +         "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
>
> Normal ordering is: renesas,r8a774c0-pcie-ep
>
> > +         "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> > +                                  RZ/G2 compatible device.
> > +
> > +         When compatible with the generic version, nodes must list the
> > +         SoC-specific version corresponding to the platform first
> > +         followed by the generic version.
> > +
> > +- reg: base address and length of the PCIe controller registers.
> > +- outbound-ranges: outbound windows base address and length including the flags.
> > +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
>
> How many?
>
should be one.

> > +- clocks: from common clock binding: clock specifiers for the PCIe controller
> > +      clock.
> > +- clock-names: from common clock binding: should be "pcie".
> > +
> > +Optional Property:
> > +- max-functions: Maximum number of functions that can be configured (default 1).
> > +
> > +Example:
> > +
> > +SoC-specific DT Entry:
> > +
> > +     pcie_ep: pcie_ep@fe000000 {
>
> pcie-ep@
>
will fix that.

Cheers,
--Prabhakar

> > +             compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
> > +             reg = <0 0xfe000000 0 0x80000>;
> > +             outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
> > +                                0xa 0x0 0xfe200000 0 0x000200000
> > +                                0x6 0x0 0x30000000 0 0x008000000
> > +                                0x6 0x0 0x38000000 0 0x008000000>;
> > +             clocks = <&cpg CPG_MOD 319>;
> > +             clock-names = "pcie";
> > +             power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> > +             resets = <&cpg 319>;
> > +     };
> > --
> > 2.7.4
> >
