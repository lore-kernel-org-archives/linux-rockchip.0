From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
Date: Tue, 10 Dec 2019 00:29:21 +0100
Message-ID: <2cf70216-8d98-4122-4f4e-b8254089a017@web.de>
References: <20191209223822.27236-1-smoch@web.de>
 <20191209223822.27236-8-smoch@web.de> <2668270.pdtvSLGib8@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <2668270.pdtvSLGib8@diego>
Content-Language: en-GB
Sender: netdev-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 10.12.19 00:08, Heiko St=C3=BCbner wrote:
> Hi Soeren,
>
> Am Montag, 9. Dezember 2019, 23:38:22 CET schrieb Soeren Moch:
>> RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
>> The BCM4359/9 wifi controller in this module is connected to sdio0,
>> enable this interface.
>>
>> Signed-off-by: Soeren Moch <smoch@web.de>
>> ---
>> Not sure where to place exactly the sdio0 node in the dts because
>> existing sd nodes are not sorted alphabetically.
>>
>> This last patch in this brcmfmac patch series probably should be picke=
d
>> up by Heiko independently of the rest of this series. It was sent toge=
ther
>> to show how this brcmfmac extension for 4359-sdio support with RSDB is=

>> used and tested.
> node placement looks good so I can apply it, just a general questions
> I only got patch 8/8 are patches 1-7 relevant for this one and what are=
 they?
Patches 1-7 are the patches to support the BCM4359 chipset with SDIO
interface in the linux brcmfmac net-wireless driver, see [1].

So this patch series has 2 parts:
patches 1-7: add support for the wifi chipset in the wireless driver,
this has to go through net-wireless
patch 8: enable the wifi module with this chipset on RockPro64, this patc=
h

If this was confusing, what would be the ideal way to post such series?

Thanks,
Soeren

[1] https://patchwork.kernel.org/project/linux-wireless/list/?series=3D21=
3951
>
> Thanks
> Heiko
>
>
>> Cc: Heiko Stuebner <heiko@sntech.de>
>> Cc: Kalle Valo <kvalo@codeaurora.org>
>> Cc: linux-wireless@vger.kernel.org
>> Cc: brcm80211-dev-list.pdl@broadcom.com
>> Cc: brcm80211-dev-list@cypress.com
>> Cc: netdev@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-rockchip@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>> ---
>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++------=
-
>>  1 file changed, 14 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/=
arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> index 7f4b2eba31d4..9fa92790d6e0 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> @@ -71,13 +71,6 @@
>>  		clock-names =3D "ext_clock";
>>  		pinctrl-names =3D "default";
>>  		pinctrl-0 =3D <&wifi_enable_h>;
>> -
>> -		/*
>> -		 * On the module itself this is one of these (depending
>> -		 * on the actual card populated):
>> -		 * - SDIO_RESET_L_WL_REG_ON
>> -		 * - PDN (power down when low)
>> -		 */
>>  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>>  	};
>>
>> @@ -650,6 +643,20 @@
>>  	status =3D "okay";
>>  };
>>
>> +&sdio0 {
>> +	bus-width =3D <4>;
>> +	cap-sd-highspeed;
>> +	cap-sdio-irq;
>> +	disable-wp;
>> +	keep-power-in-suspend;
>> +	mmc-pwrseq =3D <&sdio_pwrseq>;
>> +	non-removable;
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>> +	sd-uhs-sdr104;
>> +	status =3D "okay";
>> +};
>> +
>>  &sdmmc {
>>  	bus-width =3D <4>;
>>  	cap-sd-highspeed;
>> --
>> 2.17.1
>>
>
>
>
