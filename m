From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/7] dt-bindings: PCI: cadence: Add binding to specify
 max virtual functions
Date: Tue, 14 Jan 2020 19:40:26 -0600
Message-ID: <20200115014026.GA10726@bogus>
References: <20191231113534.30405-1-kishon@ti.com>
 <20191231113534.30405-3-kishon@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191231113534.30405-3-kishon@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>, Tom Joseph <tjoseph@cadence.com>, Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 31, 2019 at 05:05:29PM +0530, Kishon Vijay Abraham I wrote:
> Add binding to specify maximum number of virtual functions that can be
> associated with each physical function.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../devicetree/bindings/pci/cdns,cdns-pcie-ep.txt         | 2 ++
>  .../devicetree/bindings/pci/ti,j721e-pci-ep.yaml          | 8 ++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> index 4a0475e2ba7e..432578202733 100644
> --- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> +++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> @@ -9,6 +9,8 @@ Required properties:
>  
>  Optional properties:
>  - max-functions: Maximum number of functions that can be configured (default 1).
> +- max-virtual-functions: Maximum number of virtual functions that can be
> +    associated with each physical function.
>  - phys: From PHY bindings: List of Generic PHY phandles. One per lane if more
>    than one in the list.  If only one PHY listed it must manage all lanes. 
>  - phy-names:  List of names to identify the PHY.
> diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> index 4621c62016c7..1d4964ba494f 100644
> --- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> @@ -61,6 +61,12 @@ properties:
>      minimum: 1
>      maximum: 6
>  
> +  max-virtual-functions:
> +    minItems: 1
> +    maxItems: 6

Is there a PCIe spec limit to number of virtual functions per phy 
function? Or 2^32 virtual functions is okay.

> +    description: As defined in
> +                 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt

I suspect this this be a common property.

> +
>    dma-coherent:
>      description: Indicates that the PCIe IP block can ensure the coherency
>  
> @@ -85,6 +91,7 @@ required:
>    - cdns,max-outbound-regions
>    - dma-coherent
>    - max-functions
> +  - max-virtual-functions
>    - phys
>    - phy-names
>  
> @@ -107,6 +114,7 @@ examples:
>              clock-names = "fck";
>              cdns,max-outbound-regions = <16>;
>              max-functions = /bits/ 8 <6>;
> +            max-virtual-functions = /bits/ 16 <4 4 4 4 0 0>;
>              dma-coherent;
>              phys = <&serdes0_pcie_link>;
>              phy-names = "pcie_phy";
> -- 
> 2.17.1
> 
