From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
Date: Mon, 09 Dec 2019 13:32:38 +0100
Message-ID: <6655566.N6zq5d2jo2@diego>
References: <20191209115746.12953-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191209115746.12953-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 9. Dezember 2019, 12:57:46 CET schrieb Soeren Moch:
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.
> 
> Signed-off-by: Soeren Moch <smoch@web.de>

Sounds very sensible
Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/mfd/rk808.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index a69a6742ecdc..616e44e7ef98 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
>  	const struct mfd_cell *cells;
>  	int nr_pre_init_regs;
>  	int nr_cells;
> -	int pm_off = 0, msb, lsb;
> +	int msb, lsb;
>  	unsigned char pmic_id_msb, pmic_id_lsb;
>  	int ret;
>  	int i;
> @@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
>  		goto err_irq;
>  	}
> 
> -	pm_off = of_property_read_bool(np,
> -				"rockchip,system-power-controller");
> -	if (pm_off && !pm_power_off) {
> +	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>  		rk808_i2c_client = client;
>  		pm_power_off = rk808->pm_pwroff_fn;
> -	}
> -
> -	if (pm_off && !pm_power_off_prepare) {
> -		if (!rk808_i2c_client)
> -			rk808_i2c_client = client;
>  		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
>  	}
> 
> --
> 2.17.1
> 
