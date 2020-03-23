From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v1] dt-bindings: display: rockchip: convert rockchip vop
 bindings to yaml
Date: Mon, 23 Mar 2020 13:41:28 -0600
Message-ID: <20200323194128.GD8470@bogus>
References: <20200306170353.11393-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200306170353.11393-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 06, 2020 at 06:03:53PM +0100, Johan Jonker wrote:
> Current dts files with 'vop' nodes are manually verified.
> In order to automate this process rockchip-vop.txt
> has to be converted to yaml. Also included are new
> properties needed for the latest Rockchip Socs.
> 
> Added properties:
>   assigned-clocks
>   assigned-clock-rates
>   power-domains
>   rockchip,grf
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt     |  74 -----------
>  .../bindings/display/rockchip/rockchip-vop.yaml    | 141 +++++++++++++++++++++
>  2 files changed, 141 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml


> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> new file mode 100644
> index 000000000..93ccd32aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip soc display controller (VOP)
> +
> +description:
> +  VOP (Visual Output Processor) is the Display Controller for the Rockchip
> +  series of SoCs which transfers the image data from a video memory
> +  buffer to an external LCD interface.
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,px30-vop-big
> +      - const: rockchip,px30-vop-lit
> +      - const: rockchip,rk3036-vop
> +      - const: rockchip,rk3066-vop
> +      - const: rockchip,rk3126-vop
> +      - const: rockchip,rk3188-vop
> +      - const: rockchip,rk3228-vop
> +      - const: rockchip,rk3288-vop
> +      - const: rockchip,rk3328-vop
> +      - const: rockchip,rk3366-vop
> +      - const: rockchip,rk3368-vop
> +      - const: rockchip,rk3399-vop-big
> +      - const: rockchip,rk3399-vop-lit

Use an 'enum' instead of oneOf+const.

> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description:
> +          Must contain one entry corresponding to the base address and length
> +          of the register space.
> +      - description:
> +          Can optionally contain a second entry corresponding to
> +          the CRTC gamma LUT address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Should contain a list of all VOP IP block interrupts in the
> +      order VSYNC, LCD_SYSTEM. The interrupt specifier
> +      format depends on the interrupt controller used.

maxItems and the description disagree.

> +
> +  clocks:
> +    items:
> +      - description: Clock for ddr buffer transfer.
> +      - description: Pixel clock.
> +      - description: Clock for the ahb bus to R/W the phy regs.
> +
> +  clock-names:
> +    items:
> +      - const: aclk_vop
> +      - const: dclk_vop
> +      - const: hclk_vop
> +
> +  resets:
> +    minItems: 3
> +    maxItems: 3

Just maxItems is enough.

> +
> +  reset-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: dclk
> +
> +  port:
> +    type: object
> +    description:
> +      A port node with endpoint definitions as defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +  assigned-clocks:
> +    maxItems: 2
> +
> +  assigned-clock-rates:
> +    maxItems: 2
> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for
> +      the general register file (GRF).
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    vopb: vopb@ff930000 {
> +      compatible = "rockchip,rk3288-vop";
> +      reg = <0x0 0xff930000 0x0 0x19c>,
> +            <0x0 0xff931000 0x0 0x1000>;
> +      interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru ACLK_VOP0>,
> +               <&cru DCLK_VOP0>,
> +               <&cru HCLK_VOP0>;
> +      clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
> +      resets = <&cru SRST_LCDC1_AXI>,
> +               <&cru SRST_LCDC1_AHB>,
> +               <&cru SRST_LCDC1_DCLK>;
> +      reset-names = "axi", "ahb", "dclk";
> +      iommus = <&vopb_mmu>;
> +      vopb_out: port {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        vopb_out_edp: endpoint@0 {
> +          reg = <0>;
> +          remote-endpoint=<&edp_in_vopb>;
> +        };
> +        vopb_out_hdmi: endpoint@1 {
> +          reg = <1>;
> +          remote-endpoint=<&hdmi_in_vopb>;
> +        };
> +      };
> +    };
> -- 
> 2.11.0
> 
