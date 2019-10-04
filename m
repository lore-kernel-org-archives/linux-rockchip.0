From: Soeren Moch <smoch@web.de>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
Date: Fri, 4 Oct 2019 18:39:09 +0200
Message-ID: <a5b7caab-ffde-30e0-88bc-53a53748701a@web.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On 04.10.19 16:20, Robin Murphy wrote:
> On 04/10/2019 04:39, Soeren Moch wrote:
>>
>>
>> On 04.10.19 04:13, Shawn Lin wrote:
>>> On 2019/10/4 8:53, Soeren Moch wrote:
>>>>
>>>>
>>>> On 04.10.19 02:01, Robin Murphy wrote:
>>>>> On 2019-10-03 10:50 pm, Soeren Moch wrote:
>>>>>> According to the RockPro64 schematic [1] the rk3399 sdmmc
>>>>>> controller is
>>>>>> connected to a microSD (TF card) slot, which cannot be switched to
>>>>>> 1.8V.
>>>>>
>>>>> Really? AFAICS the SDMMC0 wiring looks pretty much identical to the
>>>>> NanoPC-T4 schematic (it's the same reference design, after all),
>>>>> and I
>>>>> know that board can happily drive a UHS-I microSD card with 1.8v
>>>>> I/Os,
>>>>> because mine's doing so right now.
>>>>>
>>>>> Robin.
>>>> OK, the RockPro64 does not allow a card reset (power cycle) since
>>>> VCC3V0_SD is directly connected to VCC3V3_SYS (via R89555), the
>>>> SDMMC0_PWH_H signal is not connected. So the card fails to identify
>>>> itself after suspend or reboot when switched to 1.8V operation.
>
> Ah, thanks for clarifying - I did overlook the subtlety that U12 and
> friends have "NC" as alternative part numbers, even though they aren't
> actually marked as DNP. So it's still not so much "cannot be switched"
> as "switching can lead to other problems".
Agreed. I should have been more precise about this in the commit message.

Soeren
>
>>>
>>> I believe we addressed this issue long time ago, please check:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/?id=3D6a11fc47f175c8d87018e89cb58e2d36c66534cb
>>>
>>>
>> Thanks for the pointer.
>> In this case I guess I should use following patch instead:
>>
>> --- rk3399-rockpro64.dts.bak =C2=A0=C2=A0 2019-10-03 22:14:00.067745799=
 +0200
>> +++ rk3399-rockpro64.dts=C2=A0=C2=A0=C2=A0 2019-10-04 00:02:50.04789236=
6 +0200
>> @@ -619,6 +619,8 @@
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 max-frequency =3D <150000000>;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-names =3D "default";
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pinctrl-0 =3D <&sdmmc_clk &sdmmc_cmd &sd=
mmc_bus4>;
>> +=C2=A0=C2=A0=C2=A0 sd-uhs-sdr104;
>> +=C2=A0=C2=A0=C2=A0 vqmmc-supply =3D <&vcc_sdio>;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 status =3D "okay";
>> =C2=A0=C2=A0};
>> =C2=A0 When I do so, the sd card is detected as SDR104, but a reboot ha=
ngs:
>>
>> Boot1: 2018-06-26, version: 1.14
>> CPUId =3D 0x0
>> ChipType =3D 0x10, 286
>> Spi_ChipId =3D c84018
>> no find rkpartition
>> SpiBootInit:ffffffff
>> mmc: ERROR: SDHCI ERR:cmd:0x102,stat:0x18000
>> mmc: ERROR: Card did not respond to voltage select!
>> emmc reinit
>> mmc: ERROR: SDHCI ERR:cmd:0x102,stat:0x18000
>> mmc: ERROR: Card did not respond to voltage select!
>> emmc reinit
>> mmc: ERROR: SDHCI ERR:cmd:0x102,stat:0x18000
>> mmc: ERROR: Card did not respond to voltage select!
>> SdmmcInit=3D2 1
>> mmc0:cmd5,32
>> mmc0:cmd7,32
>> mmc0:cmd5,32
>> mmc0:cmd7,32
>> mmc0:cmd5,32
>> mmc0:cmd7,32
>> SdmmcInit=3D0 1
>>
>> So I guess I should use a different miniloader for this reboot to work!=
?
>> Or what else could be wrong here?
>
> Hmm, I guess this is "the Tinkerboard problem" again - the patch above
> would be OK if we could get as far as the kernel, but can't help if
> the offending card is itself the boot medium. There was a proposal here:
>
> https://patchwork.kernel.org/patch/10817217/
>
> although I'm not sure what if any progress has been made since then.
>
> Robin.
