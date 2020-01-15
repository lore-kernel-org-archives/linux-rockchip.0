From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
Date: Wed, 15 Jan 2020 09:18:56 -0600
Message-ID: <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com> <20200114213809.27166-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-mmc-owner@vger.kernel.org>
In-Reply-To: <20200114213809.27166-2-jbx6244@gmail.com>
Sender: linux-mmc-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Mark Rutland <mark.rutland@arm.com>, "heiko@sntech.de" <heiko@sntech.de>, linux-mmc <linux-mmc@vger.kernel.org>, devicetree@vger.kernel.org, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Convert the Synopsys designware mobile storage host controller
> device tree bindings to yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/mmc/synopsys-dw-mshc-common.yaml      |  81 ++++++++++++
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.txt   | 141 ---------------------
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.yaml  |  88 +++++++++++++
>  3 files changed, 169 insertions(+), 141 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> new file mode 100644
> index 000000000..aae84a4bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware Mobile Storage Host Controller Common Properties
> +
> +allOf:
> +  - $ref: "mmc-controller-common.yaml"
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +properties:
> +  resets:
> +    maxItems: 1
> +    description:
> +      phandle + reset specifier pair, intended to represent hardware
> +      reset signal present internally in some host controller IC designs.
> +      See Documentation/devicetree/bindings/reset/reset.txt for details.

Drop the description. It has nothing unique to this binding.

> +
> +  reset-names:
> +    const: reset
> +    description:
> +      Request name for using "resets" property.
> +      (It will be used together with "resets" property.)

Drop.

> +
> +  clock-frequency:
> +    description:
> +      Should be the frequency (in Hz) of the ciu clock.  If this
> +      is specified and the ciu clock is specified then we'll try to set the ciu
> +      clock to this at probe time.
> +
> +  fifo-depth:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      The maximum size of the tx/rx fifo's. If this property is not
> +      specified, the default value of the fifo size is determined from the
> +      controller registers.
> +
> +  card-detect-delay:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - default: 0
> +    description:
> +      Delay in milli-seconds before detecting card after card
> +      insert event. The default value is 0.
> +
> +  data-addr:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Override fifo address with value provided by DT. The default FIFO reg
> +      offset is assumed as 0x100 (version < 0x240A) and 0x200(version >= 0x240A)
> +      by driver. If the controller does not follow this rule, please use
> +      this property to set fifo address in device tree.
> +
> +  fifo-watermark-aligned:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Data done irq is expected if data length is less than
> +      watermark in PIO mode. But fifo watermark is requested to be aligned
> +      with data length in some SoC so that TX/RX irq can be generated with
> +      data done irq. Add this watermark quirk to mark this requirement and
> +      force fifo watermark setting accordingly.
> +
> +  dmas:
> +    maxItems: 1
> +    description:
> +      List of DMA specifiers with the controller specific format as described
> +      in the generic DMA client binding.
> +      Refer to dma-controller.yaml for details.

Drop the description.

> +
> +  dma-names:
> +    const: rx-tx
> +    description:
> +      Request names for generic DMA client binding.
> +      Refer to dma-controller.yaml for details.

Drop

[...]

> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> new file mode 100644
> index 000000000..6f85a21d0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware Mobile Storage Host Controller Binding
> +
> +allOf:
> +  - $ref: "synopsys-dw-mshc-common.yaml"
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: snps,dw-mshc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +    description:
> +      Handle to "biu" and "ciu" clocks for the
> +      bus interface unit clock and the card interface unit clock.
> +
> +  clock-names:
> +    items:
> +      - const: biu
> +      - const: ciu
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  # The MSHC controller node can be split into two portions, SoC specific and
> +  # board specific portions as listed below.

This split doesn't work because the examples are built and validated
now. It may happen to because all the props are optional, but the
board hunk goes unchecked. So please combine.

> +  - |
> +    dwmmc0@12200000 {
> +      compatible = "snps,dw-mshc";
> +      clocks = <&clock 351>, <&clock 132>;
> +      clock-names = "biu", "ciu";
> +      reg = <0x12200000 0x1000>;
> +      interrupts = <0 75 0>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      data-addr = <0x200>;
> +      fifo-watermark-aligned;
> +      resets = <&rst 20>;
> +      reset-names = "reset";
> +    };
> +  # [board specific internal DMA resources]
> +  - |
> +    dwmmc0@12200000 {
> +      clock-frequency = <400000000>;
> +      clock-freq-min-max = <400000 200000000>;
> +      broken-cd;
> +      fifo-depth = <0x80>;
> +      card-detect-delay = <200>;
> +      vmmc-supply = <&buck8>;
> +      bus-width = <8>;
> +      cap-mmc-highspeed;
> +      cap-sd-highspeed;
> +    };
> +  # [board specific generic DMA request binding]
> +  - |
> +    dwmmc0@12200000 {
> +      clock-frequency = <400000000>;
> +      clock-freq-min-max = <400000 200000000>;
> +      broken-cd;
> +      fifo-depth = <0x80>;
> +      card-detect-delay = <200>;
> +      vmmc-supply = <&buck8>;
> +      bus-width = <8>;
> +      cap-mmc-highspeed;
> +      cap-sd-highspeed;
> +      dmas = <&pdma 12>;
> +      dma-names = "rx-tx";
> +    };
> --
> 2.11.0
>
