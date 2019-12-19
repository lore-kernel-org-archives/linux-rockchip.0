From: Rob Herring <robh@kernel.org>
Subject: Re: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Thu, 19 Dec 2019 17:35:25 -0600
Message-ID: <20191219233525.GA9478@bogus>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>, Frank
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 13, 2019 at 08:47:46AM +0000, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> This patch adds the bindings for the R-Car PCIe endpoint driver.
> 
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt

Please make this a DT schema.

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
> +	    "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;

Normal ordering is: renesas,r8a774c0-pcie-ep

> +	    "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> +				     RZ/G2 compatible device.
> +
> +	    When compatible with the generic version, nodes must list the
> +	    SoC-specific version corresponding to the platform first
> +	    followed by the generic version.
> +
> +- reg: base address and length of the PCIe controller registers.
> +- outbound-ranges: outbound windows base address and length including the flags.
> +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block

How many?

> +- clocks: from common clock binding: clock specifiers for the PCIe controller
> +	 clock.
> +- clock-names: from common clock binding: should be "pcie".
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured (default 1).
> +
> +Example:
> +
> +SoC-specific DT Entry:
> +
> +	pcie_ep: pcie_ep@fe000000 {

pcie-ep@ 

> +		compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
> +		reg = <0 0xfe000000 0 0x80000>;
> +		outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
> +				   0xa 0x0 0xfe200000 0 0x000200000
> +				   0x6 0x0 0x30000000 0 0x008000000
> +				   0x6 0x0 0x38000000 0 0x008000000>;
> +		clocks = <&cpg CPG_MOD 319>;
> +		clock-names = "pcie";
> +		power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +		resets = <&cpg 319>;
> +	};
> -- 
> 2.7.4
> 
