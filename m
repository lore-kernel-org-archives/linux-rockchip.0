From: Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 1/5] DMA: pl330: support burst mode for dev-to-mem and
 mem-to-dev transmit
Date: Mon, 31 Aug 2015 15:22:59 -0700
Message-ID: <CAPz6YkWOV0fZGF=Ac6WuZV-rAO8gpS8zuuSSpPPHd_-eeJxQ_Q@mail.gmail.com>
References: <1440722176-31588-1-git-send-email-shawn.lin@rock-chips.com>
 <1440722268-31637-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1440722268-31637-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Aug 27, 2015 at 5:37 PM, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> From: Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
>
> This patch adds to support burst mode for dev-to-mem and
> mem-to-dev transmit.
>
> Signed-off-by: Boojin Kim <boojin.kim-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
> Signed-off-by: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> cc: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> cc: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
>
> ---
>
> Changes in v2:
> - amend the author
> - amend Olof's mail address
>
> Changes in v1:
> - rename broken-no-flushp to "arm,pl330-broken-no-flushp" suggested
>   by Krzysztof.
> - add From original author.
> - remove Sunny's tag
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

Reviewed-by: Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
