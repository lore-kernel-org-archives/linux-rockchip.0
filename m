From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Date: Fri, 13 Mar 2020 15:29:59 +0100
Message-ID: <4deb154d-3095-7d18-fbf9-85b60f57765f@gmail.com>
References: <20200313000112.19419-1-npcomplete13@gmail.com>
 <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
 <20200313142005.GA25349@ubuntu>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200313142005.GA25349@ubuntu>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Vivek,

On 3/13/20 3:20 PM, Vivek Unune wrote:
> On Fri, Mar 13, 2020 at 09:32:27AM +0100, Johan Jonker wrote:
>> Hi Vivek,
>>
>> The 'power-led' need some changes.
>>
>> From leds-gpio.yaml:
>>
>> patternProperties:
>>   # The first form is preferred, but fall back to just 'led' anywhere in the
>>   # node name to at least catch some child nodes.
>>   "(^led-[0-9a-f]$|led)":
>>     type: object
>>
>> Test with:
>> make -k ARCH=arm64 dtbs_check
>>
>> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
>> power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
>>
>> On 3/13/20 1:01 AM, Vivek Unune wrote:
>>>  - Add Hugsun X99 IR receiver and power led
>>>  - Remove pwm0 node as it interferes with pwer LED gpio
>>
>> pwer => power
>>
> 
> Hi Johan,
> 
> I'll fix those in my next version. Here's what I intended to to:
> 

> 1. Rename 'power-led' node to 'led-power'

The first form is preferred.
Put 'led-power' in a regex tester with ^led-[0-9a-f]$
https://regex101.com/
Your regular expression does not match the subject string.

Test 'led-0'
Full match


> 2. Remove 'linux,default-trigger' entirely since this led is always on
> 
> Thanks,
> 
> Vivek 
> 
>>> index d69a613fb65a..df425e164a2e 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> @@ -29,6 +29,26 @@
>>>  		regulator-max-microvolt = <5000000>;
>>>  	};
>>>  
>>> +	leds {
>>> +		compatible = "gpio-leds";
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&power_led_gpio>;
>>> +
>>> +		power-led {
>>> +			label = "blue:power";
>>> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
>>> +			default-state = "on";
>>> +			linux,default-trigger = "none";
>>> +		};
>>> +	};
>>> +
