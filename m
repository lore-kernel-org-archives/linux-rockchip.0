From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Date: Fri, 1 May 2020 13:47:11 +0200
Message-ID: <6e5fefa2-1f19-a425-b696-e6e72e25c2d9@gmail.com>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200426100250.14678-2-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng, Heiko,

A few more comments based on version 5 (part 2).

On 4/26/20 12:02 PM, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
> Changes in v5:
> - Fix some wrong define
> - Add boot-medium define
> - Remove some compatible define
> 
> Changes in v4:
> - The compatible define with rkxx_nfc
> - Add assigned-clocks
> - Fix some wrong define
> 
> Changes in v3:
> - Change the title for the dt-bindings
> 
> Changes in v2: None
> 
>  .../mtd/rockchip,nand-controller.yaml         | 124 ++++++++++++++++++
>  1 file changed, 124 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> new file mode 100644
> index 000000000000..12354c79d275
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> @@ -0,0 +1,124 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoCs NAND FLASH Controller (NFC)
> +
> +allOf:
> +  - $ref: "nand-controller.yaml#"
> +
> +maintainers:
> +  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30_nfc
> +      - rockchip,rk3xxx_nfc
> +      - rockchip,rk3308_nfc
> +      - rockchip,rv1108_nfc

Based on what's available in mainline and your info.
For Heiko? Is this correct?

  compatible:
    oneOf:
      - const: rockchip,px30-nfc
      - const: rockchip,rk2928-nfc
      - const: rockchip,rk3308-nfc
      - items:
          - const: rockchip,rk3326-nfc
          - const: rockchip,px30-nfc
      - items:
          - enum:
              - rockchip,rk3036-nfc
              - rockchip,rk3228-nfc
              - rockchip,rk3288-nfc
          - const: rockchip,rk2928-nfc
      - items:
          - const: rockchip,rv1108-nfc
          - const: rockchip,rk3308-nfc

static const struct of_device_id rk_nfc_id_table[] = {
	{.compatible = "rockchip,px30_nfc",   .data = &nfc_v9_cfg },
	{.compatible = "rockchip,rk2928-nfc", .data = &nfc_v6_cfg },
	{.compatible = "rockchip,rk3308_nfc", .data = &nfc_v8_cfg },
	{ /* sentinel */ },
};

> +
> +  reg:
> +    minItems: 1

    maxItems: 1

> +
> +  interrupts:
> +    minItems: 1

    maxItems: 1

> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: ahb
> +      - const: nfc

  assigned-clocks:
    maxItems: 1

  assigned-clock-rates:
    maxItems: 1

  pinctrl-0:
    maxItems: 1

  pinctrl-names:
    const: default

  power-domains:
     maxItems: 1

'power-domains' is needed for px30.

> +
> +patternProperties:
> +  "^nand@[0-3]$":

        "^nand@[0-7]$":
or?
        "^nand@[a-f0-9]$":

> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3

           maximum: 7

> +
> +      nand-ecc-mode:
> +        const: hw
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16,24,40,60,70]

Not every SoC has the same array. Add description maybe.

> +
> +      nand-bus-width:
> +        const: 8
> +

> +      nand-is-boot-medium: true
> +

?
With 2 regexes nand-is-boot-medium is maybe needed, but I'm not able to
successful test that with a common file? Keep or not?
?
          dependencies:
            rockchip,boot-blks: [ nand-is-boot-medium ]
            rockchip,boot-ecc-strength: [ nand-is-boot-medium ]

> +      rockchip-boot-blks:

rockchip,boot-blks:

> +        minimum: 2
> +        default: 16
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          For legacy devices where the bootrom can only handle 16/24 bit
> +          BCH/ECC, and for some other devices where the bootrom can support
> +          60/70 bit BCH/ECC.
> +          In addition, when programming the loader, a linked list needs to
> +          be written in oob for Bootrom to read the correct data sequence.
> +          If specified it indicates the number of erase blocks in use by
> +          the bootloader that need a different BCH/ECC setting.
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +      rockchip-boot-ecc-strength:
> +        enum: [16,24,40,60,70]

Not every SoC has the same array. Add description maybe.

> +        description:
> +          If specified it indicates that use a different BCH/ECC setting for
> +          bootrom.
> +          Only used in combination with 'nand-is-boot-medium'.
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
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    nfc: nand-controller@ff4b0000 {

> +      compatible = "rockchip,rk3308_nfc";

      compatible = "rockchip,rk3308-nfc";

> +      reg = <0x0 0xff4b0000 0x0 0x4000>;
> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
> +      clock-names = "ahb", "nfc";
> +      assigned-clocks = <&clks SCLK_NANDC>;
> +      assigned-clock-rates = <150000000>;
> +
> +      pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
> +                   &flash_rdn &flash_rdy &flash_wrn>;
> +      pinctrl-names = "default";
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +

> +      nand@0 {
> +        reg = <0>;

TEST1:

Change this in the example:

      nand@4 {
        reg = <4>;

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

Result: nothing

TEST2:

Change "^nand@[0-3]$" to "^nand@[a-f0-9]$"

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

Result:

Documentation/devicetree/bindings/mtd/rockchip,nand-controller.example.dt.yaml:
nand-controller@ff4b0000: nand@4:reg:0:0: 4 is greater than the maximum of 3
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml

Conclusion:

?

> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-strength = <16>;
> +        nand-ecc-step-size = <1024>;
> +        nand-is-boot-medium;

> +        rockchip-boot-blks = <8>;
> +        rockchip-boot-ecc-strength = <16>;

        rockchip,boot-blks = <8>;
        rockchip,boot-ecc-strength = <16>;

> +      };
> +    };
> +
> +...
> 
