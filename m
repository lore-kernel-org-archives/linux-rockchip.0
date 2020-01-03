From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Fri, 3 Jan 2020 16:29:18 +0000
Message-ID: <CA+V-a8uZqwfbYNec7bPWf5RuZP-zVkAyAz8SMueJic5wU0zyBw@mail.gmail.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Frank Rowand <frowand.list@gmail.com>, Gustavo Pimentel <gustavo.pim>
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon/Rob,

On Fri, Dec 13, 2019 at 8:48 AM Lad Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> This patch adds the bindings for the R-Car PCIe endpoint driver.
>
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> new file mode 100644
> index 0000000..7f0a97e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> @@ -0,0 +1,37 @@
> +* Renesas R-Car PCIe Endpoint Controller DT description
> +
> +Required properties:
> +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> +                                    RZ/G2 compatible device.
> +
> +           When compatible with the generic version, nodes must list the
> +           SoC-specific version corresponding to the platform first
> +           followed by the generic version.
> +
> +- reg: base address and length of the PCIe controller registers.
> +- outbound-ranges: outbound windows base address and length including the flags.
> +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
> +- clocks: from common clock binding: clock specifiers for the PCIe controller
> +        clock.
> +- clock-names: from common clock binding: should be "pcie".
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured (default 1).
> +
> +Example:
> +
> +SoC-specific DT Entry:
> +
> +       pcie_ep: pcie_ep@fe000000 {
> +               compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
> +               reg = <0 0xfe000000 0 0x80000>;
> +               outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
> +                                  0xa 0x0 0xfe200000 0 0x000200000
> +                                  0x6 0x0 0x30000000 0 0x008000000
> +                                  0x6 0x0 0x38000000 0 0x008000000>;
> +               clocks = <&cpg CPG_MOD 319>;
> +               clock-names = "pcie";
> +               power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +               resets = <&cpg 319>;
> +       };

Now that I have dropped "outbound-ranges", do the below bindings look good ?

- reg-names: Must include the following names
 - "apb-base" - Controller base
 - "memory0" - memory window 0 used by the host to map the pci address locally
 - "memory1" - memory window 1 used by the host to map the pci address locally
- "memory2" - memory window 2 used by the host to map the pci address locally
- "memory3" - memory window 3 used by the host to map the pci address locally

    pcie-ep: pcie_ep@fe000000 {
        compatible = "renesas,pcie-r8a774c0", "renesas,pcie-rcar-gen2";
        reg = <0 0xfe000000 0 0x80000>,
            <0x0 0xfe100000 0 0x100000>,
            <0x0 0xfe200000 0 0x200000>,
            <0x0 0x30000000 0 0x8000000>,
            <0x0 0x38000000 0 0x8000000>;
        reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
        clocks = <&cpg CPG_MOD 319>;
        clock-names = "pcie";
        power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
        resets = <&cpg 319>;
    };

Cheers,
--Prabhakar
