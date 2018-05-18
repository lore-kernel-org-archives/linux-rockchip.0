From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [RFC PATCH] irqchip/gic-v3: Try to distribute irq affinity to the
 less distributed CPU
Date: Sat, 19 May 2018 07:35:55 +0800
Message-ID: <009df4aa-5db0-1d30-fb32-c93012271ab8@rock-chips.com>
References: <1526636866-209210-1-git-send-email-shawn.lin@rock-chips.com>
 <9e5f6b5e-1200-8c12-a5d0-5412142fb615@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <9e5f6b5e-1200-8c12-a5d0-5412142fb615-5wv7dgnIgG8@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Marc,

On 2018/5/18 18:05, Marc Zyngier wrote:
> Hi Shawn,
> 
> On 18/05/18 10:47, Shawn Lin wrote:
>> gic-v3 seems only suppot distribute hwirq to one CPU in dispite of
>> setting it via /proc/irq/*/smp_affinity.
>>
>> My RK3399 platform has 6 CPUs and I was trying to bind the emmc
>> irq, whose hwirq is 43 and virq is 30, to all cores
>>
>> echo 3f > /proc/irq/30/smp_affinity
>>
>> but the I/O test still shows the irq was fired to CPU0. For really
>> user case, we may try to distribute different hwirqs to different cores,
>> with the hope of distributing to a less irq-binded core as possible.
>> Otherwise, as current implementation, gic-v3 always distribute it
>> to the first masked cpu, which is what cpumask_any_and actually did in
>> practice now on my platform.
> 
> That's because GICv3 cannot broadcast the interrupt to all CPUs, and has
> to pick one.
> 

yep, that's what I got from the GIC-V3 TRM. Btw, IIRC, gic-400(belonging
to GIC-V2) on RK3288 platform could support broadcast interrupts to all
CPUs, so I was a bit surprised to know GIC-V3 cannot do it, as v3 sounds
should be more powerful than v2 instinctively. :)))

>>
>> So I was thinking to record how much hwirqs are distributed to each
>> core and try to pick up the least used one.
>>
>> This patch is rather rough with slightly test on my board. Just for
>> asking advice from wisdom of your. :)
> 
> My advice is not to do this in the kernel. Why don't you run something
> like irqbalance? It will watch the interrupt usage and place move
> interrupts around.

I will take a look at how irqbalance work in practice. Thanks
for your advice.


> 
> Thanks,
> 
> 	M.
> 


-- 
Best Regards
Shawn Lin
