From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Date: Wed, 10 Jun 2020 12:50:25 +0200
Message-ID: <e805f6c2-26a2-8163-d061-ce43026d4d3f@gmail.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-2-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200609074020.23860-2-yifeng.zhao@rock-chips.com>
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
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

Just a few more comments (part 1).

About the name of the dts patches.

Currently this is used:
Subject [PATCH v6 6/8] arm: dts: rockchip: Add nfc dts for RV1108 SOC
Add nfc(nand flash controller) node for RV1108 Soc.

Dts is more file related. The patch adds a node, so maybe change it to:
Subject [PATCH v7 6/8] arm: dts: rockchip: Add nfc node for RV1108 SoC
Add NAND FLASH Controller(NFC) node for RV1108 SoC.

Johan

On 6/9/20 9:40 AM, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v6:
> - Fix some wrong define
> - Modified the definition of compatible
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
>  .../mtd/rockchip,nand-controller.yaml         | 154 ++++++++++++++++++
>  1 file changed, 154 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> new file mode 100644
> index 000000000000..f753fe8248aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> @@ -0,0 +1,154 @@
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
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,px30-nfc
> +      - const: rockchip,rk2928-nfc
> +      - const: rockchip,rv1108-nfc

> +      - items:
> +          - const: rockchip,rk3326-nfc
> +          - const: rockchip,px30-nfc

In the mainline kernel rk3326.dtsi gets the nodes defined by including
px30.dtsi, so if nothing changed we don't need a compatible string for
rk3326. Or else add an extra patch to this serie where this compatible
string is needed.

> +      - items:
> +          - const: rockchip,rk3036-nfc
> +          - const: rockchip,rk2928-nfc
> +      - items:
> +          - const: rockchip,rk3308-nfc
> +          - const: rockchip,rv1108-nfc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
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
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +    maxItems: 1
> +
> +  pinctrl-0:
> +    maxItems: 1
> +
> +  pinctrl-names:
> +    const: default
> +
> +  power-domains:

> +     maxItems: 1

       ^
Use 2 spaces instead of 3.

> +
> +patternProperties:
> +  "^nand@[a-f0-9]$":
> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +
> +      nand-ecc-mode:
> +        const: hw
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16, 24, 40, 60, 70]
> +        description:
> +          The ECC configurations that can be supported are as follows.

> +          - NFCv900(PX30 and RK3326) support ecc strength 16, 40, 60 and 70.
> +          - NFCv600(RK3066 and RK2928) support ecc strength 16, 24, 40 and 60.
> +          - NFCv622(RK3036 and RK3128) support ecc strength 16, 24, 40 and 60.
> +          - NFCv800(RK3308 and RV1108) support ecc strength 16.

         NFC v600 ECC 16, 24, 40, 60
           RK2928, RK3066, RK3188

         NFC v622 ECC 16, 24, 40, 60
           RK3036, RK3128

         NFC v800 ECC 16
           RK3308, RV1108

         NFC v900 ECC 16, 40, 60, 70
           PX30, RK3326

Make it more in alphabetically order, so later things can easier be
inserted.
Maybe don't use the character '-' at the start of a line in a yaml file?

> +
> +      nand-bus-width:
> +        const: 8
> +
> +      rockchip,boot-blks:
> +        minimum: 2
> +        default: 16
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          The NFC driver need this information to select ECC
> +          algorithms supported by the BOOTROM.

boot ROM

> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +      rockchip,boot-ecc-strength:
> +        enum: [16, 24, 40, 60, 70]
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          If specified it indicates that a different BCH/ECC setting is
> +          supported by the BOOTROM.

boot ROM

> +          - NFCv900(PX30 and RK3326) support ecc strength 16 and 70.

> +          - NFCv600(RK3066 and RK2928) support ecc strength 16, 24, 40 and 60.

Is ECC strength for rk3066 16, 24 correct?

> +          - NFCv622(RK3036 and RK3128) support ecc strength 16, 24, 40 and 60.
> +          - NFCv800(RK3308 and RV1108) support ecc strength 16.
         NFC v600 ECC 16, 24
           RK2928, RK3066, RK3188

         NFC v622 ECC 16, 24, 40, 60
           RK3036, RK3128

         NFC v800 ECC 16
           RK3308, RV1108

         NFC v900 ECC 16, 70
           PX30, RK3326

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

#include <dt-bindings/interrupt-controller/irq.h>

irq.h is included by arm-gic.h, however Heiko recently indicated that
both should be included.

> +    nfc: nand-controller@ff4b0000 {
> +      compatible = "rockchip,rk3308-nfc",
> +                   "rockchip,rv1108-nfc";
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
> +        label = "rk-nand";
> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-step-size = <1024>;
> +        nand-ecc-strength = <16>;
> +        nand-is-boot-medium;
> +        rockchip,boot-blks = <8>;
> +        rockchip,boot-ecc-strength = <16>;
> +      };
> +    };
> +
> +...
> 
