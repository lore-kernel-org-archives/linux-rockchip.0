From: John Garry <john.garry@huawei.com>
Subject: Re: Failed to boot ARM64 boards for recent linux-next
Date: Tue, 20 Mar 2018 15:52:04 +0000
Message-ID: <cbc89d68-ba41-1f6a-4ab2-4c9647b48f75@huawei.com>
References: <dae4b3b8-3da4-4a86-ac4a-0631802fa546@rock-chips.com>
 <077cecdd-7982-dd33-454f-e38cc571366c@arm.com>
 <9cff515e-fcb9-a1c0-329b-a18c3bed0071@rock-chips.com>
 <fe56e7e3-50dd-88de-ce61-f3cbcc1f572b@rock-chips.com>
 <5AB0DEB2.4000803@rock-chips.com>
 <e603186e-b9e8-c7d5-b98a-f5bcce94f7d5@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <e603186e-b9e8-c7d5-b98a-f5bcce94f7d5@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Marc Zyngier <marc.zyngier@arm.com>, JeffyChen <jeffy.chen@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On 20/03/2018 13:34, Marc Zyngier wrote:
> On 20/03/18 10:13, JeffyChen wrote:
>> Hi Shawn,
>>
>> On 03/20/2018 05:39 PM, Shawn Lin wrote:
>>>
>>>
>>> Also another patch warns a lot when booting the kernel. Is there
>>> anything else I could do to let it go? Seems I am using broken
>>> dts for requesting IRQ_TYPE_NONE there?
>>
>> could be:
>> https://github.com/torvalds/linux/blob/master/drivers/irqchip/irq-gic-v3.c#L1145
>>
>> 		struct irq_fwspec ppi_fwspec = {
>> 			.fwnode		= gic_data.fwnode,
>> 			.param_count	= 3,
>> 			.param		= {
>> 				[0]	= 1,
>> 				[1]	= i,
>> 				[2]	= IRQ_TYPE_NONE, <--
>> 			},
>> 		};
>>
>> 		irq = irq_create_fwspec_mapping(&ppi_fwspec);
>
> Probably is. Caught at my own game, fun! ;-)
>
> Turning that NONE into LEVEL will work, as there is no known PPIs
> configured as edge (specially in a partitioned system), but the general
> case isn't pretty. I'll queue a workaround for now, and will look at
> addressing the more general issue.
>

JFYI, reverting the original patch mentioned by Shawn resolved the boot 
hang I was seeing on my Huawei D03. My D05 was fine without the revert.

Thanks,
John

> Thanks,
>
> 	M.
>
