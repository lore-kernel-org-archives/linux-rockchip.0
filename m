From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
Date: Thu, 16 Jan 2020 13:00:55 +0100
Message-ID: <203e9217-9aa8-b65e-4411-2d9b23c1362a@gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <20200114213809.27166-2-jbx6244@gmail.com>
 <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-mmc-owner@vger.kernel.org>
In-Reply-To: <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
Content-Language: en-US
Sender: linux-mmc-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Mark Rutland <mark.rutland@arm.com>, "heiko@sntech.de" <heiko@sntech.de>, linux-mmc <linux-mmc@vger.kernel.org>, devicetree@vger.kernel.org, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

See below.

On 1/15/20 4:18 PM, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>

> [...]
> 
>> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>> new file mode 100644
>> index 000000000..6f85a21d0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>> @@ -0,0 +1,88 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Synopsys Designware Mobile Storage Host Controller Binding

[..]

>> +examples:
>> +  # The MSHC controller node can be split into two portions, SoC specific and
>> +  # board specific portions as listed below.
> 


> This split doesn't work because the examples are built and validated
> now. It may happen to because all the props are optional, but the
> board hunk goes unchecked. So please combine.
> 

Hi,

I have no knowledge about this particular hardware to give a realistic
example. Could someone advise here? Or should I just use the first
example for now?

Thanks

>> +  - |
>> +    dwmmc0@12200000 {
>> +      compatible = "snps,dw-mshc";
>> +      clocks = <&clock 351>, <&clock 132>;
>> +      clock-names = "biu", "ciu";
>> +      reg = <0x12200000 0x1000>;
>> +      interrupts = <0 75 0>;
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      data-addr = <0x200>;
>> +      fifo-watermark-aligned;
>> +      resets = <&rst 20>;
>> +      reset-names = "reset";
>> +    };
>> +  # [board specific internal DMA resources]
>> +  - |
>> +    dwmmc0@12200000 {
>> +      clock-frequency = <400000000>;
>> +      clock-freq-min-max = <400000 200000000>;
>> +      broken-cd;
>> +      fifo-depth = <0x80>;
>> +      card-detect-delay = <200>;
>> +      vmmc-supply = <&buck8>;
>> +      bus-width = <8>;
>> +      cap-mmc-highspeed;
>> +      cap-sd-highspeed;
>> +    };
>> +  # [board specific generic DMA request binding]
>> +  - |
>> +    dwmmc0@12200000 {
>> +      clock-frequency = <400000000>;
>> +      clock-freq-min-max = <400000 200000000>;
>> +      broken-cd;
>> +      fifo-depth = <0x80>;
>> +      card-detect-delay = <200>;
>> +      vmmc-supply = <&buck8>;
>> +      bus-width = <8>;
>> +      cap-mmc-highspeed;
>> +      cap-sd-highspeed;
>> +      dmas = <&pdma 12>;
>> +      dma-names = "rx-tx";
>> +    };
>> --
>> 2.11.0
>>
