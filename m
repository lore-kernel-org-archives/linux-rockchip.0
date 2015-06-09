From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v5 1/3] ARM: rockchip: fix the CPU soft reset
Date: Tue, 09 Jun 2015 17:55:40 +0800
Message-ID: <5576B81C.6030904@rock-chips.com>
References: <1433747496-7642-1-git-send-email-wxt@rock-chips.com> <1433747496-7642-2-git-send-email-wxt@rock-chips.com> <20150608092416.GV7557@n2100.arm.linux.org.uk> <55760F0F.9010302@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55760F0F.9010302@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <caesar.wang@rock-chips.com>, Russell King - ARM Linux <linux@arm.linux.org.uk>, dianders@chromium.org
Cc: Heiko Stuebner <heiko@sntech.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2015=E5=B9=B406=E6=9C=8809=E6=97=A5 05:54, Caesar Wang =E5=86=
=99=E9=81=93:
>
>
> =E5=9C=A8 2015=E5=B9=B406=E6=9C=8808=E6=97=A5 17:24, Russell King - A=
RM Linux =E5=86=99=E9=81=93:
>> On Mon, Jun 08, 2015 at 03:11:34PM +0800, Caesar Wang wrote:
>>> We need different orderings when turning a core on and turning a co=
re
>>> off.  In one case we need to assert reset before turning power off.
>>> In ther other case we need to turn power on and the deassert reset.
>>>
>>> In general, the correct flow is:
>>>
>>> CPU off:
>>>      reset_control_assert
>>>      regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), BIT(pd))
>>>      wait_for_power_domain_to_turn_off
>>> CPU on:
>>>      regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), 0)
>>>      wait_for_power_domain_to_turn_on
>>>      reset_control_deassert
>>>
>>> This is needed for stressing CPU up/down, as per:
>>>      cd /sys/devices/system/cpu/
>>>      for i in $(seq 10000); do
>>>          echo "=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D =
$i =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D"
>>>          for j in $(seq 100); do
>>>              while [[ "$(cat cpu1/online)$(cat cpu2/online)$(cat=20
>>> cpu3/online)" !=3D "000"" ]]
>>>                  echo 0 > cpu1/online
>>>                  echo 0 > cpu2/online
>>>                  echo 0 > cpu3/online
>>>              done
>>>              while [[ "$(cat cpu1/online)$(cat cpu2/online)$(cat=20
>>> cpu3/online)" !=3D "111" ]]; do
>>>                  echo 1 > cpu1/online
>>>                  echo 1 > cpu2/online
>>>                  echo 1 > cpu3/online
>>>              done
>>>          done
>>>      done
>>>
>>> The following is reproducile log:
>> "reproducable"
>>
>>>      [34466.186812] PM: noirq suspend of devices complete after=20
>>> 0.669 msecs
>>>      [34466.186824] Disabling non-boot CPUs ...
>>>      [34466.187509] CPU1: shutdown
>>>      [34466.188672] CPU2: shutdown
>>>      [34473.736627] Kernel panic - not syncing:Watchdog detected=20
>>> hard LOCKUP on cpu 0
>>>      .......
>>> or others similar log:
>>>      .......
>>>      [ 4072.454453] CPU1: shutdown
>>>      [ 4072.504436] CPU2: shutdown
>>>      [ 4072.554426] CPU3: shutdown
>>>      [ 4072.577827] CPU1: Booted secondary processor
>>>      [ 4072.582611] CPU2: Booted secondary processor
>>>      [ 4072.587426] CPU3: Booted secondary processor
>>>      <hang>
>>>
>>> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>>> Reviewed-by: Doug Anderson <dianders@chromium.org>
>>>
>>> Changes in v5:
>>>      - back to v2 cpu on/off flow, As Heiko point out in patch v3.
>>>      - delay more time in rockchip_boot_secondary().
>>>      From CPU up/down tests, Needed more time to complete CPU proce=
ss.
>>>      In order to ensure a more, Here that be delayed 1ms.
>>>
>>> Changes in v4:
>>>      - Add reset_control_put(rstc) for the non-error case.
>>>
>>> Changes in v3:
>>>      - FIx the PATCH v2, it doesn't work on chromium 3.14.
>>>
>>> Changes in v2:
>>>      - As Heiko suggestion, re-adjust the cpu on/off flow.
>>>      CPU off:
>>>      reset_control_assert
>>>      regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), BIT(pd))
>>>      wait_for_power_domain_to_turn_off
>>>      CPU on:
>>>      regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), 0)
>>>      wait_for_power_domain_to_turn_on
>>>      reset_control_deassert
>>>
>>> ---
>>>
>>>   arch/arm/mach-rockchip/platsmp.c | 18 ++++++++++--------
>>>   1 file changed, 10 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm/mach-rockchip/platsmp.c=20
>>> b/arch/arm/mach-rockchip/platsmp.c
>>> index 5b4ca3c..bd40852 100644
>>> --- a/arch/arm/mach-rockchip/platsmp.c
>>> +++ b/arch/arm/mach-rockchip/platsmp.c
>>> @@ -72,6 +72,7 @@ static struct reset_control=20
>>> *rockchip_get_core_reset(int cpu)
>>>   static int pmu_set_power_domain(int pd, bool on)
>>>   {
>>>       u32 val =3D (on) ? 0 : BIT(pd);
>>> +    struct reset_control *rstc =3D rockchip_get_core_reset(pd);
>>>       int ret;
>>>         /*
>>> @@ -80,20 +81,15 @@ static int pmu_set_power_domain(int pd, bool on=
)
>>>        * processor is powered down.
>>>        */
>>>       if (read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9) {
>>> -        struct reset_control *rstc =3D rockchip_get_core_reset(pd)=
;
>>> -
>>> +        /* We only require the reset on the RK3288 at the moment *=
/
>>>           if (IS_ERR(rstc)) {
>>>               pr_err("%s: could not get reset control for core %d\n=
",
>>>                      __func__, pd);
>>>               return PTR_ERR(rstc);
>>>           }
>>>   -        if (on)
>>> -            reset_control_deassert(rstc);
>>> -        else
>>> +        if (!on)
>>>               reset_control_assert(rstc);
>>> -
>>> -        reset_control_put(rstc);
>>>       }
>>>         ret =3D regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val=
);
>>> @@ -112,6 +108,12 @@ static int pmu_set_power_domain(int pd, bool o=
n)
>>>           }
>>>       }
>>>   +    if (read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9 && on)
>>> +        reset_control_deassert(rstc);
>>> +
>>> +    if (!IS_ERR(rstc))
>>> +        reset_control_put(rstc);
>>> +
>>>       return 0;
>>>   }
>>>   @@ -148,7 +150,7 @@ static int __cpuinit=20
>>> rockchip_boot_secondary(unsigned int cpu,
>>>            * sram_base_addr + 4: 0xdeadbeaf
>>>            * sram_base_addr + 8: start address for pc
>>>            * */
>>> -        udelay(10);
>>> +        mdelay(1);
>> The reason for this delay needs a comment, as it's not obvious why y=
ou
>> would need to delay before writing to the SRAM.  Also documenting in
>> a comment why the delay is necessary would be good.
>>
>
> Sorry for delay, I wait a better solution for this.
> We don't need any 10us delay or 1m delay, I think.
>
> -        udelay(10);
>
> +        while (readl(sram_base_addr + 4 ) !=3D 1); //lock =3D1
>
>
> We need do that if i'm correct from the bootrom code.
> Tested are pass over 120000 cycles on today, I will wait more testing=
=20
> cycles to confirm that's ok.
>

Please forget it!

It's helpful that be caused by adding a log.:-(

>
>

--=20
Thanks,
- Caesar
