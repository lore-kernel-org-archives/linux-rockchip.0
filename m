From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: add core devicetree for rk3318
Date: Fri, 17 Apr 2020 12:51:15 +0100
Message-ID: <6d5a1d27-8d32-eca2-007c-aa0bed81af46@arm.com>
References: <20200417105739.3718-1-jbx6244@gmail.com>
 <2141402.AJMLQ3pQEO@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2141402.AJMLQ3pQEO@phil>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-04-17 12:05 pm, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 17. April 2020, 12:57:39 CEST schrieb Johan Jonker:
>> The rk3318 is basically a rk3328 with improved gpu,
>> so add a dtsi based on that.
>>
>> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> Please don't add dangling dtsi files.
> I'd expect at least a board dts to actually use that and
> also the updated gpu node.
> 
>  From a cursory glance it looks like it gets upgraded from
> 450-MP2 to 450MP3 or so, so that would at least mean
> another set of interrupts.

I'm not sure anything's "improved" - as far as the internet can tell 
it's a special low-cost variant of RK3328 for low-end TV box vendors 
that Rockchip don't want to talk about. The DTB for my H96 Max 3318 
shows no appreciable difference from the BSP DT for RK3328, although I 
wouldn't be surprised if some of the unused stuff like the external GMAC 
was actually missing or broken. The board itself is the exact same one 
used in a lot of other cheap RK3328 boxes (and I mean literally, it's 
silkscreened "RK3328_8D4_V1.2").

Thanks to one unexpectedly honest Aliexpress listing I stumbled across, 
the "penta-core GPU" apparently translates from TV-box-marketing-speak 
to mean Mali-450 MP2 (1GP + 2PP) plus the RGA plus the VOP ;)

Robin.

> 
> Heiko
> 
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3318.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3318.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3318.dtsi b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
>> new file mode 100644
>> index 000000000..a32f771bc
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
>> @@ -0,0 +1,3 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +#include "rk3328.dtsi"
>>
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
