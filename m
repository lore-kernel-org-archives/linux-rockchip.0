From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Date: Wed, 4 Mar 2020 10:56:24 -0600
Message-ID: <20200304165624.GA2630@bogus>
References: <20200303094736.7490-1-yifeng.zhao@rock-chips.com>
 <20200303094736.7490-3-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200303094736.7490-3-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Mar 03, 2020 at 05:47:35PM +0800, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
> Changes in v3:
> -change the title for the dt-bindings
> 
> Changes in v2: None
> 
>  .../bindings/mtd/rockchip,nand.yaml           | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
> new file mode 100644
> index 000000000000..9a81f682ac01
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nand.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoCs NAND FLASH Controller (NFC) Device Tree Bindings
> +
> +allOf:
> +  - $ref: "nand-controller.yaml"
> +
> +maintainers:
> +  - Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> +
> +properties:
> +  "#address-cells": true
> +  "#size-cells": true
> +
> +  compatible:
> +    const: rockchip,nfc

Should be SoC specific.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock
> +      - description: Bus Clock
> +
> +  clock-names:
> +    items:
> +      - const: clk_nfc
> +      - const: clk_ahb

'clk_' is redundant.

> +
> +  clock-rates:
> +      maximum: 150000000

Not a standard property. Should be implied by the compatible string.

> +
> +  pinctrl-names: true

No need to specify this, pinctrl properties are allowed on any node and 
added by the tool.

> +
> +patternProperties:
> +  "^pinctrl-[0-9]+$": true

Same here.

> +
> +  "^nand@[a-f0-9]$":

Based on reg, should be only '[0-3]'

> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16, 24 , 40, 60, 70]
> +
> +      nand-bus-width:
> +        const: 8
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +    nfc: nand-controller@ff4b0000 {
> +      compatible = "rockchip,nfc";
> +      reg = <0x0 0xff4b0000 0x0 0x4000>;
> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru SCLK_NANDC>, <&cru HCLK_NANDC>;
> +      clock-names = "clk_nfc", "clk_ahb";
> +      clock-rates = <150000000>;
> +      pinctrl-names = "default";
> +      pinctrl-0 = <&flash_csn0 &flash_rdy &flash_ale &flash_cle
> +                  &flash_wrn &flash_rdn &flash_bus8>;
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      nand@0 {
> +        reg = <0>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-strength = <16>;
> +        nand-ecc-step-size = <1024>;
> +        nand-bus-width = <8>;
> +      };
> +    };
> +
> +...
> -- 
> 2.17.1
> 
> 
> 
