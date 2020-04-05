From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Date: Sun, 5 Apr 2020 15:42:48 +0200
Message-ID: <c5072f74-695f-0554-ab3f-bd5155c356b2@gmail.com>
References: <20200404102730.3295-1-jbx6244@gmail.com>
 <20200405130621.252578e8@archlinux>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200405130621.252578e8@archlinux>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Jonathan Cameron <jic23@kernel.org>
Cc: knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, heiko@sntech.de, robh+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jonathan,

Originally I just followed 'rk3288.dtsi' till I saw someone posting a
patch with only 'arm-gic.h' included that made me to have a closer look
at it.
Due to the #ifndef construction it doesn't rise any warnings I think.
Apply the version that fits best.

Kind regards,

Johan Jonker



#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
#define _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
[..]
#endif

Something else...
With 2 examples it gives a warning that 2 identical defines are used.
Yaml doesn't separately compile the examples. Must use the same SoC.

This doesn't work. One example for rk3288 and one for rk3399.
examples:
  - |
    #include <dt-bindings/clock/rk3288-cru.h>
    #include <dt-bindings/interrupt-controller/arm-gic.h>
[..]
  - |
    #include <dt-bindings/clock/rk3399-cru.h>
    #include <dt-bindings/interrupt-controller/arm-gic.h>
[..]

From 'rk3288.dtsi':

> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>
> #include <dt-bindings/gpio/gpio.h>
> #include <dt-bindings/interrupt-controller/irq.h>
> #include <dt-bindings/interrupt-controller/arm-gic.h>
> #include <dt-bindings/pinctrl/rockchip.h>
> #include <dt-bindings/clock/rk3288-cru.h>
> #include <dt-bindings/power/rk3288-power.h>
> #include <dt-bindings/thermal/thermal.h>
> #include <dt-bindings/power/rk3288-power.h>
> #include <dt-bindings/soc/rockchip,boot-mode.h>
>
> / {
> 	#address-cells = <2>;
> 	#size-cells = <2>;
>
> 	compatible = "rockchip,rk3288";

[..]

On 4/5/20 2:06 PM, Jonathan Cameron wrote:
> On Sat,  4 Apr 2020 12:27:28 +0200
> Johan Jonker <jbx6244@gmail.com> wrote:
>
>> Current dts files with 'saradc' nodes are manually verified.
>> In order to automate this process rockchip-saradc.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> Hi Johan
>
> As I'd already applied these I'd have preferred a fix patch and I'm
not actually
> sure it's really worth making the change.  I don't think we have any rules
> about minimal includes or anything in DT bindings.  Was there an error or
> warning as a result of this?
>
> Still as I hadn't pushed out as non rebasing yet I've picked this
version up
> and dropped the previous.
>
> Thanks,
>
> Jonathan
>
>> ---
>> Changes v2:
>>   Add reviewed by
>>   Fix irq.h already included in arm-gic.h
>> ---
>>  .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
>>  .../bindings/iio/adc/rockchip-saradc.yaml          | 78
++++++++++++++++++++++
>>  2 files changed, 78 insertions(+), 37 deletions(-)
>>  delete mode 100644
Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
>>  create mode 100644
Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
>>
>> diff --git
a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
>> deleted file mode 100644
>> index c2c50b598..000000000
>> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt

[..]

>> diff --git
a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
>> new file mode 100644
>> index 000000000..9b9882323
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
>> @@ -0,0 +1,78 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/rockchip-saradc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#

[..]

>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3288-cru.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    saradc: saradc@2006c000 {
>> +      compatible = "rockchip,saradc";
>> +      reg = <0x2006c000 0x100>;
>> +      interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
>> +      clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
>> +      clock-names = "saradc", "apb_pclk";
>> +      resets = <&cru SRST_SARADC>;
>> +      reset-names = "saradc-apb";
>> +      vref-supply = <&vcc18>;
>> +      #io-channel-cells = <1>;
>> +    };
>
