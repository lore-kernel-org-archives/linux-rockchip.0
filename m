From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: update cpu opp table for rk3399 op1
Date: Mon, 24 Apr 2017 16:49:08 +0800
Message-ID: <f4c389af-5b1f-9197-0df4-f8407ed8622a@rock-chips.com>
References: <1493014730-9670-1-git-send-email-wxt@rock-chips.com>
 <2250946.xrPjMl5Kf1@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2250946.xrPjMl5Kf1@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, briannorris@chromium.org, dianders@chromium.org
List-Id: linux-rockchip.vger.kernel.org

在 2017年04月24日 16:26, Heiko Stübner 写道:
> Hi Caesar,
>
> Am Montag, 24. April 2017, 14:18:50 CEST schrieb Caesar Wang:
>> Update the cpu opp table for rk3399 op1.
> Ideally this should contain something about the "why".
> Are these new voltage settings safer to operate under?

The before opp table is for earlier batch of rk3399 SoCs,  that's no 
enough for the current and
newer batch of rk3399 op1. In order to suit for the rk3399 op1, we need 
to little voltages changed.

-Caesar

>
> No need to resend, please just clarify the reason.
>
>
> Thanks
> Heiko
>
>> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>> ---
>>
>>   arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi index dd82e16..92bd615
>> 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
>> @@ -52,27 +52,27 @@
>>   		};
>>   		opp01 {
>>   			opp-hz = /bits/ 64 <600000000>;
>> -			opp-microvolt = <800000>;
>> +			opp-microvolt = <825000>;
>>   		};
>>   		opp02 {
>>   			opp-hz = /bits/ 64 <816000000>;
>> -			opp-microvolt = <800000>;
>> +			opp-microvolt = <850000>;
>>   		};
>>   		opp03 {
>>   			opp-hz = /bits/ 64 <1008000000>;
>> -			opp-microvolt = <875000>;
>> +			opp-microvolt = <900000>;
>>   		};
>>   		opp04 {
>>   			opp-hz = /bits/ 64 <1200000000>;
>> -			opp-microvolt = <925000>;
>> +			opp-microvolt = <975000>;
>>   		};
>>   		opp05 {
>>   			opp-hz = /bits/ 64 <1416000000>;
>> -			opp-microvolt = <1050000>;
>> +			opp-microvolt = <1100000>;
>>   		};
>>   		opp06 {
>>   			opp-hz = /bits/ 64 <1512000000>;
>> -			opp-microvolt = <1125000>;
>> +			opp-microvolt = <1150000>;
>>   		};
>>   	};
>
>
>
>
