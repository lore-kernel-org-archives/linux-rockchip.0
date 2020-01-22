From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Wed, 22 Jan 2020 13:45:53 +0530
Message-ID: <9c65eb7a-539b-1fa3-f988-40c32aa8dfe3@ti.com>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8s1Jx8uZiSr0uiryS492EbFRoFg9QTwkosZsuyfRYp-3g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <CA+V-a8s1Jx8uZiSr0uiryS492EbFRoFg9QTwkosZsuyfRYp-3g@mail.gmail.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci <linux-pci@vger.kernel.org>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>, LKML <linux-kernel@vger.kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Linux-Renesas <linux-renesas-soc@vger.kernel.org>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Will Deacon <will@kernel.org>, LAK <linux-arm-kernel@li>
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar,

On 21/01/20 11:27 PM, Lad, Prabhakar wrote:
> Hi Rob/Kishon,
> 
> On Wed, Jan 8, 2020 at 4:22 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
>>
>> This patch adds the bindings for the R-Car PCIe endpoint driver.
>>
>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>> ---
>>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
>>  1 file changed, 76 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>> new file mode 100644
>> index 000000000000..99c2a1174463
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>> @@ -0,0 +1,76 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Renesas R-Car PCIe Endpoint
>> +
>> +maintainers:
>> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: renesas,r8a774c0-pcie-ep
>> +      - const: renesas,rcar-gen3-pcie-ep
>> +
>> +  reg:
>> +    maxItems: 5
>> +
>> +  reg-names:
>> +    items:
>> +      - const: apb-base
>> +      - const: memory0
>> +      - const: memory1
>> +      - const: memory2
>> +      - const: memory3

As I had mentioned in the other patch, I'd prefer if we can create
standard binding for representing the memory regions. IMHO we should
create subnode for memory regions Each sub-node itself may or may not
have more than one memory region.

In your platform, since there can be only one allocation in a memory
region, there should be 4 sub-nodes for each of the memory region and
each node should have page_size (or some equivalent property) property
to indicate page_size (= region_size).

For a platform that doesn't have the restriction, there can be a single
sub-node containing all the memory region.

Let's wait for Rob's comment though.

Thanks
Kishon
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: pcie
>> +
>> +  max-functions:
>> +    minimum: 1
>> +    maximum: 6
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - resets
>> +  - power-domains
>> +  - clocks
>> +  - clock-names
>> +  - max-functions
>> +
> apart from dt_binding_check error are we OK with dt bindings ?
> 
> Cheers,
> --Prabhakar
> 
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
>> +    #include <dt-bindings/power/r8a774c0-sysc.h>
>> +
>> +     pcie0_ep: pcie-ep@fe000000 {
>> +            compatible = "renesas,r8a774c0-pcie-ep",
>> +                         "renesas,rcar-gen3-pcie-ep";
>> +            reg = <0 0xfe000000 0 0x80000>,
>> +                  <0x0 0xfe100000 0 0x100000>,
>> +                  <0x0 0xfe200000 0 0x200000>,
>> +                  <0x0 0x30000000 0 0x8000000>,
>> +                  <0x0 0x38000000 0 0x8000000>;
>> +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
>> +            resets = <&cpg 319>;
>> +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
>> +            clocks = <&cpg CPG_MOD 319>;
>> +            clock-names = "pcie";
>> +            max-functions = /bits/ 8 <1>;
>> +    };
>> --
>> 2.20.1
>>
