From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: split rk3399-rockpro64 for v2 and
 v2.1 boards
Date: Thu, 28 Nov 2019 14:24:37 +0900
Message-ID: <0e187cef-c263-cb04-325c-43968fa77047@katsuster.net>
References: <20191126165529.30703-1-katsuhiro@katsuster.net>
 <CA+E=qVcqu7OJayOdrEXRaWYW1JBhJKk7dPDTEJtCD-hDAKohxg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CA+E=qVcqu7OJayOdrEXRaWYW1JBhJKk7dPDTEJtCD-hDAKohxg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, arm-linux <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Vasily,

On 2019/11/27 11:24, Vasily Khoruzhick wrote:
> On Tue, Nov 26, 2019 at 8:55 AM Katsuhiro Suzuki
> <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
> 
> Hi Katsuhiro,
> 
>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>> v2.1 boards.
> 
> Thanks for the patch!
> 
>> Both v2 and v2.1 boards can use almost same settings but we find a
>> difference in I2C address of audio CODEC ES8136.
> 
> I'd prefer to avoid moving and renaming dts files since it can cause a
> mess if you don't upgrade your bootloader.
> 
> Can we use existing rk3399-rockpro64.dts for v2.1 (and change model
> name accordingly) and introduce new dts for v2.0?
> 

OK, so rk3399-rockpro64.dts always follows the newest board version
(currently for v2.1) and v2.1.dts will be split out if more newer
board is released from Pine64.

I'll re-post a patch.

Best Regards,
Katsuhiro Suzuki


> Regards,
> Vasily
> 
> 
>> Reported-by: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |  3 +-
>>   .../dts/rockchip/rk3399-rockpro64-v2.1.dts    | 30 +++++++++++++++++++
>>   .../boot/dts/rockchip/rk3399-rockpro64-v2.dts | 30 +++++++++++++++++++
>>   ...99-rockpro64.dts => rk3399-rockpro64.dtsi} | 18 -----------
>>   4 files changed, 62 insertions(+), 19 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>>   rename arch/arm64/boot/dts/rockchip/{rk3399-rockpro64.dts => rk3399-rockpro64.dtsi} (97%)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index 48fb631d5451..3debaeb517fd 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.1.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>> new file mode 100644
>> index 000000000000..9450207bedad
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>> @@ -0,0 +1,30 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
>> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
>> + */
>> +
>> +/dts-v1/;
>> +#include "rk3399-rockpro64.dtsi"
>> +
>> +/ {
>> +       model = "Pine64 RockPro64 v2.1";
>> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
>> +};
>> +
>> +&i2c1 {
>> +       es8316: codec@11 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x11>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>> +};
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>> new file mode 100644
>> index 000000000000..7bd37eaa1d57
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>> @@ -0,0 +1,30 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
>> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
>> + */
>> +
>> +/dts-v1/;
>> +#include "rk3399-rockpro64.dtsi"
>> +
>> +/ {
>> +       model = "Pine64 RockPro64 v2";
>> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
>> +};
>> +
>> +&i2c1 {
>> +       es8316: codec@10 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x10>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>> +};
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> similarity index 97%
>> rename from arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> rename to arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> index 7f4b2eba31d4..183eda4ffb9c 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> @@ -4,16 +4,12 @@
>>    * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>
>>    */
>>
>> -/dts-v1/;
>>   #include <dt-bindings/input/linux-event-codes.h>
>>   #include <dt-bindings/pwm/pwm.h>
>>   #include "rk3399.dtsi"
>>   #include "rk3399-opp.dtsi"
>>
>>   / {
>> -       model = "Pine64 RockPro64";
>> -       compatible = "pine64,rockpro64", "rockchip,rk3399";
>> -
>>          chosen {
>>                  stdout-path = "serial2:1500000n8";
>>          };
>> @@ -476,20 +472,6 @@ &i2c1 {
>>          i2c-scl-rising-time-ns = <300>;
>>          i2c-scl-falling-time-ns = <15>;
>>          status = "okay";
>> -
>> -       es8316: codec@11 {
>> -               compatible = "everest,es8316";
>> -               reg = <0x11>;
>> -               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> -               clock-names = "mclk";
>> -               #sound-dai-cells = <0>;
>> -
>> -               port {
>> -                       es8316_p0_0: endpoint {
>> -                               remote-endpoint = <&i2s1_p0_0>;
>> -                       };
>> -               };
>> -       };
>>   };
>>
>>   &i2c3 {
>> --
>> 2.24.0
>>
> 
