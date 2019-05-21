From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v4 3/3] platform/chrome: cros_ec_spi: Request the SPI
 thread be realtime
Date: Tue, 21 May 2019 09:50:54 +0200
Message-ID: <74a31886-fa49-cabf-aa11-25b402e80414@collabora.com>
References: <20190515164814.258898-1-dianders@chromium.org>
 <20190515164814.258898-4-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190515164814.258898-4-dianders@chromium.org>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>
Cc: linux-rockchip@lists.infradead.org, drinkcat@chromium.org, Guenter Roeck <groeck@chromium.org>, briannorris@chromium.org, mka@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 15/5/19 18:48, Douglas Anderson wrote:
> All currently known ECs in the wild are very sensitive to timing.
> Specifically the ECs are known to drop a transfer if more than 8 ms
> passes from the assertion of the chip select until the transfer
> finishes.
> 
> Let's use the new feature introduced in the patch (spi: Allow SPI
> devices to request the pumping thread be realtime") to request the SPI
> pumping thread be realtime.  This means that if we get shunted off to
> the SPI thread for whatever reason we won't get downgraded to low
> priority.
> 
> NOTES:
> - We still need to keep ourselves as high priority since the SPI core
>   doesn't guarantee that all transfers end up on the pumping thread
>   (in fact, it tries pretty hard to do them in the calling context).
> - If future Chrome OS ECs ever fix themselves to be less sensitive
>   then we could consider adding a property (or compatible string) to
>   not set this property.  For now we need it across the board.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Guenter Roeck <groeck@chromium.org>

For my own reference:

Acked-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
 Enric

> ---
> 
> Changes in v4: None
> Changes in v3:
> - Updated description and variable name since we no longer force.
> 
> Changes in v2:
> - Renamed variable to "force_rt_transfers".
> 
>  drivers/platform/chrome/cros_ec_spi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
> index 1e38a885c539..daf3119191c8 100644
> --- a/drivers/platform/chrome/cros_ec_spi.c
> +++ b/drivers/platform/chrome/cros_ec_spi.c
> @@ -740,6 +740,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
>  
>  	spi->bits_per_word = 8;
>  	spi->mode = SPI_MODE_0;
> +	spi->rt = true;
>  	err = spi_setup(spi);
>  	if (err < 0)
>  		return err;
> 
