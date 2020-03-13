From: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Date: Fri, 13 Mar 2020 10:37:43 -0400
Message-ID: <20200313143743.GA92675@ubuntu>
References: <20200313000112.19419-1-npcomplete13@gmail.com>
 <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
 <20200313142005.GA25349@ubuntu>
 <4deb154d-3095-7d18-fbf9-85b60f57765f@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4deb154d-3095-7d18-fbf9-85b60f57765f@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, ezequiel@collabora.com, akash@openedev.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 13, 2020 at 03:29:59PM +0100, Johan Jonker wrote:
> Hi Vivek,
> 
> On 3/13/20 3:20 PM, Vivek Unune wrote:
> > On Fri, Mar 13, 2020 at 09:32:27AM +0100, Johan Jonker wrote:
> >> Hi Vivek,
> >>
> >> The 'power-led' need some changes.
> >>
> >> From leds-gpio.yaml:
> >>
> >> patternProperties:
> >>   # The first form is preferred, but fall back to just 'led' anywhere in the
> >>   # node name to at least catch some child nodes.
> >>   "(^led-[0-9a-f]$|led)":
> >>     type: object
> >>
> >> Test with:
> >> make -k ARCH=arm64 dtbs_check
> >>
> >> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
> >> power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
> >> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> >>
> >> On 3/13/20 1:01 AM, Vivek Unune wrote:
> >>>  - Add Hugsun X99 IR receiver and power led
> >>>  - Remove pwm0 node as it interferes with pwer LED gpio
> >>
> >> pwer => power
> >>
> > 
> > Hi Johan,
> > 
> > I'll fix those in my next version. Here's what I intended to to:
> > 
> 
> > 1. Rename 'power-led' node to 'led-power'
> 
> The first form is preferred.
> Put 'led-power' in a regex tester with ^led-[0-9a-f]$
> https://regex101.com/
> Your regular expression does not match the subject string.
> 
> Test 'led-0'
> Full match
> 

Hi Johan,

Thanks for quick reply. 

Indeed led-power won't work. Although I'm trying to figure out the dtbs_check
Currently, make compains that it's missing.
I'll verify this properly without having you to verify it next time.

Thanks,

Vivek


> >>>  		regulator-max-microvolt = <5000000>;
> >>>  	};
> >>>  
> >>> +	leds {
> >>> +		compatible = "gpio-leds";
> >>> +		pinctrl-names = "default";
> >>> +		pinctrl-0 = <&power_led_gpio>;
> >>> +
> >>> +		power-led {
> >>> +			label = "blue:power";
> >>> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> >>> +			default-state = "on";
> >>> +			linux,default-trigger = "none";
> >>> +		};
> >>> +	};
> >>> +
> 
