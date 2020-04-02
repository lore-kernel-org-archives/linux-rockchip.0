From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 2/4] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
Date: Thu, 2 Apr 2020 13:35:05 +0200
Message-ID: <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
References: <20200402000234.226466-3-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200402000234.226466-3-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
Cc: dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Helen,

> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> %YAML 1.2
> ---
> $id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 

> title: Rockchip SoC Image Signal Processing unit v1

Where do we need 'v1' for? Is there a 'v2'?

> 
> maintainers:
>   - Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> 
> description: |
>   Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
>   which contains image processing, scaling, and compression functions.
> 
> properties:
>   compatible:
>     const: rockchip,rk3399-cif-isp
> 
>   reg:
>     maxItems: 1
> 
>   interrupts:
>     maxItems: 1
> 
>   iommus:
>     maxItems: 1
> 
>   power-domains:
>     maxItems: 1
> 
>   phys:
>     maxItems: 1
>     description: phandle for the PHY port
> 
>   phy-names:
>     const: dphy
> 
>   clocks:
>     items:
>       - description: ISP clock
>       - description: ISP AXI clock clock
>       - description: ISP AXI clock  wrapper clock
>       - description: ISP AHB clock clock
>       - description: ISP AHB wrapper clock
> 
>   clock-names:
>     items:
>       - const: clk_isp
>       - const: aclk_isp
>       - const: aclk_isp_wrap
>       - const: hclk_isp
>       - const: hclk_isp_wrap
> 
>   # See ./video-interfaces.txt for details
>   ports:
>     type: object
>     additionalProperties: false
> 
>     properties:
>       "#address-cells":
>         const: 1
> 
>       "#size-cells":
>         const: 0
> 
>       port@0:
>         type: object
>         description: connection point for sensors at MIPI-DPHY RX0

>         additionalProperties: false

Nothing required here?

> 
>         properties:
>           "#address-cells":
>             const: 1
> 
>           "#size-cells":
>             const: 0
> 
>           reg:
>             const: 0
> 
>         patternProperties:
>           endpoint:
>             type: object
>             additionalProperties: false
> 
>             properties:
>               reg:
>                 maxItems: 1
> 
>               data-lanes:
>                 minItems: 1
>                 maxItems: 4
> 
>               remote-endpoint: true
> 
>     required:

>       - port@0

The use of '@0' makes "#address-cells" and "#size-cells" also a requirement.

- "#address-cells"
- "#size-cells"

> 
> required:
>   - compatible

How about 'reg'?

- reg

>   - interrupts
>   - clocks
>   - clock-names
>   - power-domains
>   - iommus
>   - phys
>   - phy-names
>   - ports
> 
> additionalProperties: false
> 
> examples:
>   - |
> 
>     #include <dt-bindings/clock/rk3399-cru.h>
>     #include <dt-bindings/interrupt-controller/arm-gic.h>
>     #include <dt-bindings/power/rk3399-power.h>
> 
>     parent0: parent@0 {
>         #address-cells = <2>;
>         #size-cells = <2>;
> 
>         isp0: isp0@ff910000 {
>             compatible = "rockchip,rk3399-cif-isp";
>             reg = <0x0 0xff910000 0x0 0x4000>;
>             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>             clocks = <&cru SCLK_ISP0>,
>                      <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>                      <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>             clock-names = "clk_isp",
>                           "aclk_isp", "aclk_isp_wrap",
>                           "hclk_isp", "hclk_isp_wrap";
>             power-domains = <&power RK3399_PD_ISP0>;
>             iommus = <&isp0_mmu>;
>             phys = <&dphy>;
>             phy-names = "dphy";
> 
>             ports {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> 
>                 port@0 {
>                     #address-cells = <1>;
>                     #size-cells = <0>;
>                     reg = <0>;
> 
>                     mipi_in_wcam: endpoint@0 {
>                         reg = <0>;
>                         remote-endpoint = <&wcam_out>;
>                         data-lanes = <1 2>;
>                     };
> 
>                     mipi_in_ucam: endpoint@1 {
>                         reg = <1>;
>                         remote-endpoint = <&ucam_out>;
>                         data-lanes = <1>;
>                     };
>                 };
>             };
>         };
> 

>         i2c7: i2c@ff160000 {
>             clock-frequency = <400000>;
>             #address-cells = <1>;
>             #size-cells = <0>;

Incomplete example.
From i2c-rk3x.yaml:

required:
  - compatible
  - reg
  - interrupts
  - clocks
  - clock-names

> 
>             wcam: camera@36 {
>                 compatible = "ovti,ov5695";
>                 reg = <0x36>;
> 
>                 port {
>                     wcam_out: endpoint {
>                         remote-endpoint = <&mipi_in_wcam>;
>                         data-lanes = <1 2>;
>                     };
>                 };
>             };
> 
>             ucam: camera@3c {
>                 compatible = "ovti,ov2685";
>                 reg = <0x3c>;
> 
>                   port {
>                       ucam_out: endpoint {
>                           remote-endpoint = <&mipi_in_ucam>;
>                           data-lanes = <1>;
>                       };
>                   };
>             };
>         };
>     };
