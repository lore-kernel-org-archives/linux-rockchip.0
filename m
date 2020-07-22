From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v1 3/3] spi: rockchip: Fix error in SPI slave pio read
Date: Wed, 22 Jul 2020 09:58:54 +0200
Message-ID: <1605191.QXBl1gRHXa@diego>
References: <20200722065257.17943-1-jon.lin@rock-chips.com> <20200722065257.17943-3-jon.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200722065257.17943-3-jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-spi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jon,

Am Mittwoch, 22. Juli 2020, 08:52:57 CEST schrieb Jon Lin:
> The RXFLR is possible larger than rx_left in Rockchip SPI, fix it.
> 
> Signed-off-by: Jon Lin <jon.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index a451dacab5cf..1f5e613b67d9 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -291,7 +291,7 @@ static void rockchip_spi_pio_writer(struct rockchip_spi *rs)
>  static void rockchip_spi_pio_reader(struct rockchip_spi *rs)
>  {
>  	u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
> -	u32 rx_left = rs->rx_left - words;
> +	u32 rx_left = rs->rx_left > words ? rs->rx_left - words : 0;

I guess for future readability of the code braces might be nice, like

	u32 rx_left = (rs->rx_left > words) ? rs->rx_left - words : 0;

But I stumbled onto (and fixed similarly) that issue yesterday as well, so

Reviewed-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>


Heiko
