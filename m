From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] PM / AVS: rockchip-io: fix the supply naming for the emmc supply on px30
Date: Sun, 23 Feb 2020 16:09:18 +0100
Message-ID: <2116646.O5uUgpsMTn@phil>
References: <20200121222859.4069263-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121222859.4069263-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: khilman@kernel.org
Cc: nm@ti.com, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Dienstag, 21. Januar 2020, 23:28:59 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The supply going to the emmc/flash is named vccio6, not vccio0 and while
> the code does this correctly already, the comments and error output do not.
> 
> So just change these values to the correct ones.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

oh so gently ping on this tiny patch ;-)

Thanks for considering
Heiko

> ---
>  drivers/power/avs/rockchip-io-domain.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/power/avs/rockchip-io-domain.c b/drivers/power/avs/rockchip-io-domain.c
> index 398fc954419e..eece97f97ef8 100644
> --- a/drivers/power/avs/rockchip-io-domain.c
> +++ b/drivers/power/avs/rockchip-io-domain.c
> @@ -152,18 +152,18 @@ static void px30_iodomain_init(struct rockchip_iodomain *iod)
>  	int ret;
>  	u32 val;
>  
> -	/* if no VCCIO0 supply we should leave things alone */
> +	/* if no VCCIO6 supply we should leave things alone */
>  	if (!iod->supplies[PX30_IO_VSEL_VCCIO6_SUPPLY_NUM].reg)
>  		return;
>  
>  	/*
> -	 * set vccio0 iodomain to also use this framework
> +	 * set vccio6 iodomain to also use this framework
>  	 * instead of a special gpio.
>  	 */
>  	val = PX30_IO_VSEL_VCCIO6_SRC | (PX30_IO_VSEL_VCCIO6_SRC << 16);
>  	ret = regmap_write(iod->grf, PX30_IO_VSEL, val);
>  	if (ret < 0)
> -		dev_warn(iod->dev, "couldn't update vccio0 ctrl\n");
> +		dev_warn(iod->dev, "couldn't update vccio6 ctrl\n");
>  }
>  
>  static void rk3288_iodomain_init(struct rockchip_iodomain *iod)
> 
