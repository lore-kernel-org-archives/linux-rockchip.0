From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/6=5d_dt-bindings=3a_add_binding_for_Rock?=
 =?UTF-8?B?Y2hpcCBjb21ibyBwaHkgdXNpbmcgYW4gSW5ub3NpbGljb24gSVDjgJDor7fms6g=?=
 =?UTF-8?B?5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5saW49?=
 =?UTF-8?B?cm9jay1jaGlwcy5jb21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
Date: Thu, 16 Jan 2020 08:03:54 +0800
Message-ID: <75a1b9d2-6dff-eaad-dab5-87321a7ca9cd@rock-chips.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986580-71974-2-git-send-email-shawn.lin@rock-chips.com>
 <20200114234323.GA5823@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200114234323.GA5823@bogus>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 2020/1/15 7:43, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 03:22:55PM +0800, Shawn Lin wrote:
>> This IP could supports USB3.0 and PCIe.
>>
>> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>
>> ---
>>
>>   .../bindings/phy/rockchip,inno-combophy.yaml       | 84 ++++++++++++++++++++++
>>   1 file changed, 84 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
> 
> Fails 'make dt_binding_check':
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml:
> ignoring, error in schema: properties: rockchip,combphygrf
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11:
> Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml:
> properties:rockchip,combphygrf: {'items': [{'description': 'The grf for
> COMBPHY configuration and state registers.'}]} is not valid under any of
> the given schemas (Possible causes of the failure):
> 	
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml:
> properties:rockchip,combphygrf: 'description' is a required property
> 

Thanks Rob, will fix them in v2.

> 
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
>> new file mode 100644
>> index 0000000..d647ab3
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
>> @@ -0,0 +1,84 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/rockchip,inno-combophy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip USB3.0/PCI-e combo phy
>> +
>> +maintainers:
>> +        - Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> +        - William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> 2 space indent.
> 
>> +
>> +properties:
>> +  "#phy-cells":
>> +    const: 1
>> +
>> +  compatible:
>> +    enum:
>> +      - rockchip,rk1808-combphy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    items:
>> +      - description: PLL reference clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: refclk
>> +
>> +  resets:
>> +    items:
>> +      - description: OTG unit reset line
>> +      - description: POR unit reset line
>> +      - description: APB interface reset line
>> +      - description: PIPE unit reset line
>> +
>> +  reset-names:
>> +    items:
>> +      - const: otg-rst
>> +      - const: combphy-por
>> +      - const: combphy-apb
>> +      - const: combphy-pipe
>> +
>> +  rockchip,combphygrf:
>> +    items:
>> +      - description: The grf for COMBPHY configuration and state registers.
>> +
>> +required:
>> +  - "#phy-cells"
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - rockchip,combphygrf
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    combphy_grf: syscon@fe018000 {
>> +        compatible = "rockchip,usb3phy-grf", "syscon";
>> +        reg = <0x0 0xfe018000 0x0 0x8000>;
>> +    };
>> +
>> +    combphy: phy@ff380000 {
>> +        compatible = "rockchip,rk1808-combphy";
>> +        reg = <0x0 0xff380000 0x0 0x10000>;
>> +        #phy-cells = <1>;
>> +        clocks = <&cru SCLK_PCIEPHY_REF>;
>> +        clock-names = "refclk";
>> +        assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
>> +        assigned-clock-rates = <25000000>;
>> +        resets = <&cru SRST_USB3_OTG_A>, <&cru SRST_PCIEPHY_POR>,
>> +                 <&cru SRST_PCIEPHY_P>, <&cru SRST_PCIEPHY_PIPE>;
>> +        reset-names = "otg-rst", "combphy-por",
>> +                      "combphy-apb", "combphy-pipe";
>> +        rockchip,combphygrf = <&combphy_grf>;
>> +    };
>> +
>> +...
>> -- 
>> 1.9.1
>>
>>
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
> 
