From: Krzysztof Kozlowski <k.kozlowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH 1/5] DMA: pl330: support burst mode for dev-to-mem and
 mem-to-dev transmit
Date: Thu, 27 Aug 2015 21:57:52 +0900
Message-ID: <CAJKOXPdw+ZZURRPUNvKHdx7wRG7M-Frqmvq46KFM_ckGq8h0Yg@mail.gmail.com>
References: <1440665280-31557-1-git-send-email-shawn.lin@rock-chips.com>
 <1440665313-31603-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1440665313-31603-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Olof Johansson <olofj-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

2015-08-27 17:48 GMT+09:00 Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>:
>
> This patch adds to support burst mode for dev-to-mem and
> mem-to-dev transmit.
>
> Signed-off-by: Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
> Signed-off-by: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> cc: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> cc: Olof Johansson <olofj-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> Reviewed-and-tested-by: Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

For the entire patchset: I would prefer to see someone's
reviewed/tested tag in his response. Sending a version 1 of patchset
(regardless of Boojin Kim's work two years ago) with such tag could
mean anything. I cannot verify it easily (unless digging somewhere...
or asking people). You could add for example: Reviewed-by Santa Claus.
Should I sent a letter to him asking for confirmation? :)

More seriously - reviewed-by is a statement (please look at
Documentation/SubmittingPatches) and you cannot force someone to make
that statement. He must make such statement on his own.

That's all from my side since I don't feel skilled enough to review the code.

Best regards,
Krzysztof

>
> ---
>
>  drivers/dma/pl330.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
> index ecab4ea0..0d544d2 100644
> --- a/drivers/dma/pl330.c
> +++ b/drivers/dma/pl330.c
> @@ -1141,10 +1141,13 @@ static inline int _ldst_devtomem(unsigned dry_run, u8 buf[],
>                 const struct _xfer_spec *pxs, int cyc)
>  {
>         int off = 0;
> +       enum pl330_cond cond;
> +
> +       cond = (pxs->desc->rqcfg.brst_len == 1) ? SINGLE : BURST;
>
>         while (cyc--) {
> -               off += _emit_WFP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
> -               off += _emit_LDP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
> +               off += _emit_WFP(dry_run, &buf[off], cond, pxs->desc->peri);
> +               off += _emit_LDP(dry_run, &buf[off], cond, pxs->desc->peri);
>                 off += _emit_ST(dry_run, &buf[off], ALWAYS);
>                 off += _emit_FLUSHP(dry_run, &buf[off], pxs->desc->peri);
>         }
> @@ -1156,11 +1159,14 @@ static inline int _ldst_memtodev(unsigned dry_run, u8 buf[],
>                 const struct _xfer_spec *pxs, int cyc)
>  {
>         int off = 0;
> +       enum pl330_cond cond;
> +
> +       cond = (pxs->desc->rqcfg.brst_len == 1) ? SINGLE : BURST;
>
>         while (cyc--) {
> -               off += _emit_WFP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
> +               off += _emit_WFP(dry_run, &buf[off], cond, pxs->desc->peri);
>                 off += _emit_LD(dry_run, &buf[off], ALWAYS);
> -               off += _emit_STP(dry_run, &buf[off], SINGLE, pxs->desc->peri);
> +               off += _emit_STP(dry_run, &buf[off], cond, pxs->desc->peri);
>                 off += _emit_FLUSHP(dry_run, &buf[off], pxs->desc->peri);
>         }
>
> @@ -2557,7 +2563,7 @@ static struct dma_async_tx_descriptor *pl330_prep_dma_cyclic(
>
>                 desc->rqtype = direction;
>                 desc->rqcfg.brst_size = pch->burst_sz;
> -               desc->rqcfg.brst_len = 1;
> +               desc->rqcfg.brst_len = pch->burst_len;
>                 desc->bytes_requested = period_len;
>                 fill_px(&desc->px, dst, src, period_len);
>
> @@ -2702,7 +2708,7 @@ pl330_prep_slave_sg(struct dma_chan *chan, struct scatterlist *sgl,
>                 }
>
>                 desc->rqcfg.brst_size = pch->burst_sz;
> -               desc->rqcfg.brst_len = 1;
> +               desc->rqcfg.brst_len = pch->burst_len;
>                 desc->rqtype = direction;
>                 desc->bytes_requested = sg_dma_len(sg);
>         }
> --
> 2.3.7
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe dmaengine" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
