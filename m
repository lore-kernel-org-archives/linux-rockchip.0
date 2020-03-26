From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3 7/7] dt-bindings: rockchip-vpu: Convert bindings to json-schema
Date: Thu, 26 Mar 2020 10:59:30 -0600
Message-ID: <CAL_Jsq+oBsDoDVpRUeW6z-92_wYbA1CHvJnSX-ALk3igbMmJJg@mail.gmail.com>
References: <20200325213439.16509-1-ezequiel@collabora.com> <20200325213439.16509-8-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200325213439.16509-8-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Collabora Kernel ML <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Mar 25, 2020 at 3:35 PM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> json-schema.
>
> Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
> Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
>  .../bindings/media/rockchip-vpu.txt           | 43 ----------
>  .../bindings/media/rockchip-vpu.yaml          | 82 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 83 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.txt b/Documentation/devicetree/bindings/media/rockchip-vpu.txt
> deleted file mode 100644
> index 339252d9c515..000000000000
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.txt
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -device-tree bindings for rockchip VPU codec
> -
> -Rockchip (Video Processing Unit) present in various Rockchip platforms,
> -such as RK3288, RK3328 and RK3399.
> -
> -Required properties:
> -- compatible: value should be one of the following
> -               "rockchip,rk3288-vpu";
> -               "rockchip,rk3328-vpu";
> -               "rockchip,rk3399-vpu";
> -- interrupts: encoding and decoding interrupt specifiers
> -- interrupt-names: should be
> -               "vepu", "vdpu" on RK3288 and RK3399,
> -               "vdpu" on RK3328.
> -- clocks: phandle to VPU aclk, hclk clocks
> -- clock-names: should be "aclk" and "hclk"
> -- power-domains: phandle to power domain node
> -- iommus: phandle to a iommu node
> -
> -Example:
> -SoC-specific DT entry:
> -       vpu: video-codec@ff9a0000 {
> -               compatible = "rockchip,rk3288-vpu";
> -               reg = <0x0 0xff9a0000 0x0 0x800>;
> -               interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> -                            <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> -               interrupt-names = "vepu", "vdpu";
> -               clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> -               clock-names = "aclk", "hclk";
> -               power-domains = <&power RK3288_PD_VIDEO>;
> -               iommus = <&vpu_mmu>;
> -       };
> -
> -       vpu: video-codec@ff350000 {
> -               compatible = "rockchip,rk3328-vpu";
> -               reg = <0x0 0xff350000 0x0 0x800>;
> -               interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> -               interrupt-names = "vdpu";
> -               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> -               clock-names = "aclk", "hclk";
> -               power-domains = <&power RK3328_PD_VPU>;
> -               iommus = <&vpu_mmu>;
> -       };
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> new file mode 100644
> index 000000000000..a0c45e05cf03
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/media/rockchip-vpu.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Hantro G1 VPU codecs implemented on Rockchip SoCs
> +
> +maintainers:
> +  - Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> +
> +description:
> +  Hantro G1 video encode and decode accelerators present on Rockchip SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3288-vpu
> +      - rockchip,rk3328-vpu
> +      - rockchip,rk3399-vpu
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    items:
> +      - const: vepu
> +      - const: vdpu
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +        #include <dt-bindings/clock/rk3288-cru.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +        vpu: video-codec@ff9a0000 {
> +                compatible = "rockchip,rk3288-vpu";
> +                reg = <0x0 0xff9a0000 0x0 0x800>;
> +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> +                             <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "vepu", "vdpu";
> +                clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> +                clock-names = "aclk", "hclk";
> +                power-domains = <&power RK3288_PD_VIDEO>;

Header for this define?

> +                iommus = <&vpu_mmu>;
> +        };
> +
> +        vpu: video-codec@ff350000 {
> +                compatible = "rockchip,rk3328-vpu";
> +                reg = <0x0 0xff350000 0x0 0x800>;
> +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "vdpu";
> +                clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +                clock-names = "aclk", "hclk";
> +                power-domains = <&power RK3328_PD_VPU>;
> +                iommus = <&vpu_mmu>;
> +        };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d66ac41ef587..2b8b3e7f3df3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14320,7 +14320,7 @@ L:      linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>  S:     Maintained
>  F:     drivers/staging/media/hantro/
>  F:     Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> -F:     Documentation/devicetree/bindings/media/rockchip-vpu.txt
> +F:     Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>
>  ROCKER DRIVER
>  M:     Jiri Pirko <jiri-rHqAuBHg3fBzbRFIqnYvSA@public.gmane.org>
> --
> 2.26.0.rc2
>
