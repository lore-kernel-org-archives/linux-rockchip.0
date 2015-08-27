From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 1/5] DMA: pl330: support burst mode for dev-to-mem and
 mem-to-dev transmit
Date: Thu, 27 Aug 2015 19:05:04 +0800
Message-ID: <55DEEEE0.4060208@rock-chips.com>
References: <1440665280-31557-1-git-send-email-shawn.lin@rock-chips.com>
 <1440665313-31603-1-git-send-email-shawn.lin@rock-chips.com>
 <7170592.bdD8VT9GQ2@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7170592.bdD8VT9GQ2@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Olof Johansson <olofj-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2015/8/27 16:57, Heiko Stuebner wrote:
> Hi Shawn,
>
>
> you're loosing the original author. Your can override the patch-author (away
> from the mail sender) via a "From:" line at the top of the commit message,
> like:
>

Woops.... sorry for missing this bit. Thanks for pointing out that. :)

Patch 1 is from Boojin, and patch 2,3 attribute to Addy(Actually I 
rebase it for linux-next from v3.14). patch 4 and 5 comes from myself.

It will be fixed from the next ones if any.

> ------
> From: Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
>
> This patch adds to support burst mode for dev-to-mem and
> mem-to-dev transmit.
> ...
> ------
>
>
>> This patch adds to support burst mode for dev-to-mem and
>> mem-to-dev transmit.
>>
>> Signed-off-by: Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
>> Signed-off-by: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> cc: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> cc: Olof Johansson <olofj-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
>> Reviewed-and-tested-by: Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>
>> ---
>>
>>   drivers/dma/pl330.c | 18 ++++++++++++------
>>   1 file changed, 12 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
>> index ecab4ea0..0d544d2 100644
>> --- a/drivers/dma/pl330.c
>> +++ b/drivers/dma/pl330.c
>> @@ -1141,10 +1141,13 @@ static inline int _ldst_devtomem(unsigned dry_run,
>> u8 buf[], const struct _xfer_spec *pxs, int cyc)
>>   {
>>   	int off = 0;
>> +	enum pl330_cond cond;
>> +
>> +	cond = (pxs->desc->rqcfg.brst_len == 1) ? SINGLE : BURST;
>>
>>   	while (cyc--) {
>> -		off += _emit_WFP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
>> -		off += _emit_LDP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
>> +		off += _emit_WFP(dry_run, &buf[off], cond, pxs->desc->peri);
>> +		off += _emit_LDP(dry_run, &buf[off], cond, pxs->desc->peri);
>>   		off += _emit_ST(dry_run, &buf[off], ALWAYS);
>>   		off += _emit_FLUSHP(dry_run, &buf[off], pxs->desc->peri);
>>   	}
>> @@ -1156,11 +1159,14 @@ static inline int _ldst_memtodev(unsigned dry_run,
>> u8 buf[], const struct _xfer_spec *pxs, int cyc)
>>   {
>>   	int off = 0;
>> +	enum pl330_cond cond;
>> +
>> +	cond = (pxs->desc->rqcfg.brst_len == 1) ? SINGLE : BURST;
>>
>>   	while (cyc--) {
>> -		off += _emit_WFP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
>> +		off += _emit_WFP(dry_run, &buf[off], cond, pxs->desc->peri);
>>   		off += _emit_LD(dry_run, &buf[off], ALWAYS);
>> -		off += _emit_STP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
>> +		off += _emit_STP(dry_run, &buf[off], cond, pxs->desc->peri);
>>   		off += _emit_FLUSHP(dry_run, &buf[off], pxs->desc->peri);
>>   	}
>>
>> @@ -2557,7 +2563,7 @@ static struct dma_async_tx_descriptor
>> *pl330_prep_dma_cyclic(
>>
>>   		desc->rqtype = direction;
>>   		desc->rqcfg.brst_size = pch->burst_sz;
>> -		desc->rqcfg.brst_len = 1;
>> +		desc->rqcfg.brst_len = pch->burst_len;
>>   		desc->bytes_requested = period_len;
>>   		fill_px(&desc->px, dst, src, period_len);
>>
>> @@ -2702,7 +2708,7 @@ pl330_prep_slave_sg(struct dma_chan *chan, struct
>> scatterlist *sgl, }
>>
>>   		desc->rqcfg.brst_size = pch->burst_sz;
>> -		desc->rqcfg.brst_len = 1;
>> +		desc->rqcfg.brst_len = pch->burst_len;
>>   		desc->rqtype = direction;
>>   		desc->bytes_requested = sg_dma_len(sg);
>>   	}
>
>
>
>


-- 
Best Regards
Shawn Lin
