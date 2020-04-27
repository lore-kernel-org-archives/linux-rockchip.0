From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Mon, 27 Apr 2020 12:08:59 +0200
Message-ID: <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dmurphy-l0cyMroinI0@public.gmane.org, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, jacek.anaszewski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-leds-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 4/27/20 11:17 AM, Chen-Yu Tsai wrote:
> On Mon, Apr 27, 2020 at 4:57 PM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>>
>> Hi Chen-Yu,
>>
>>> From: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>
>>>
>>> With SDIO now enabled, the numbering of the existing MMC host controllers
>>> gets incremented by 1, as the SDIO host is the first one.
>>>
>>> Increment the numbering of the MMC LED triggers to match.
>>>
>>> Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
>>> Signed-off-by: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
>>>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
>>>  2 files changed, 10 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>> index 2acb3d500fb9..f0686fc276be 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>> @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
>>>       };
>>>  };
>>>
>>> +&diy_led {

>>> +     linux,default-trigger = "mmc2";

If you decide to use a free form trigger that is not a 'standard' one,
then it becomes a user property.
User defined properties should not go in a generic dts.
It's up to the user what function he/she gives to that led!

>>> +};
>>> +
>>>  &pcie_phy {
>>>       status = "okay";
>>>  };
>>> @@ -91,3 +95,7 @@ &uart0 {
>>>       pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>>>       status = "okay";
>>>  };
>>> +
>>> +&yellow_led {
>>> +     linux,default-trigger = "mmc1";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>> index 9f225e9c3d54..bc060ac7972d 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>> @@ -70,14 +70,14 @@ work-led {
>>>                       linux,default-trigger = "heartbeat";
>>>               };
>>>
>>
>>> -             diy-led {
>>> +             diy_led: diy-led {
>>
>> This changes an existing nodename into something that is still not the

Correction:
It takes an existing nodename and adds a label.

>> preferred way. In the current Rockchip dts there are nodenames like
>> 'work', 'yellow' that causing warnings with the command:
> 
> This doesn't change the node name at all. It only adds a label.
> If it doesn't pass the check now, it didn't pass the check before.
> 
> I just realized that the footnote I added before is gone because I
> regenerated the patches. The original footnote was something along
> the lines of:
> 
> I opted to not change the node names nor the labels as the discussion
> had not concluded. The other reason being that people may have scripts
> or device tree overlays depending on the existing node names.
> 
> Previously I asked the following but got no response:
> 
>     Is changing this after it has been in some kernel releases OK? Wouldn't
>     it be considered a break of sysfs ABI?
> 
>     Also, is there some guideline on how to name the labels? For sunxi we've
>     been doing "${vendor}:${color}:${function}" since forever.
> 
>     As far as I can tell, the hardware vendor [1] has no specific uses for
>     these two (red and yellow) LEDs designed in. And their GPIO lines are
>     simply labeled "DIY" (for the red one) and "YELLOW". So I'm not sure
>     if putting "our" interpretations and the default-trigger into the
>     label is wise.
> 
>     For reference, the green one has its GPIO line labeled "WORK", and their
>     intention from [1] is to have it as some sort of power / activity indicator.
>     Hence it is named / labeled "work".
> 
>     As for the node names, I think we can keep it as is for now. It's not
>     the preferred form, but there's really no need to change it either.
>     And some overlay or script might actually expect that name.
> 
>> make -k ARCH=arm dtbs_check
>>
>> Could you give a generic guide line/example, so all these changes are
>> treated the same way? As if the naming follows the preferred 'led-0' line.
> 
> I'm not sure what you are asking for.

Your nodename just happend to contain 'led' to pass the regex.
There are many other names in use.
'If' the DT maintainer (=Heiko) decides the get rid of all the warnings
for led nodes then that change would require all nodename to be handled
to same (=preferred way):

Change this:

diy_led: diy-led
yellow_led: yellow-led

Into something like:

led_0: led-0
led_1: led-1

> 
> ChenYu
> 
>>>                       label = "red:diy";
>>>                       gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>>>                       default-state = "off";
>>>                       linux,default-trigger = "mmc1";
>>>               };
>>>
>>> -             yellow-led {
>>> +             yellow_led: yellow-led {
>>>                       label = "yellow:yellow-led";
>>>                       gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>>>                       default-state = "off";
>>> --
>>> 2.26.0
>>
