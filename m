From: Emil Renner Berthing <kernel-sKpHZLTYfq0@public.gmane.org>
Subject: Re: [PATCH v2 3/3] spi: rockchip: Fix error in SPI slave pio read
Date: Wed, 22 Jul 2020 14:11:03 +0200
Message-ID: <CANBLGczKsvrOb-AnB3MGi2RJOuFDoSY=S8enLtJZVAV2baGUgg@mail.gmail.com>
References: <20200722083737.8820-1-jon.lin@rock-chips.com> <20200722083737.8820-3-jon.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200722083737.8820-3-jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-spi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 22 Jul 2020 at 10:38, Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>
> The RXFLR is possible larger than rx_left in Rockchip SPI, fix it.
>
> Signed-off-by: Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Reviewed-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

In addition to my review and test you should probably also add
Fixes: 01b59ce5dac8 ("spi: rockchip: use irq rather than polling")
..so this will be picked up in the stable trees

/Emil

> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index a451dacab5cf..75a8a9428ff8 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -291,7 +291,7 @@ static void rockchip_spi_pio_writer(struct rockchip_spi *rs)
>  static void rockchip_spi_pio_reader(struct rockchip_spi *rs)
>  {
>         u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
> -       u32 rx_left = rs->rx_left - words;
> +       u32 rx_left = (rs->rx_left > words) ? rs->rx_left - words : 0;
>
>         /* the hardware doesn't allow us to change fifo threshold
>          * level while spi is enabled, so instead make sure to leave
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
