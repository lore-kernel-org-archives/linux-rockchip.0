From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v5 2/3] ARM: rockchip: ensure CPU to enter WFI/WFE state
Date: Tue, 09 Jun 2015 08:40:12 +0800
Message-ID: <557635EC.7040402@rock-chips.com>
References: <1433747496-7642-1-git-send-email-wxt@rock-chips.com> <1433747496-7642-3-git-send-email-wxt@rock-chips.com> <20150608092852.GW7557@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20150608092852.GW7557@n2100.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2015=E5=B9=B406=E6=9C=8808=E6=97=A5 17:28, Russell King - ARM=
 Linux =E5=86=99=E9=81=93:
> On Mon, Jun 08, 2015 at 03:11:35PM +0800, Caesar Wang wrote:
>> diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockch=
ip/platsmp.c
>> index bd40852..5bc2a89 100644
>> --- a/arch/arm/mach-rockchip/platsmp.c
>> +++ b/arch/arm/mach-rockchip/platsmp.c
>> @@ -321,6 +321,9 @@ static void __init rockchip_smp_prepare_cpus(uns=
igned int max_cpus)
>>   #ifdef CONFIG_HOTPLUG_CPU
>>   static int rockchip_cpu_kill(unsigned int cpu)
>>   {
>> +	/* ensure CPU can enter the WFI/WFE state */
> I would like to see a better comment here, describing what the proble=
m
> is.  Maybe something like this:
>
> 	/*
> 	 * We need a delay here to ensure that the dying CPU can finish
> 	 * executing v7_coherency_exit() and reach the WFI/WFE state
> 	 * prior to having the power domain disabled.
> 	 */
>
> Thanks.

OK,
Thanks!
>> +	mdelay(1);
>> +
>>   	pmu_set_power_domain(0 + cpu, false);
>>   	return 1;
>>   }
>> --=20
>> 1.9.1
>>

--=20
Thanks,
- Caesar
