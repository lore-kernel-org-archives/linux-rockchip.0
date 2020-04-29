From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Date: Wed, 29 Apr 2020 10:53:30 +0200
Message-ID: <4a83e5d2-90cc-1db7-cdfd-47b7ceb4fcef@gmail.com>
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

Hi Yifeng,

> On Sun, Apr 26, 2020 at 06:02:44PM +0800, Yifeng Zhao wrote:
>> Documentation support for Rockchip RK3xxx NAND flash controllers
>> 
>> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> ---
>> 
>> Changes in v5:
>> - Fix some wrong define
>> - Add boot-medium define
>> - Remove some compatible define
>> 
>> Changes in v4:
>> - The compatible define with rkxx_nfc
>> - Add assigned-clocks
>> - Fix some wrong define
>> 
>> Changes in v3:
>> - Change the title for the dt-bindings
>> 
>> Changes in v2: None
>> 
>>  .../mtd/rockchip,nand-controller.yaml         | 124 ++++++++++++++++++
>>  1 file changed, 124 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

The name of this file is based on Miquel's opinion, but the
compatibility strings, (for which robh has given a 'reviewed by' tag) in
version 4 don't fit with this format.

>> new file mode 100644
>> index 000000000000..12354c79d275
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
>> @@ -0,0 +1,124 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip SoCs NAND FLASH Controller (NFC)
>> +

>> +allOf:
>> +  - $ref: "nand-controller.yaml#"

The idea of a common file is that you add additional properties that are
not already included. This document has a more restricting character.
Therefore you must the same property names and patterns to be effective.
See comment about "^nand@[0-3]$".

>> +
>> +maintainers:
>> +  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - rockchip,px30_nfc
>> +      - rockchip,rk3xxx_nfc

As told before the binding strings are SoC orientated.
Use the Soc first in line for V600 and replace
'rockchip,rk3xxx_nfc' by 'rockchip,rk3066-nfc'

>> +      - rockchip,rk3308_nfc
>> +      - rockchip,rv1108_nfc
> 
> Use '-', not '_'.
> 

In your driver there are currently 3 data sets:
V622, V800, V900
Each additional SoC will then use a fallback string.

properties:
  compatible:
    oneOf:
      - const: rockchip,px30-nfc
      - const: rockchip,rk3066-nfc
      - const: rockchip,rk3308-nfc
      - Item:
          - enum:
              - rockchip,rv1108-nfc
          - const: rockchip,rk3308-nfc

I propose to also include a V600 data set in the driver and an extra dts
entry for rk3288 to this serie. Add support for CS 8 to your driver.

properties:
  compatible:
    oneOf:
      - const: rockchip,px30-nfc
      - const: rockchip,rk3066-nfc
      - const: rockchip,rk3288-nfc
      - const: rockchip,rk3308-nfc
      - Item:
          - enum:
              - rockchip,rk3368-nfc
          - const: rockchip,rk3288-nfc
      - Item:
          - enum:
              - rockchip,rv1108-nfc
          - const: rockchip,rk3308-nfc


>> +
>> +  reg:

>> +    minItems: 1

Change this back to version 4:

    maxItems: 1

>> +
>> +  interrupts:

>> +    minItems: 1

Change this back to version 4:

    maxItems: 1

>> +
>> +  clocks:
>> +    minItems: 1
>> +    items:
>> +      - description: Bus Clock
>> +      - description: Module Clock
>> +
>> +  clock-names:
>> +    minItems: 1
> 
> So 'ahb' is required and 'nfc' is optional? That's what you defined, but 
> that seems backwards.

This is needed for rk3066 V600.

> 
>> +    items:
>> +      - const: ahb
>> +      - const: nfc
>> +

Also the use of allOf doesn't check for bogus properties without the use
of: 'additionalProperties: false'. Check this document by combining it
into a single file and add additionalProperties.

  assigned-clocks:
    maxItems: 1

  assigned-clock-rates:
    maxItems: 1

  pinctrl-0:
    maxItems: 1

  pinctrl-names:
    const: default

>> +patternProperties:

>> +  "^nand@[0-3]$":

In combination with $ref: "nand-controller.yaml#" you create 2 reg-exes.
One with:
"^nand@[0-3]$" + minimum 0 and maximum 3

A second with:
"^nand@[a-f0-9]$" + no restrictions

Result all pass, so use the same regex as in the common file.
Don't try to restrict both in the regex and in the reg properties.

>> +    type: object
>> +    properties:
>> +      reg:
>> +        minimum: 0
>> +        maximum: 3

V600 has CS 8.
Maybe use this if a V600 data set is included:

if:
  properties:
    compatible:
      contains:
        const: rockchip,rk3066-nfc

then:
      reg:
        minimum: 0
        maximum: 7

else:
      reg:
        minimum: 0
        maximum: 3

>> +
>> +      nand-ecc-mode:
>> +        const: hw
>> +
>> +      nand-ecc-step-size:
>> +        const: 1024
>> +
>> +      nand-ecc-strength:

>> +        enum: [16,24,40,60,70]

Add space             ^  ^  ^  ^

        enum: [16, 24, 40, 60, 70]

>> +
>> +      nand-bus-width:
>> +        const: 8
>> +

>> +      nand-is-boot-medium: true

Nothing changed. Already in nand-controller.yaml => remove

>> +
>> +      rockchip-boot-blks:
> 
> rockchip,boot-blks
> 
>> +        minimum: 2
>> +        default: 16
>> +        allOf:
>> +        - $ref: /schemas/types.yaml#/definitions/uint32
>> +        description:
>> +          For legacy devices where the bootrom can only handle 16/24 bit
>> +          BCH/ECC, and for some other devices where the bootrom can support
>> +          60/70 bit BCH/ECC.
>> +          In addition, when programming the loader, a linked list needs to

Could you use a better description?                          ^
Is this a bit, byte, word, pointer or custom and at what position?

>> +          be written in oob for Bootrom to read the correct data sequence.
>> +          If specified it indicates the number of erase blocks in use by
>> +          the bootloader that need a different BCH/ECC setting.
>> +          Only used in combination with 'nand-is-boot-medium'.

Could you disclose the flow/response of the bootrom if we hit a bad
block? Does it mark that block bad?

Describe why we have a minimum of 2 (1 standard + 1 spare block).
Does the bootrom for V600, V622 have a maximum from the software point
of view?

>> +
>> +      rockchip-boot-ecc-strength:
> 
> rockchip,boot-ecc-strength
> 
>> +        enum: [16,24,40,60,70]

Add space             ^  ^  ^  ^

        enum: [16, 24, 40, 60, 70]

>> +        description:
>> +          If specified it indicates that use a different BCH/ECC setting for
>> +          bootrom.

The phrase above is in need for some improvement.
Could an English speaker help here?

If specified it indicates that a different BCH/ECC setting is used by
the bootrom.

If specified it describes the BCH/ECC setting used by the bootrom.

>> +          Only used in combination with 'nand-is-boot-medium'.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +  - clock-names
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3308-cru.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    nfc: nand-controller@ff4b0000 {
>> +      compatible = "rockchip,rk3308_nfc";
>> +      reg = <0x0 0xff4b0000 0x0 0x4000>;
>> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
>> +      clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
>> +      clock-names = "ahb", "nfc";
>> +      assigned-clocks = <&clks SCLK_NANDC>;
>> +      assigned-clock-rates = <150000000>;
>> +
>> +      pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
>> +                   &flash_rdn &flash_rdy &flash_wrn>;
>> +      pinctrl-names = "default";
>> +
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +
>> +      nand@0 {
>> +        reg = <0>;
>> +        nand-bus-width = <8>;
>> +        nand-ecc-mode = "hw";

>> +        nand-ecc-strength = <16>;
>> +        nand-ecc-step-size = <1024>;

sort

>> +        nand-is-boot-medium;
>> +        rockchip-boot-blks = <8>;
>> +        rockchip-boot-ecc-strength = <16>;
>> +      };
>> +    };
>> +
>> +...
>> -- 
>> 2.17.1
>> 
>> 
>>
