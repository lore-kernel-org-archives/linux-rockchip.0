From: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v5 2/3] iio: adc: rockchip_saradc: better prefix for
 channel constant
Date: Sat, 25 Apr 2020 20:29:32 +0100
Message-ID: <20200425202932.364ae11e@archlinux>
References: <20200419100207.58108-1-heiko@sntech.de>
        <20200419100207.58108-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200419100207.58108-2-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: knaack.h-Mmb7MZpHnFY@public.gmane.org, lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org, pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sun, 19 Apr 2020 12:02:06 +0200
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:

> From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> 
> As suggested give the current ADC_CHANNEL constant a distinct
> and consistent prefix.
> 
> Suggested-by: Peter Meerwald-Stadler <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Good change. I'll pick up once the rest of the series is ready.

Jonathan

> ---
> changes in v5:
> - new patch
> 
>  drivers/iio/adc/rockchip_saradc.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 270eb7e83823..29d7f6e4057e 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -118,7 +118,7 @@ static const struct iio_info rockchip_saradc_iio_info = {
>  	.read_raw = rockchip_saradc_read_raw,
>  };
>  
> -#define ADC_CHANNEL(_index, _id) {				\
> +#define SARADC_CHANNEL(_index, _id) {				\
>  	.type = IIO_VOLTAGE,					\
>  	.indexed = 1,						\
>  	.channel = _index,					\
> @@ -128,9 +128,9 @@ static const struct iio_info rockchip_saradc_iio_info = {
>  }
>  
>  static const struct iio_chan_spec rockchip_saradc_iio_channels[] = {
> -	ADC_CHANNEL(0, "adc0"),
> -	ADC_CHANNEL(1, "adc1"),
> -	ADC_CHANNEL(2, "adc2"),
> +	SARADC_CHANNEL(0, "adc0"),
> +	SARADC_CHANNEL(1, "adc1"),
> +	SARADC_CHANNEL(2, "adc2"),
>  };
>  
>  static const struct rockchip_saradc_data saradc_data = {
> @@ -141,8 +141,8 @@ static const struct rockchip_saradc_data saradc_data = {
>  };
>  
>  static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[] = {
> -	ADC_CHANNEL(0, "adc0"),
> -	ADC_CHANNEL(1, "adc1"),
> +	SARADC_CHANNEL(0, "adc0"),
> +	SARADC_CHANNEL(1, "adc1"),
>  };
>  
>  static const struct rockchip_saradc_data rk3066_tsadc_data = {
> @@ -153,12 +153,12 @@ static const struct rockchip_saradc_data rk3066_tsadc_data = {
>  };
>  
>  static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels[] = {
> -	ADC_CHANNEL(0, "adc0"),
> -	ADC_CHANNEL(1, "adc1"),
> -	ADC_CHANNEL(2, "adc2"),
> -	ADC_CHANNEL(3, "adc3"),
> -	ADC_CHANNEL(4, "adc4"),
> -	ADC_CHANNEL(5, "adc5"),
> +	SARADC_CHANNEL(0, "adc0"),
> +	SARADC_CHANNEL(1, "adc1"),
> +	SARADC_CHANNEL(2, "adc2"),
> +	SARADC_CHANNEL(3, "adc3"),
> +	SARADC_CHANNEL(4, "adc4"),
> +	SARADC_CHANNEL(5, "adc5"),
>  };
>  
>  static const struct rockchip_saradc_data rk3399_saradc_data = {
