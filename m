From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: add rk3328 display nodes
Date: Wed, 21 Feb 2018 12:04:11 +0000
Message-ID: <ca7e8c5d-55e3-0dc9-1132-f542cb577693@arm.com>
References: <20180216223817.2821-1-heiko@sntech.de>
 <20180216223817.2821-3-heiko@sntech.de>
 <d2195e38-7ca1-e0b3-240e-0acfe941c572@arm.com> <2712253.IuLOJ454Fc@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2712253.IuLOJ454Fc@phil>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 20/02/18 22:08, Heiko Stuebner wrote:
> Hi Robin,
> 
> Am Dienstag, 20. Februar 2018, 14:14:31 CET schrieb Robin Murphy:
>> On 16/02/18 22:38, Heiko Stuebner wrote:
>>> Add the chain of display nodes from the core display-subsystem
>>> through the one vop to the dw-hdmi output.
>>>
>>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>>> ---
>>>    arch/arm64/boot/dts/rockchip/rk3328.dtsi | 56 ++++++++++++++++++++++++++++++++
>>>    1 file changed, 56 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>> index 1615effcc191..65b7d460a044 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>> @@ -185,6 +185,11 @@
>>>    		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
>>>    	};
>>>    
>>> +	display_subsystem: display-subsystem {
>>> +		compatible = "rockchip,display-subsystem";
>>> +		ports = <&vop_out>;
>>> +	};
>>> +
>>>    	psci {
>>>    		compatible = "arm,psci-1.0", "arm,psci-0.2";
>>>    		method = "smc";
>>> @@ -626,6 +631,28 @@
>>>    		status = "disabled";
>>>    	};
>>>    
>>> +	vop: vop@ff370000 {
>>> +		compatible = "rockchip,rk3328-vop";
>>> +		reg = <0x0 0xff370000 0x0 0x3efc>;
>>> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH 0>;
>>
>> Another of those rogue trailing zero cells has snuck in here.
> 
> Oh great.
> Either they are missing when needed or trailing when not needed :-) .
> 
> 
>> <digression>
>> Unfortunately, even having learned the difference between drm-next and
>> drm-misc-next (thanks for the pointer!) so I could apply this and the
>> other series, I only managed to get it to not-quite-work on the box I'm
>> currently reverse-engineering a mainline DT for (Beelink A1).
>>
>> I've got a monitor connected via HDMI-DVI (which the stock 3.10 Android
>> kernel *does* drive happily) - it appears to be detected, but when the
>> virtual console tries to come up I just see a handful of timeout splats
>> from drm_atomic_helper_wait_for_vblanks() and no signal at the monitor.
>>
>> Any idea where to start debugging? (I'm 99% certain I had your clk/next
>> branch pulled in as well since it looked significant, but I'll
>> double-check tonight)
> 
> I guess first interesting point would be to check if the edid of the monitor
> got read correctly. There are a bunch of funny GRF options related to i2c
> voltages and such that get wiggled on hotplug events and they're not
> really documented at all. (see all the *_5V_* constants in the dw-hdmi).

Cheers, that was indeed a fruitful starting point - EDID wasn't exactly 
the problem, but having decoded the blob dumped out of sysfs to check 
validity it appears the only native resolution mode my ancient Iiyama is 
advertising is 1280x1024@75Hz. That prompted me to go and faff with the 
TV (the only actual HDMI endpoint I own), and sure enough a 'regular' 
1920x1080@60Hz works just fine. So, for patches 1 and 2 (fixed up to 
avoid the DTC warning):

Tested-by: Robin Murphy <robin.murphy@arm.com>

I guess it might just be a case of the VOP and/or HDMI clocks struggling 
to attain an appropriate pixel clock, but the failure mode is really 
non-obvious - if the monitor is plugged in at boot I get 4 or 5 of the 
DRM_WARNs at various points, about 160 VOP interrupts somewhere along 
the line, and HDMI interrupts at a constant rate of around two per 
second; plugging it in after boot, however, just seems to silently do 
nothing (IIRC hotplugging the TV similarly did work as expected). If I 
find the time I might go back and try forcing a 60Hz mode to narrow 
things down a bit more.

Thanks,
Robin.

> In my current setup (with a VS0801H hdmi switch between my boardfarm
> and display) it's reading the monitor edid correctly every time, but I
> remember having lots of issues with getting an actual edid at all.
> I may need to check without the switch if this somehow improves the
> situation in my installation.
> 
> Also, you could give Rockchip's 4.4 vendor kernel a try [0]. I wasn't even
> aware that rk3328 boxes used a 3.10 kernel in the wild :-) . The 4.4 kernel
> was similarly picky with my monitors edid, if I remember correctly.
> 
> Maybe also check your regulators (if any) if they get turned off.
> 
> And finally, for completenes sake, I do have a branch sitting on top of
> lima kernel patches and recent mainline that includes everything and
> does bring up the display [and partial gpu support :-) ] for me at [1].
> 
> 
> Heiko
> 
> [0] https://github.com/rockchip-linux/kernel
> [1] https://github.com/mmind/linux-rockchip/tree/devel/lima-yuq-mali450
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
