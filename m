From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
Date: Wed, 11 Dec 2019 16:50:51 +0100
Message-ID: <4b98437b-0d6f-6cc3-b601-f273441db93b@web.de>
References: <20191209223822.27236-1-smoch@web.de> <6162240.GiEx4hqPFh@diego>
 <d0cece6c-9f90-c691-eb68-a25547532f68@web.de> <3170826.NpdqLUR24W@diego>
 <5d3bde69-9102-cc81-c1d2-d71b60258906@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5d3bde69-9102-cc81-c1d2-d71b60258906@web.de>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

re-send as plain text for mailing lists, sorry.

Soeren

On 11.12.19 16:43, Soeren Moch wrote:
>
>
> On 10.12.19 11:13, Heiko St=C3=BCbner wrote:
>> Am Dienstag, 10. Dezember 2019, 11:08:18 CET schrieb Soeren Moch:
>>> Hi Heiko,
>>>
>>> On 10.12.19 02:18, Heiko St=C3=BCbner wrote:
>>>> Hi Soeren,
>>>>
>>>> Am Dienstag, 10. Dezember 2019, 00:29:21 CET schrieb Soeren Moch:
>>>>> On 10.12.19 00:08, Heiko St=C3=BCbner wrote:
>>>>>> Am Montag, 9. Dezember 2019, 23:38:22 CET schrieb Soeren Moch:
>>>>>>> RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
>>>>>>> The BCM4359/9 wifi controller in this module is connected to sdio0=
,
>>>>>>> enable this interface.
>>>>>>>
>>>>>>> Signed-off-by: Soeren Moch <smoch@web.de>
>>>>>>> ---
>>>>>>> Not sure where to place exactly the sdio0 node in the dts because
>>>>>>> existing sd nodes are not sorted alphabetically.
>>>>>>>
>>>>>>> This last patch in this brcmfmac patch series probably should be p=
icked
>>>>>>> up by Heiko independently of the rest of this series. It was sent =
together
>>>>>>> to show how this brcmfmac extension for 4359-sdio support with RSD=
B is
>>>>>>> used and tested.
>>>>>> node placement looks good so I can apply it, just a general questio=
ns
>>>>>> I only got patch 8/8 are patches 1-7 relevant for this one and what=
 are they?
>>>>> Patches 1-7 are the patches to support the BCM4359 chipset with SDIO
>>>>> interface in the linux brcmfmac net-wireless driver, see [1].
>>>>>
>>>>> So this patch series has 2 parts:
>>>>> patches 1-7: add support for the wifi chipset in the wireless driver=
,
>>>>> this has to go through net-wireless
>>>>> patch 8: enable the wifi module with this chipset on RockPro64, this=
 patch
>>>> Thanks for the clarification :-) .
>>>>
>>>> As patch 8 "only" does the core sdio node, it doesn't really depend o=
n the
>>>> earlier ones and you can submit any uart-hooks for bluetooth once the
>>>> other patches land I guess.
>>> The uart part for bluetooth already is in: uart0.
>>> However, I haven't tested if it really works.
>> In the new world there is now also a way to actually hook the bt-uart t=
o
>> the wifi driver without userspace intervention, and you might want to h=
ook
>> up the interrupt as well for sdio?
>>  For example look at the rock960:
> Thanks for the examples.
>> sdio-interrupt: https://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi#n510
> The signal name wifi_host_wake_l suggests that this is an active-low
> wake-up signal, probably used for wake-on-wifi. But in fact this is
> the active-high out-of-band sdio interrupt and can also be used as
> such on RockPro64 when following your example.
> However, with this external interrupt enabled=C2=A0 wifi runs unstable,
> maybe because board designers (probably confused by their own naming
> style) mixed in the PCI-Express-WAKE# signal to route this to the same
> GPIO.
>
> So I want to use the in-band sdio interrupt instead on RockPro64,
> which works perfectly fine.
> ||||
>> uart-magic: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git/tree/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi#n557
> OK, people probably like to see Bluetooth support. I will add it.
>
> Soeren
>> Heiko
>>
>>>>> If this was confusing, what would be the ideal way to post such seri=
es?
>>>> I think every maintainer has some slightly different perspective on t=
his,
>>>> but personally I like getting the whole series to follow the discussi=
on but
>>>> also to just see when the driver-side changes get merged, as the dts-=
parts
>>>> need to wait for that in a lot of cases.
>>> OK, thanks.
>>> I will add you for the whole series when sending a v2.
>>>
>>> Soeren
>>>> Heiko
>>>>
>>>>
>>>>> [1] https://patchwork.kernel.org/project/linux-wireless/list/?series=
=3D213951
>>>>>> Thanks
>>>>>> Heiko
>>>>>>
>>>>>>
>>>>>>> Cc: Heiko Stuebner <heiko@sntech.de>
>>>>>>> Cc: Kalle Valo <kvalo@codeaurora.org>
>>>>>>> Cc: linux-wireless@vger.kernel.org
>>>>>>> Cc: brcm80211-dev-list.pdl@broadcom.com
>>>>>>> Cc: brcm80211-dev-list@cypress.com
>>>>>>> Cc: netdev@vger.kernel.org
>>>>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>>>>> Cc: linux-rockchip@lists.infradead.org
>>>>>>> Cc: linux-kernel@vger.kernel.org
>>>>>>> ---
>>>>>>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++--=
-----
>>>>>>>  1 file changed, 14 insertions(+), 7 deletions(-)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/a=
rch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>>>>>>> index 7f4b2eba31d4..9fa92790d6e0 100644
>>>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>>>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>>>>>>> @@ -71,13 +71,6 @@
>>>>>>>  		clock-names =3D "ext_clock";
>>>>>>>  		pinctrl-names =3D "default";
>>>>>>>  		pinctrl-0 =3D <&wifi_enable_h>;
>>>>>>> -
>>>>>>> -		/*
>>>>>>> -		 * On the module itself this is one of these (depending
>>>>>>> -		 * on the actual card populated):
>>>>>>> -		 * - SDIO_RESET_L_WL_REG_ON
>>>>>>> -		 * - PDN (power down when low)
>>>>>>> -		 */
>>>>>>>  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>>>>>>>  	};
>>>>>>>
>>>>>>> @@ -650,6 +643,20 @@
>>>>>>>  	status =3D "okay";
>>>>>>>  };
>>>>>>>
>>>>>>> +&sdio0 {
>>>>>>> +	bus-width =3D <4>;
>>>>>>> +	cap-sd-highspeed;
>>>>>>> +	cap-sdio-irq;
>>>>>>> +	disable-wp;
>>>>>>> +	keep-power-in-suspend;
>>>>>>> +	mmc-pwrseq =3D <&sdio_pwrseq>;
>>>>>>> +	non-removable;
>>>>>>> +	pinctrl-names =3D "default";
>>>>>>> +	pinctrl-0 =3D <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>>>>>>> +	sd-uhs-sdr104;
>>>>>>> +	status =3D "okay";
>>>>>>> +};
>>>>>>> +
>>>>>>>  &sdmmc {
>>>>>>>  	bus-width =3D <4>;
>>>>>>>  	cap-sd-highspeed;
>>>>>>> --
>>>>>>> 2.17.1
>>>>>>>
>>
>
