From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Date: Fri, 20 Mar 2020 16:32:25 +0100
Message-ID: <3352edf3-7951-8760-7ee2-0cffa77a8bf8@gmail.com>
References: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
 <20200320093342.15470-3-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200320093342.15470-3-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

Déjà vu.

The Documentation/ portion of the patch should come in the series before
the code implementing the binding.

cover letter
binding
driver
dts patches

Test with linux-next for MAINTAINER patch. It has changed.

git clone -- depth 1
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

Also include all mail lists found with:
./scripts/get_maintainer.pl --nogit-fallback --nogit

On 3/20/20 10:33 AM, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
>
> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
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
>  .../bindings/mtd/rockchip,nand.yaml           | 101 ++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644
Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
>

> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml

I think rockchip,nand-controller.yaml is preferred.
A driver named rockchip-nand-controller.c would be nice!
See comments on my previous series by Miquel Raynal.

> new file mode 100644
> index 000000000000..907af0d52b6b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
> @@ -0,0 +1,101 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nand.yaml#

rockchip,nand-controller.yaml#

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +

> +title: Rockchip SoCs NAND FLASH Controller (NFC) Device Tree Bindings

Maybe change to:

title: Rockchip SoCs NAND FLASH Controller (NFC)

> +
> +allOf:
> +  - $ref: "nand-controller.yaml"

Add #

  - $ref: "nand-controller.yaml#"

> +
> +maintainers:

> +  - Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Add only people with maintainers rights.

- Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

> +
> +properties:

> +  "#address-cells": true
> +  "#size-cells": true

Already in nand-controller.yaml

> +
> +  compatible:
> +    enum:

> +      - rockchip,px30_nfc
> +      - rockchip,rk3308_nfc
> +      - rockchip,rv1108_nfc
> +      - rockchip,rk3066_nfc
> +      - rockchip,rk3188_nfc
> +      - rockchip,rk3288_nfc
> +      - rockchip,rk3368_nfc
> +      - rockchip,rk2928_nfc
> +      - rockchip,rk3036_nfc
> +      - rockchip,rk3128_nfc
> +      - rockchip,rk3228_nfc

sort/format
Ask robh for exact format.

- rockchip,rk3066-nand-controller


Also add dtsi patches in this serie for supported SoCs in main kernel,
so we can check them with yaml

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:

minItems: 1

> +    items:

> +      - description: Module Clock
> +      - description: Bus Clock

swap
rk3066 only has ahb
Change this also in source!

- description: Bus Clock
- description: Module Clock

> +
> +  clock-names:

minItems: 1

> +    items:

> +      - const: nfc
> +      - const: ahb

swap
rk3066 only has ahb

- const: ahb
- const: nfc

> +
> +patternProperties:

> +  "^nand@[0-3]$":

Use same name as in nand-controller.yaml for inheritance?

  "^nand@[a-f0-9]$":

> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3
> +

nand-ecc-mode?

> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16, 24 , 40, 60, 70]

remove space            ^

> +
> +      nand-bus-width:
> +        const: 8

rk3066 needs lower bch for r/w idb
add info about idb blocks used as variable instead of fixed to 8.
Change this also in source!
For example:

+
+      nand-is-boot-medium: true
+

+      rockchip,boot-blks:

suggestion from robh.
See comments on my previous series.

+        minimum: 2
+        default: 16
+        allOf:
+        - $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          For legacy devices where the bootrom can only handle 24 bit
BCH/ECC.
+          If specified it indicates the number of erase blocks in use by
+          the bootloader that need a lower BCH/ECC setting.
+          Only used in combination with 'nand-is-boot-medium'.

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

sort
    #include <dt-bindings/clock/rk3308-cru.h>
    #include <dt-bindings/interrupt-controller/arm-gic.h>

> +    nfc: nand-controller@ff4b0000 {
> +      compatible = "rockchip,nfc";

use real compatible else no check

> +      reg = <0x0 0xff4b0000 0x0 0x4000>;
> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;

> +      clocks = <&cru SCLK_NANDC>, <&cru HCLK_NANDC>;

swap

> +      clock-names = "nfc", "ahb";

swap

> +      assigned-clocks = <&clks SCLK_NANDC>;
> +      assigned-clock-rates = <150000000>;
> +

> +      pinctrl-names = "default";

pinctrl-names below pinctrl-0

> +      pinctrl-0 = <&flash_csn0 &flash_rdy &flash_ale &flash_cle
> +                  &flash_wrn &flash_rdn &flash_bus8>;

sort/align

> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;

space

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
