From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add more cpu operating points for
 RK3328
Date: Fri, 1 Mar 2019 19:33:51 +0000
Message-ID: <AM3PR03MB0966D92B504944D7C6D06123AC760@AM3PR03MB0966.eurprd03.prod.outlook.com>
References: <20190301175452.6701-1-papadakospan@gmail.com>
 <29290155.VRdV4K0DQe@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <29290155.VRdV4K0DQe@phil>
Content-Language: en-US
Content-ID: <6AAA4A575883D94AAE258BFF29544F0A-yI6K9L9iJZCcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-03-01 19:24, Heiko Stuebner wrote:
> Hi,
>
> Am Freitag, 1. M=E4rz 2019, 18:54:53 CET schrieb Leonidas P. Papadakos:
>> This allows for greater max frequency on rk3328 boards,
>> increasing performance.
>>
>> It has been included in Armbian (a linux distibution for ARM boards)
>> for a while now without any reported issues
>>
>> https://github.com/armbian/build/blob/master/patch/kernel/rockchip64-def=
ault/enable-1392mhz-opp.patch
>> https://github.com/armbian/build/blob/master/patch/kernel/rockchip64-def=
ault/enable-1512mhz-opp.patch
>>
>> Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>> Signed-off-by: Leonidas P. Papadakos <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3328.dtsi
>> index 84f14b132..18caef3c3 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -123,6 +123,20 @@
>>  			opp-microvolt =3D <1300000>;
>>  			clock-latency-ns =3D <40000>;
>>  		};
>> +		opp-1392000000 {
>> +			opp-hz =3D /bits/ 64 <1392000000>;
>> +			opp-microvolt =3D <1350000 1350000 1350000>;
>> +			opp-microvolt-L0 =3D <1350000 1350000 1350000>;
>> +			opp-microvolt-L1 =3D <1325000 1325000 1325000>;
> I checked Rockchip's productpage and the chip really seems to be
> rated up to 1.5GHz, but you should get rid of opp-microvolt-Lx
> options as these are still vendor-specific regarding the leakage
> handling.

The datasheet at [1] lists Max CPU frequency of A53 as 1.4 Ghz in Table 3-2=
 Recommended operating condition,
is there a newer datasheet that lists 1.5 Ghz as recommended max?

[1] http://opensource.rock-chips.com/images/d/d7/Rockchip_RK3328_Datasheet_=
V1.1-20170309.pdf

Regards,
Jonas

>
> While on it, when all microvolt elements are the same, using the
> absolute value instead of "preferred min max" saves a bit of space
> similar to the other OPPs in the file.
>
> Thanks
> Heiko
>
>> +			clock-latency-ns =3D <40000>;
>> +		};
>> +		opp-1512000000 {
>> +			opp-hz =3D /bits/ 64 <1512000000>;
>> +			opp-microvolt =3D <1450000 1450000 1450000>;
>> +			opp-microvolt-L0 =3D <1450000 1450000 1450000>;
>> +			opp-microvolt-L1 =3D <1425000 1425000 1425000>;
>> +			clock-latency-ns =3D <40000>;
>> +		};
>>  	};
>>  =

>>  	amba {
>>
>
