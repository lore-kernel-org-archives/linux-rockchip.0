From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Tue, 12 Nov 2019 09:16:38 +0100
Message-ID: <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>, Soeren Moch <smoch@web.de>, heiko@sntech.de
Cc: Mark Rutland <mark.rutland@arm.com>, =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>, linux-kernel@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Hugh Cole-Baker <sigmaris@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, Andy Yan <andyshrk@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Vicente Bergas <vicencb@gmail.com>, Oskari Lemmela <oskari@lemmela.net>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>, Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>, Ezequiel Garcia <ezequiel@collabora.com>, Vivek Unune <npcomplete13@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Kever,

have a rk3399-roc-pc running mainline U-Boot and kernel and vdd_log is 
showing 1118 mV.
Is this a danger for the board?
How to fix it?
Btw. vin-supply for this pwm-regulator is ignored and I could not find it 
in bindings doc. 

Gruß,
-- 
Markus Reichl


Am 12.11.19 um 09:04 schrieb Kever Yang:
> 
> On 2019/11/11 下午4:42, Soeren Moch wrote:
>> On 11.11.19 01:51, Kever Yang wrote:
>>> Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
>>> will be 'enable' with the dts node at a default PWM state with high or low
>>> output. Both too high or too low for vdd_log is not good for the board,
>>> add init voltage for driver to make the regulator get into a know output.
>>>
>>> Note that this will be used by U-Boot for init voltage output, and this
>>> is very important for it may get system hang somewhere during system
>>> boot up with regulator enable and without this init value.
>> I think it's a good idea to include this setting in the main dts for the
>> boards (not in u-boot specific additions as is done now). But there is
>> (for some reason?) no documented binding for regulator-init-microvolt in
>> linux.
> 
> 
> Ohh, I forgot the kernel driver does not support this property.
> 
> @Heiko, can we add this 'regulator-init-microvolt' without driver support but adding document for
> 
> it at dt-binding?
> 
> 
> Thanks,
> 
> - Kever
> 
>>
>> Regards,
>> Soeren
>>> CC: Elaine Zhang <zhangqing@rock-chips.com>
>>> CC: Peter Robinson <pbrobinson@gmail.com>
>>> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
>>> ---
>>>
>>>   arch/arm64/boot/dts/rockchip/rk3399-evb.dts          | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts       | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 1 +
>>>   arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 1 +
>>>   9 files changed, 9 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
>>> index 77008dca45bc..fa241aeb11b0 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
>>> @@ -65,6 +65,7 @@
>>>           regulator-name = "vdd_center";
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           regulator-always-on;
>>>           regulator-boot-on;
>>>           status = "okay";
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
>>> index 92de83dd4dbc..4e45269fcdff 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
>>> @@ -208,6 +208,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <430000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vcc_sys>;
>>>       };
>>>   };
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> index c133e8d64b2a..692f3154edc3 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> @@ -100,6 +100,7 @@
>>>           regulator-name = "vdd_log";
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           regulator-always-on;
>>>           regulator-boot-on;
>>>       };
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
>>> index 4944d78a0a1c..c2ac80d99301 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
>>> @@ -79,6 +79,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vsys_3v3>;
>>>       };
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
>>> index 73be38a53796..c32abcc4ddc1 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
>>> @@ -101,6 +101,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vcc5v0_sys>;
>>>       };
>>>   };
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
>>> index 0541dfce924d..9d674c51f025 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
>>> @@ -164,6 +164,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vcc_sys>;
>>>       };
>>>   };
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>>> index 19f7732d728c..7d856ce1d156 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>>> @@ -129,6 +129,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vcc3v3_sys>;
>>>       };
>>>   };
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>>> index e544deb61d28..8fbccbc8bf47 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>>> @@ -174,6 +174,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1700000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vcc5v0_sys>;
>>>       };
>>>   };
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
>>> index 1bc1579674e5..f8e2cb8c0624 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
>>> @@ -133,6 +133,7 @@
>>>           regulator-boot-on;
>>>           regulator-min-microvolt = <800000>;
>>>           regulator-max-microvolt = <1400000>;
>>> +        regulator-init-microvolt = <950000>;
>>>           vin-supply = <&vcc_sys>;
>>>       };
>>>   };
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
