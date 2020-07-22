From: Emil Renner Berthing <emil.renner.berthing-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 1/3] spi: rockchip: Config spi rx dma burst size depend
 on xfer length
Date: Wed, 22 Jul 2020 14:08:43 +0200
Message-ID: <CANBLGcxZ+ps5TNzrHNHyjUZvSTrVQOHaqvB5H3tZVOow5z0aLQ@mail.gmail.com>
References: <20200722083737.8820-1-jon.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200722083737.8820-1-jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-spi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 22 Jul 2020 at 10:41, Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>
> The burst length can be adjusted according to the transmission
> length to improve the transmission rate
>
> Signed-off-by: Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

For the whole series you can add
Reviewed-by: Emil Renner Berthing <kernel-sKpHZLTYfq0@public.gmane.org>
Tested-by: Emil Renner Berthing <kernel-sKpHZLTYfq0@public.gmane.org>

> ---
>  drivers/spi/spi-rockchip.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 9b8a5e1233c0..63593a5b87fa 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -384,6 +384,19 @@ static void rockchip_spi_dma_txcb(void *data)
>         spi_finalize_current_transfer(ctlr);
>  }
>
> +static u32 rockchip_spi_calc_burst_size(u32 data_len)
> +{
> +       u32 i;
> +
> +       /* burst size: 1, 2, 4, 8 */
> +       for (i = 1; i < 8; i <<= 1) {
> +               if (data_len & i)
> +                       break;
> +       }
> +
> +       return i;
> +}
> +
>  static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
>                 struct spi_controller *ctlr, struct spi_transfer *xfer)
>  {
> @@ -397,7 +410,8 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
>                         .direction = DMA_DEV_TO_MEM,
>                         .src_addr = rs->dma_addr_rx,
>                         .src_addr_width = rs->n_bytes,
> -                       .src_maxburst = 1,
> +                       .src_maxburst = rockchip_spi_calc_burst_size(xfer->len /
> +                                                                    rs->n_bytes),
>                 };
>
>                 dmaengine_slave_config(ctlr->dma_rx, &rxconf);
> @@ -525,7 +539,8 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>                 writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
>
>         writel_relaxed(rs->fifo_len / 2, rs->regs + ROCKCHIP_SPI_DMATDLR);
> -       writel_relaxed(0, rs->regs + ROCKCHIP_SPI_DMARDLR);
> +       writel_relaxed(rockchip_spi_calc_burst_size(xfer->len / rs->n_bytes) - 1,
> +                      rs->regs + ROCKCHIP_SPI_DMARDLR);
>         writel_relaxed(dmacr, rs->regs + ROCKCHIP_SPI_DMACR);
>
>         /* the hardware only supports an even clock divisor, so
> --
> 2.17.1
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
