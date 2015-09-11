From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 2/2] ARM: dts: support Highspeed for rk3066a platform
Date: Sat, 12 Sep 2015 07:44:37 +0800
Message-ID: <55F36765.2040703@rock-chips.com>
References: <1441956268-10418-1-git-send-email-shawn.lin@rock-chips.com>
 <1441956341-10623-1-git-send-email-shawn.lin@rock-chips.com>
 <25757012.mQz0HMffNZ@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <25757012.mQz0HMffNZ@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

=E5=9C=A8 2015/9/12 6:45, Heiko St=C3=BCbner =E5=86=99=E9=81=93:
> Hi Shawn,
>
> Am Freitag, 11. September 2015, 15:25:41 schrieb Shawn Lin:
>> Add cap-sd-highspeed and cap-mmc-highspeed for rk3066a
>> platform to make sd cards running faster.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>>   arch/arm/boot/dts/rk3066a.dtsi | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk30=
66a.dtsi
>> index 946f187..b50a785 100644
>> --- a/arch/arm/boot/dts/rk3066a.dtsi
>> +++ b/arch/arm/boot/dts/rk3066a.dtsi
>> @@ -595,6 +595,8 @@
>>   &mmc0 {
>>   	pinctrl-names =3D "default";
>>   	pinctrl-0 =3D <&sd0_clk &sd0_cmd &sd0_cd &sd0_bus4>;
>> +	cap-mmc-highspeed;
>> +	cap-sd-highspeed;
>>   };
>>
>
> Currently we're setting the dw_mmc capabilities in the individual boa=
rd files
> and patch1 also correctly adds the cap to the radxarock file.
>

Thanks, Heiko. :)

Right, I was condering add caps in rk3066a for all boards which include=
=20
it or for each individual board. Unfortunately, I chose the wrong one.:=
(


Done in the v2.

> So I'd think we should stay with one scheme and probably add the rk30=
66 caps
> to the bqcurie2, marsboard and rayeager where applicable.
>
>
> Heiko
>
>
>


--=20
Best Regards
Shawn Lin
