From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2] dt-bindings: sound: convert rk3328 codec binding to
 yaml
Date: Mon, 13 Jul 2020 20:43:07 -0600
Message-ID: <20200714024307.GA1175068@bogus>
References: <20200630135412.718447-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200630135412.718447-1-katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 30, 2020 at 10:54:12PM +0900, Katsuhiro Suzuki wrote:
> This patch converts Rockchip rk3328 audio codec binding to DT schema.
> And adds description about "mclk" clock and fixes some errors in
> original example.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
> ---
>  .../bindings/sound/rockchip,rk3328-codec.txt  | 28 --------
>  .../bindings/sound/rockchip,rk3328-codec.yaml | 70 +++++++++++++++++++
>  2 files changed, 70 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml

Need to Cc Mark Brown...

> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
> deleted file mode 100644
> index 1ecd75d2032a..000000000000
> --- a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -* Rockchip Rk3328 internal codec
> -
> -Required properties:
> -
> -- compatible: "rockchip,rk3328-codec"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- rockchip,grf: the phandle of the syscon node for GRF register.
> -- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
> -- clock-names: should be "pclk".
> -- spk-depop-time-ms: speak depop time msec.
> -
> -Optional properties:
> -
> -- mute-gpios: GPIO specifier for external line driver control (typically the
> -              dedicated GPIO_MUTE pin)
> -
> -Example for rk3328 internal codec:
> -
> -codec: codec@ff410000 {
> -	compatible = "rockchip,rk3328-codec";
> -	reg = <0x0 0xff410000 0x0 0x1000>;
> -	rockchip,grf = <&grf>;
> -	clocks = <&cru PCLK_ACODEC>;
> -	clock-names = "pclk";
> -	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
> -	spk-depop-time-ms = 100;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml
> new file mode 100644
> index 000000000000..525b48c2f5de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,rk3328-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk3328 internal codec
> +
> +maintainers:
> +  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3328-codec
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for audio codec
> +      - description: clock for I2S master clock
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: mclk
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the GRF register.
> +
> +  spk-depop-time-ms:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Don't need a type with standard unit suffixes.

> +    default: 200

Is there a range of values? Surely 2^32 would be too long.

Otherwise,

Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

> +    description:
> +      Speaker depop time in msec.
> +
> +  mute-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO specifier for external line driver control (typically the
> +      dedicated GPIO_MUTE pin)
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - rockchip,grf
> +  - "#sound-dai-cells"
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/clock/rk3328-cru.h>
> +    codec: codec@ff410000 {
> +      compatible = "rockchip,rk3328-codec";
> +      reg = <0xff410000 0x1000>;
> +      clocks = <&cru PCLK_ACODECPHY>, <&cru SCLK_I2S1>;
> +      clock-names = "pclk", "mclk";
> +      rockchip,grf = <&grf>;
> +      mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
> +      spk-depop-time-ms = <100>;
> +      #sound-dai-cells = <0>;
> +    };
> -- 
> 2.27.0
> 
