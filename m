From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v5 1/3] ARM: rockchip: fix the CPU soft reset
Date: Tue, 09 Jun 2015 08:43:56 +0800
Message-ID: <557636CC.6010809@rock-chips.com>
References: <1433747496-7642-1-git-send-email-wxt@rock-chips.com> <1433747496-7642-2-git-send-email-wxt@rock-chips.com> <20150608094334.GX7557@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150608094334.GX7557@n2100.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@arm.linux.org.uk>, Heiko Stuebner <heiko@sntech.de>, =?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2015=E5=B9=B406=E6=9C=8808=E6=97=A5 17:43, Russell King - ARM=
 Linux =E5=86=99=E9=81=93:
> On Mon, Jun 08, 2015 at 03:11:34PM +0800, Caesar Wang wrote:
>> diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockch=
ip/platsmp.c
>> index 5b4ca3c..bd40852 100644
>> --- a/arch/arm/mach-rockchip/platsmp.c
>> +++ b/arch/arm/mach-rockchip/platsmp.c
>> @@ -72,6 +72,7 @@ static struct reset_control *rockchip_get_core_res=
et(int cpu)
>>   static int pmu_set_power_domain(int pd, bool on)
>>   {
>>   	u32 val =3D (on) ? 0 : BIT(pd);
>> +	struct reset_control *rstc =3D rockchip_get_core_reset(pd);
>>   	int ret;
>>  =20
>>   	/*
>> @@ -80,20 +81,15 @@ static int pmu_set_power_domain(int pd, bool on)
>>   	 * processor is powered down.
>>   	 */
>>   	if (read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9) {
>> -		struct reset_control *rstc =3D rockchip_get_core_reset(pd);
>> -
>> +		/* We only require the reset on the RK3288 at the moment */
>>   		if (IS_ERR(rstc)) {
>>   			pr_err("%s: could not get reset control for core %d\n",
>>   			       __func__, pd);
>>   			return PTR_ERR(rstc);
>>   		}
>>  =20
>> -		if (on)
>> -			reset_control_deassert(rstc);
>> -		else
>> +		if (!on)
>>   			reset_control_assert(rstc);
>> -
>> -		reset_control_put(rstc);
>>   	}
> Do we need the CPU part number check for the assertion/deassertion of
> the reset control?  Surely the DT provides this where appropriate and
> omits it where it's inappropriate?
>
> If so, I'd separate out the decision whether to error out from the
> decision whether to assert the reset control, like this:
>
> 	if (IS_ERR(rstc) && read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9) {
> 		pr_err("%s: could not get reset control for core %d\n",
> 		       __func__, pd);
> 		return PTR_ERR(rstc);
> 	}
>
> 	if (!IS_ERR(rstc) && !on)
> 		reset_control_assert(rstc);
>
> or maybe:
>
> 	if (IS_ERR(rstc) && PTR_ERR(rstc) !=3D -ENOENT) {
> 		pr_err("%s: could not get reset control for core %d: %d\n",
> 		       __func__, pd, PTR_ERR(rstc));
> 		return PTR_ERR(rstc);
> 	}
>
> 	if (!IS_ERR(rstc) && !on)
> 		reset_control_assert(rstc);
>
> which lets you detect whether of_reset_control_get() failed because t=
he
> reset control was not present (and thus not required) vs failed for s=
ome
> other reason - and this means that the issue of whether the reset
> control is used is entirely up to the supplied DT file.
Sound resonable for me.

I hope get the Heiko and Kever option.
After all the code is uploaded by Heiko and Kever.

>>  =20
>>   	ret =3D regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val);
>> @@ -112,6 +108,12 @@ static int pmu_set_power_domain(int pd, bool on=
)
>>   		}
>>   	}
>>  =20
>> +	if (read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9 && on)
>> +		reset_control_deassert(rstc);
>> +
>> +	if (!IS_ERR(rstc))
>> +		reset_control_put(rstc);
>> +
> and here:
> 	if (!IS_ERR(rstc)) {
> 		if (on)
> 			reset_control_deassert(rstc);
> 		reset_control_put(rstc);
> 	}
Ditto.


--=20
Thanks,
- Caesar
