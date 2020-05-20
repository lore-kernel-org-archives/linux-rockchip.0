From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 3/5] media: staging: rkisp1: stats: use spin_lock_irqsave
 for irq_lock
Date: Wed, 20 May 2020 21:22:29 +0200
Message-ID: <5c76ffe9-db3e-20a0-f280-75ded6c72e2c@collabora.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-4-dafna.hirschfeld@collabora.com>
 <2d3f52d2-73d7-1e8d-eee3-669012854491@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <2d3f52d2-73d7-1e8d-eee3-669012854491@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org



On 20.05.20 13:11, Helen Koike wrote:
> Hi Dafna,
> 
> On 5/12/20 9:05 AM, Dafna Hirschfeld wrote:
>> Currently 'spin_lock' is used in order to lock the 'irq_lock'.
>> This should be replaced with 'spin_lock_irqsave' since it is
>> used in the irq handler.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-stats.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
>> index 12998db955e6..5578fdeb8a18 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
>> @@ -403,9 +403,10 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
>>   	struct rkisp1_device *rkisp1 = stats->rkisp1;
>>   	struct rkisp1_isp_readout_work *work;
>>   	unsigned int isp_mis_tmp = 0;
>> +	unsigned long flags;
>>   	u32 val;
>>   
>> -	spin_lock(&stats->irq_lock);
>> +	spin_lock_irqsave(&stats->irq_lock, flags);
> 
> Since you are moving this function to a threaded irq handler, you won't be in interrupt context.
> 
> The spin_lock_irqsave() function disable interrupts for the critical section, are you sure this is
> required?
Hi,
The lock is also used in the hard irq handler in the patch that moves the statistics to threaded interrupt.
The code in the hard irq iterates the buffers queue to find the next buffer available and set the flags of
the ready statistics on it.

Thanks,
Dafna

> 
> Regards,
> Helen
> 
>>   
>>   	val = RKISP1_STATS_MEAS_MASK;
>>   	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
>> @@ -435,7 +436,7 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
>>   	}
>>   
>>   unlock:
>> -	spin_unlock(&stats->irq_lock);
>> +	spin_unlock_irqrestore(&stats->irq_lock, flags);
>>   }
>>   
>>   static void rkisp1_init_stats(struct rkisp1_stats *stats)
>>
