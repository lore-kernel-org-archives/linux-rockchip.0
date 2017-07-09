From: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: add NULL check on
 of_match_device() return value
Date: Sun, 9 Jul 2017 19:10:07 +0100
Message-ID: <20170709191007.5d79c950@kernel.org>
References: <20170707065131.GA23382@embeddedgus>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170707065131.GA23382@embeddedgus>
Sender: linux-kernel-owner@vger.kernel.org
To: "Gustavo A. R. Silva" <garsilva@embeddedor.com>
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Heiko Stuebner <heiko@sntech.de>, linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 7 Jul 2017 01:51:31 -0500
"Gustavo A. R. Silva" <garsilva@embeddedor.com> wrote:

> Check return value from call to of_match_device()
> in order to prevent a NULL pointer dereference.
> 
> In case of NULL print error message and return -ENODEV
> 
> Signed-off-by: Gustavo A. R. Silva <garsilva@embeddedor.com>
Applied.

Thanks,

Jonathan
> ---
>  drivers/iio/adc/rockchip_saradc.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index ae6d332..2bf2ed1 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -224,6 +224,11 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	info = iio_priv(indio_dev);
>  
>  	match = of_match_device(rockchip_saradc_match, &pdev->dev);
> +	if (!match) {
> +		dev_err(&pdev->dev, "failed to match device\n");
> +		return -ENODEV;
> +	}
> +
>  	info->data = match->data;
>  
>  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
