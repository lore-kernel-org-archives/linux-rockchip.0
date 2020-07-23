From: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH] dt-bindings: power: rockchip: Convert to json-schema
Date: Thu, 23 Jul 2020 17:46:41 +0200
Message-ID: <9fa390ef-068f-82b0-2317-64f3ffc4864f@collabora.com>
References: <20200715170216.2875868-1-enric.balletbo@collabora.com>
 <20200721032536.GA3476792@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200721032536.GA3476792@bogus>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Collabora Kernel ML <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

Thank you for your review.

On 21/7/20 5:25, Rob Herring wrote:
> On Wed, Jul 15, 2020 at 07:02:16PM +0200, Enric Balletbo i Serra wrote:
>> Convert the soc/rockchip/power_domain.txt binding document to json-schema
>> and move to the power bindings directory.
>>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> ---
>>
>>  .../power/rockchip,power-controller.yaml      | 154 ++++++++++++++++++
>>  .../bindings/soc/rockchip/power_domain.txt    | 136 ----------------
>>  2 files changed, 154 insertions(+), 136 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
>>
>> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>> new file mode 100644
>> index 000000000000..af50cf2b3e63
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>> @@ -0,0 +1,154 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/power/rockchip,power-controller.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip Power Domains
>> +
>> +maintainers:
>> +  - Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> +  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> +
>> +description: |
>> +  Rockchip processors include support for multiple power domains which can be
>> +  powered up/down by software based on different application scenes to save power.
>> +
>> +  Power domains contained within power-controller node are generic power domain
>> +  providers documented in Documentation/devicetree/bindings/power/power-domain.yaml.
>> +
>> +  IP cores belonging to a power domain should contain a 'power-domains'
>> +  property that is a phandle for the power domain node representing the domain.
>> +
>> +properties:
>> +  power-controller:
>> +    type: object
>> +    description: List of power domains provided by this controller.
>> +
>> +    properties:
>> +      compatible:
>> +        enum:
>> +          - rockchip,px30-power-controller
>> +          - rockchip,rk3036-power-controller
>> +          - rockchip,rk3066-power-controller
>> +          - rockchip,rk3128-power-controller
>> +          - rockchip,rk3188-power-controller
>> +          - rockchip,rk3228-power-controller
>> +          - rockchip,rk3288-power-controller
>> +          - rockchip,rk3328-power-controller
>> +          - rockchip,rk3366-power-controller
>> +          - rockchip,rk3368-power-controller
>> +          - rockchip,rk3399-power-controller
>> +
>> +      reg:
>> +        description: |
>> +          Power domain index. Valid values are defined in:
>> +          "include/dt-bindings/power/px30-power.h" - for PX30 type power domain.
>> +          "include/dt-bindings/power/rk3036-power.h" - for RK3036 type power domain.
>> +          "include/dt-bindings/power/rk3066-power.h" - for RK3066 type power domain.
>> +          "include/dt-bindings/power/rk3128-power.h" - for RK3128 type power domain.
>> +          "include/dt-bindings/power/rk3188-power.h" - for RK3188 type power domain.
>> +          "include/dt-bindings/power/rk3228-power.h" - for RK3228 type power domain.
>> +          "include/dt-bindings/power/rk3288-power.h" - for RK3288 type power domain.
>> +          "include/dt-bindings/power/rk3328-power.h" - for RK3328 type power domain.
>> +          "include/dt-bindings/power/rk3366-power.h" - for RK3366 type power domain.
>> +          "include/dt-bindings/power/rk3368-power.h" - for RK3368 type power domain.
>> +          "include/dt-bindings/power/rk3399-power.h" - for RK3399 type power domain.
>> +        maxItems: 1
>> +
>> +      clocks:
>> +        description: |
>> +          A number of phandles to clocks that need to be enabled while power domain
>> +          switches state.
>> +      pm_qos:
>> +        description: |
>> +          A number of phandles to qos blocks which need to be saved and restored
>> +          while power domain switches state.
>> +
>> +      power-supply: true
>> +
>> +    required:
>> +      - compatible
>> +      - reg
> 
> You need:
> 
>        additionalProperties: false
> 
> (with indentation). Then you will get a bunch of errors as you are 
> missing a level of nodes. 

Hmm, for some reason adding "additionalProperties: false" with indentation,
doesn't give me any error. I'll double check my environment but I might be
something silly.

> The 'power-controller' node doesn't have 
> 'reg' for example. You'll need to use 'patternProperties' with '^pd_'.
> 
> And to describe the nested power domains, you have to describe yet 
> another level. You can do a $ref with something like:
> 
> $ref: '#/properties/power-controller/patternProperties/^pd_'
> 
> That creates a circular reference though and I'm not sure what will 
> happen. :)
> 
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3399-cru.h>
>> +    #include <dt-bindings/power/rk3399-power.h>
>> +
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        qos_iep: qos@ffa98000 {
>> +            compatible = "syscon";
> 
> This will generate a warning now. 'syscon' should not be used alone.
> 

What to do in such cases? I mean the rk3399.dtsi device-tree is like this, so
wrong, should I create a new compatible?

Thanks,
Enric

>> +            reg = <0x0 0xffa98000 0x0 0x20>;
>> +        };
>> +
>> +        qos_rga_r: qos@ffab0000 {
>> +            compatible = "syscon";
>> +            reg = <0x0 0xffab0000 0x0 0x20>;
>> +        };
>> +
>> +        qos_rga_w: qos@ffab0080 {
>> +            compatible = "syscon";
>> +            reg = <0x0 0xffab0080 0x0 0x20>;
>> +        };
>> +
>> +        qos_video_m0: qos@ffab8000 {
>> +            compatible = "syscon";
>> +            reg = <0x0 0xffab8000 0x0 0x20>;
>> +        };
>> +
>> +        qos_video_m1_r: qos@ffac0000 {
>> +            compatible = "syscon";
>> +            reg = <0x0 0xffac0000 0x0 0x20>;
>> +        };
>> +
>> +        qos_video_m1_w: qos@ffac0080 {
>> +            compatible = "syscon";
>> +            reg = <0x0 0xffac0080 0x0 0x20>;
>> +        };
>> +
>> +        power-management@ff310000 {
>> +            compatible = "rockchip,rk3399-pmu", "syscon", "simple-mfd";
>> +            reg = <0x0 0xff310000 0x0 0x1000>;
>> +
>> +            power-controller {
>> +                compatible = "rockchip,rk3399-power-controller";
>> +                #power-domain-cells = <1>;
>> +                #address-cells = <1>;
>> +                #size-cells = <0>;
>> +
>> +                /* These power domains are grouped by VD_CENTER */
>> +                pd_iep@RK3399_PD_IEP {
>> +                    reg = <RK3399_PD_IEP>;
>> +                    clocks = <&cru ACLK_IEP>,
>> +                             <&cru HCLK_IEP>;
>> +                    pm_qos = <&qos_iep>;
>> +                };
>> +                pd_rga@RK3399_PD_RGA {
>> +                    reg = <RK3399_PD_RGA>;
>> +                    clocks = <&cru ACLK_RGA>,
>> +                             <&cru HCLK_RGA>;
>> +                    pm_qos = <&qos_rga_r>,
>> +                             <&qos_rga_w>;
>> +                };
>> +                pd_vcodec@RK3399_PD_VCODEC {
>> +                    reg = <RK3399_PD_VCODEC>;
>> +                    clocks = <&cru ACLK_VCODEC>,
>> +                             <&cru HCLK_VCODEC>;
>> +                    pm_qos = <&qos_video_m0>;
>> +                };
>> +                pd_vdu@RK3399_PD_VDU {
>> +                    reg = <RK3399_PD_VDU>;
>> +                    clocks = <&cru ACLK_VDU>,
>> +                             <&cru HCLK_VDU>;
>> +                    pm_qos = <&qos_video_m1_r>,
>> +                             <&qos_video_m1_w>;
>> +                };
>> +            };
>> +        };
>> +    };
> 
