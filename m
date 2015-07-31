From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2 1/2] ARM: rockchip: set correct stabilization thresholds
 in suspend
Date: Fri, 31 Jul 2015 10:57:33 +0800
Message-ID: <55BAE41D.2080707@rock-chips.com>
References: <4610448.RXXf22Qoxl@diego> <1460722.2xOTZfOB49@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1460722.2xOTZfOB49@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?windows-1252?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko

On 07/25/2015 07:09 AM, Heiko St=FCbner wrote:
> Hi Chris,
>
> Am Donnerstag, 23. Juli 2015, 10:29:34 schrieb Heiko St=FCbner:
>> diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
>> index 892bace..04d3028 100644
>> --- a/arch/arm/mach-rockchip/pm.c
>> +++ b/arch/arm/mach-rockchip/pm.c
>> @@ -145,6 +145,10 @@ static void rk3288_slp_mode_set(int level)
>>
>>   		mode_set1 |=3D BIT(PMU_CLR_ALIVE) | BIT(PMU_CLR_BUS) |
>>   			     BIT(PMU_CLR_PERI) | BIT(PMU_CLR_DMA);
>> +
>> +		/* 30ms on a 32kHz clock for osc and pmic stabilization */
>> +		regmap_write(pmu_regmap, RK3288_PMU_OSC_CNT, 32 * 30);
>> +		regmap_write(pmu_regmap, RK3288_PMU_STABL_CNT, 32 * 30);
> The deep suspend mode has two bits handling the 32kHz clock switch (PMU_U=
SE_LF
> and ALIVE_USE_LF). Just for my understanding, are these always supposed t=
o be
> set to the same value or can there be a case when only one of them is set?
If we want to close the 24Mhz osc, these 2 bit must to be set 1;
if 24Mhz still working, we can disable any one of these 2 bit, or =

disable both of them .

> Also when deciding the correct stabilization delays on which of the two a=
re
> these dependant?
>
> I.e. something like
>
>    stabl_cnt =3D PMU_PMU_USE_LF ? 32 : 24000
>    osc_cnt =3D PMU_ALIVE_USE_LF ? 32 : 24000
>
> or are these always to be set similarly?

stabl_cnt is the time of waiting PMIC(RK808) to be stable, so if we hold th=
e GLOBAL_PWROFF pin low,
we do not need wait this time, stabl_cnt =3D 0 is good in this case.
  =

osc_cnt is the time of waiting 24Mhz osc to be stable, so if the 24Mhz osc =
is still working during suspend,
this time could be set to 0.

And these 2 time count is base on PMU_PMU_USE_LF:
stabl_cnt =3D PMU_PMU_USE_LF ? 32 : 24000
osc_cnt =3D PMU_PMU_USE_LF ? 32 : 24000

>
>
> Thanks
> Heiko
>
>
>
