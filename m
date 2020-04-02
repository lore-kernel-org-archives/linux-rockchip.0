From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
Date: Thu, 2 Apr 2020 11:42:57 -0300
Message-ID: <9ed2142a-bd22-fbb6-cd65-7d727751400e@collabora.com>
References: <20200402000234.226466-2-helen.koike@collabora.com>
 <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: dafna.hirschfeld@collabora.com, devel@driverdev.osuosl.org, devicetree@vger.kernel.org, ezequiel@collabora.com, heiko@sntech.de, hverkuil-cisco@xs4all.nl, karthik.poduval@gmail.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh+dt@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

On 4/2/20 9:16 AM, Johan Jonker wrote:
> Hi Helen,
> 
>> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> %YAML 1.2
>> ---
>> $id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
>> $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
>> title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
>>
>> maintainers:
>>   - Helen Koike <helen.koike@collabora.com>
>>   - Ezequiel Garcia <ezequiel@collabora.com>
>>
>> description: |
>>   The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
>>   the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
>>
>> properties:
>>   compatible:
>>     const: rockchip,rk3399-mipi-dphy-rx0
>>
> 
>>   reg:
>>     maxItems: 1
> 
> If 'reg' is not used => remove it.

ok, I'll add a patch removing it.

Thanks,
Helen

> 
>>
>>   clocks:
>>     items:
>>       - description: MIPI D-PHY ref clock
>>       - description: MIPI D-PHY RX0 cfg clock
>>       - description: Video in/out general register file clock
>>
>>   clock-names:
>>     items:
>>       - const: dphy-ref
>>       - const: dphy-cfg
>>       - const: grf
>>
>>   '#phy-cells':
>>     const: 0
>>
>>   power-domains:
>>     description: Video in/out power domain.
>>     maxItems: 1
>>
>> required:
>>   - compatible
>>   - clocks
>>   - clock-names
>>   - '#phy-cells'
>>   - power-domains
>>
>> additionalProperties: false
>>
>> examples:
>>   - |
>>
>>     /*
>>      * MIPI D-PHY RX0 use registers in "general register files", it
>>      * should be a child of the GRF.
>>      *
>>      * grf: syscon@ff770000 {
>>      *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
>>      *  ...
>>      * };
>>      */
>>
>>     #include <dt-bindings/clock/rk3399-cru.h>
>>     #include <dt-bindings/power/rk3399-power.h>
>>
>>     mipi_dphy_rx0: mipi-dphy-rx0 {
>>         compatible = "rockchip,rk3399-mipi-dphy-rx0";
>>         clocks = <&cru SCLK_MIPIDPHY_REF>,
>>                  <&cru SCLK_DPHY_RX0_CFG>,
>>                  <&cru PCLK_VIO_GRF>;
>>         clock-names = "dphy-ref", "dphy-cfg", "grf";
>>         power-domains = <&power RK3399_PD_VIO>;
>>         #phy-cells = <0>;
>>     };
