From: Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH RESEND] dmaengine: pl330: Fix data race on TX transferred
 bytes reporting
Date: Sun, 14 May 2017 17:51:58 +0530
Message-ID: <20170514122158.GG6263@localhost>
References: <20170302125710.14483-1-romain.perier@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20170302125710.14483-1-romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Romain Perier <romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Mar 02, 2017 at 01:57:10PM +0100, Romain Perier wrote:
> When a transfer completes there is a small window between the descriptor
> being unset as the current active one in the thread and it being marked
> as done. This causes the residue to be incorrectly set and the
> corresponding size to be wrongly reported when pl330_tx_status is run in
> that window. This can be reproduced in different ways, the main we have
> found is with audio playback when the system load is high. When the
> residue goes up during a transfer, it makes the audio ringbuffer wrapped
> around and thus does a sudden jump forward. It can also be detected by
> sudden sound disruptions.
> 
> This bug was partially solved by commit a40235a2278a ("dmaengine: pl330:
> Acquire dmac's spinlock in pl330_tx_status"), as it reduces the window
> where it can happen, but the issue still exists.

IIUC, the fix is not to drop the lock and sadly the log talks about the
issue but not the fix. The patch is supposed to also describe the changes


> 
> This patch is a re-worked version of the one wrote by Sjoerd Simons
> https://patchwork.kernel.org/patch/7568251.
> 
> Original-author: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
> Signed-off-by: Romain Perier <romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

Please see Documentation/process/submitting-patches.rst

The patch author is still the original author and not you..

> ---
> 
> Note: Due to an email configuration issue, some of my patches were not
> received on infradead.org or vger.kernel.org. It is now fixed, so I
> resend this patch for this reason.

And somehow this slipped, don't know if it was delivered, but somehow was
pending in patchworks (yaaay) so I pulled from that

> 
>  drivers/dma/pl330.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
> index 740bbb9..4046737 100644
> --- a/drivers/dma/pl330.c
> +++ b/drivers/dma/pl330.c
> @@ -1640,6 +1640,7 @@ static int pl330_update(struct pl330_dmac *pl330)
>  
>  			/* Detach the req */
>  			descdone = thrd->req[active].desc;
> +			descdone->status = DONE;
>  			thrd->req[active].desc = NULL;
>  
>  			thrd->req_running = -1;
> @@ -1654,9 +1655,18 @@ static int pl330_update(struct pl330_dmac *pl330)
>  
>  	/* Now that we are in no hurry, do the callbacks */
>  	list_for_each_entry_safe(descdone, tmp, &pl330->req_done, rqd) {
> +		struct dma_pl330_chan *pch;
> +
>  		list_del(&descdone->rqd);
> +
>  		spin_unlock_irqrestore(&pl330->lock, flags);
> -		dma_pl330_rqcb(descdone, PL330_ERR_NONE);
> +		pch = descdone->pchan;
> +		/* If desc aborted */
> +		if (!pch) {
> +			spin_lock_irqsave(&pl330->lock, flags);
> +			continue;
> +		}
> +		tasklet_schedule(&pch->task);
>  		spin_lock_irqsave(&pl330->lock, flags);
>  	}
>  
> -- 
> 2.9.3
> 

-- 
~Vinod
