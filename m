From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: Failed to boot ARM64 boards for recent linux-next
Date: Tue, 20 Mar 2018 17:32:50 +0800
Message-ID: <9cff515e-fcb9-a1c0-329b-a18c3bed0071@rock-chips.com>
References: <dae4b3b8-3da4-4a86-ac4a-0631802fa546@rock-chips.com>
 <077cecdd-7982-dd33-454f-e38cc571366c@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <077cecdd-7982-dd33-454f-e38cc571366c-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Marc,

On 2018/3/20 17:01, Marc Zyngier wrote:
> Hi Shawn,
> 
> On 20/03/18 08:48, Shawn Lin wrote:
>> Hi Marc,
>>
>>       I was able to boot my RK3399 board with in linux-next-20180314,
>> but not today. My bisect robot shows me it was introduced by
>>
>> commit d6062a6d62c643a06c393745d032da3e6441d4bd
>> Author: Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>
>> Date:   Fri Mar 9 14:53:19 2018 +0000
>>
>>       irqchip/gic-v3: Reset APgRn registers at boot time
>>
>>       Booting a crash kernel while in an interrupt handler is likely
>>       to leave the Active Priority Registers with some state that
>>       is not relevant to the new kernel, and is likely to lead
>>       to erratic behaviours such as interrupts not firing as their
>>       priority is already active.
>>
>>       As a sanity measure, wipe the APRs clean on startup. We make
>>       sure to wipe both group 0 and 1 registers in order to avoid
>>       any surprise.
>>
>>
>> The panic log is here:
>> https://paste.ubuntu.com/p/7WrJJDG6JQ/
>>
>> Is it a known issue or is there a coming patch for that?
> 
>   Interesting. No, that wasn't the intention, but I may have missed a key
> detail (group 0 access traps to EL3 if SCR_EL3.FIQ==1). Can you have a
> go at the following hack, just to narrow it down:
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 5bb7bb22f1c1..f8ff43b1d4f8 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -570,16 +570,12 @@ static void gic_cpu_sys_reg_init(void)
>   	switch(val + 1) {
>   	case 8:
>   	case 7:
> -		write_gicreg(0, ICC_AP0R3_EL1);
>   		write_gicreg(0, ICC_AP1R3_EL1);
> -		write_gicreg(0, ICC_AP0R2_EL1);
>   		write_gicreg(0, ICC_AP1R2_EL1);
>   	case 6:
> -		write_gicreg(0, ICC_AP0R1_EL1);
>   		write_gicreg(0, ICC_AP1R1_EL1);
>   	case 5:
>   	case 4:
> -		write_gicreg(0, ICC_AP0R0_EL1);
>   		write_gicreg(0, ICC_AP1R0_EL1);
>   	}
> 
> Let me know if that helps.
> 

It works for me. Thanks!

> Thanks,
> 
> 	M.
> 
