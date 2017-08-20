From: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 031/102] iio: adc: rockchip_saradc: explicitly request
 exclusive reset control
Date: Sun, 20 Aug 2017 12:09:02 +0100
Message-ID: <20170820120902.72557043@archlinux>
References: <20170719152646.25903-1-p.zabel@pengutronix.de>
        <20170719152646.25903-32-p.zabel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170719152646.25903-32-p.zabel@pengutronix.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Heiko Stuebner <heiko@sntech.de>, linux-iio@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 19 Jul 2017 17:25:35 +0200
Philipp Zabel <p.zabel@pengutronix.de> wrote:

> Commit a53e35db70d1 ("reset: Ensure drivers are explicit when requesting
> reset lines") started to transition the reset control request API calls
> to explicitly state whether the driver needs exclusive or shared reset
> control behavior. Convert all drivers requesting exclusive resets to the
> explicit API call so the temporary transition helpers can be removed.
> 
> No functional changes.
> 
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Hartmut Knaack <knaack.h@gmx.de>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-iio@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan
> ---
>  drivers/iio/adc/rockchip_saradc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index ae6d3324f5183..1d9300ba07c00 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -235,7 +235,8 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	 * The reset should be an optional property, as it should work
>  	 * with old devicetrees as well
>  	 */
> -	info->reset = devm_reset_control_get(&pdev->dev, "saradc-apb");
> +	info->reset = devm_reset_control_get_exclusive(&pdev->dev,
> +						       "saradc-apb");
>  	if (IS_ERR(info->reset)) {
>  		ret = PTR_ERR(info->reset);
>  		if (ret != -ENOENT)
