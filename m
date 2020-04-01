From: Jacek Anaszewski <jacek.anaszewski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Wed, 1 Apr 2020 22:05:53 +0200
Message-ID: <13d459df-114d-3657-0b97-712c3143fe3c@gmail.com>
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
 <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
 <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ccf35a92-7005-9c6d-a8a2-c17b714a60bc-5wv7dgnIgG8@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, pavel-+ZI9xUNit7I@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 3/31/20 1:07 PM, Robin Murphy wrote:
> [ +cc LED binding maintainers]
> 
> On 2020-03-29 5:36 pm, Chen-Yu Tsai wrote:
>> On Fri, Mar 27, 2020 at 5:58 PM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>>>
>>> Hi Chen-Yu Tsai,
>>>
>>> The led node names need some changes.
>>> 'linux,default-trigger' value does not fit.
>>>
>>>  From leds-gpio.yaml:
>>>
>>> patternProperties:
>>>    # The first form is preferred, but fall back to just 'led'
>>> anywhere in the
>>>    # node name to at least catch some child nodes.
>>>    "(^led-[0-9a-f]$|led)":
>>>      type: object
>>>
>>> Rename led nodenames to 'led-0' form
>>>
>>> Also include all mail lists found with:
>>> ./scripts/get_maintainer.pl --nogit-fallback --nogit
>>>
>>> devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>
>> Oops...
>>
>>> If you like change the rest of dts with leds as well...
>>>
>>>    DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
>>>    CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
>>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
>>> yellow-led:linux,default-trigger:0: 'mmc0' is not one of ['backlight',
>>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer',
>>> 'pattern']
>>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
>>> diy-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
>>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer',
>>> 'pattern']
>>>    DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
>>>    CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
>>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
>>> diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
>>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer',
>>> 'pattern']
>>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
>>> yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
>>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer',
>>> 'pattern']
>>
>> Maybe we should just get rid of linux,default-trigger then?
> 
> In this particular case, I'd say it's probably time to reevaluate the
> rather out-of-date binding. The apparent intent of the
> "linux,default-trigger" property seems to be to describe any trigger
> supported by Linux, so either the binding wants to be kept in sync with
> all the triggers Linux actually supports, or perhaps it should just be
> redefined as a free-form string. FWIW I'd be slightly inclined towards
> the latter, since the schema validator can't know whether the given
> trigger actually corresponds to the correct thing for whatever the LED

I agree. It is possible for LED class drivers to register their private
triggers, so generic bindings cannot use predefined set for validation.

I think that Rob just blindly converted common.txt to yaml and I acked
that but didn't envisage the implications for validation.
All in all, even that list in common.txt didn't include all existing
generic LED triggers.

Best regards,
Jacek Anaszewski

> is physically labelled on the board/case, nor whether the version(s) of
> Linux that people intend to use actually support that trigger (since it
> doesn't have to be the version contemporary with the schema definition),
> so strict validation of this particular property seems to be of limited
> value.
> 
> Robin.
> 
>>
>> Heiko?
>>
>> ChenYu
>>
>>> make -k ARCH=arm64 dtbs_check
>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
>>>
>>>> From: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>
>>>>
>>>> With SDIO now enabled, the numbering of the existing MMC host
>>>> controllers
>>>> gets incremented by 1, as the SDIO host is the first one.
>>>>
>>>> Increment the numbering of the MMC LED triggers to match.
>>>>
>>>> Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0
>>>> on rk3399-roc-pc-mezzanine")
>>>> Signed-off-by: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>
>>>> ---
>>>>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
>>>>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
>>>>   2 files changed, 10 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git
>>>> a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>>> b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>>> index 2acb3d500fb9..f0686fc276be 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>>> @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
>>>>        };
>>>>   };
>>>>
>>>> +&diy_led {
>>>> +     linux,default-trigger = "mmc2";
>>>> +};
>>>> +
>>>>   &pcie_phy {
>>>>        status = "okay";
>>>>   };
>>>> @@ -91,3 +95,7 @@ &uart0 {
>>>>        pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>>>>        status = "okay";
>>>>   };
>>>> +
>>>> +&yellow_led {
>>>> +     linux,default-trigger = "mmc1";
>>>> +};
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>>> b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>>> index 9f225e9c3d54..bc060ac7972d 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>>> @@ -70,14 +70,14 @@ work-led {
>>>>                        linux,default-trigger = "heartbeat";
>>>>                };
>>>>
>>>> -             diy-led {
>>>> +             diy_led: diy-led {
>>>>                        label = "red:diy";
>>>>                        gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>>>>                        default-state = "off";
>>>>                        linux,default-trigger = "mmc1";
>>>>                };
>>>>
>>>> -             yellow-led {
>>>> +             yellow_led: yellow-led {
>>>>                        label = "yellow:yellow-led";
>>>>                        gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>>>>                        default-state = "off";
>>>> -- 
>>>> 2.25.1
>>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
