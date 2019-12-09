From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
Date: Mon, 9 Dec 2019 13:43:05 +0000
Message-ID: <40f82334-8f89-e2bd-985a-b09f71be20ce@arm.com>
References: <20191209115746.12953-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191209115746.12953-1-smoch@web.de>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>, Lee Jones <lee.jones@linaro.org>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 09/12/2019 11:57 am, Soeren Moch wrote:
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.

This seems preferable to abusing syscore ops, and at least it does allow 
the firmware behaviour to be encapsulated in the DT (and thus more 
easily updated if and when a firmware-based shutdown can be achieved on 
currently-crippled boards) rather than baking assumptions into the 
kernel. And in the meantime, I *would* quite like to be able to power 
down my RK3399 board without having to lean on the button... so I guess,

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   drivers/mfd/rk808.c | 11 ++---------
>   1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index a69a6742ecdc..616e44e7ef98 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
>   	const struct mfd_cell *cells;
>   	int nr_pre_init_regs;
>   	int nr_cells;
> -	int pm_off = 0, msb, lsb;
> +	int msb, lsb;
>   	unsigned char pmic_id_msb, pmic_id_lsb;
>   	int ret;
>   	int i;
> @@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
>   		goto err_irq;
>   	}
> 
> -	pm_off = of_property_read_bool(np,
> -				"rockchip,system-power-controller");
> -	if (pm_off && !pm_power_off) {
> +	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>   		rk808_i2c_client = client;
>   		pm_power_off = rk808->pm_pwroff_fn;
> -	}
> -
> -	if (pm_off && !pm_power_off_prepare) {
> -		if (!rk808_i2c_client)
> -			rk808_i2c_client = client;
>   		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
>   	}
> 
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
