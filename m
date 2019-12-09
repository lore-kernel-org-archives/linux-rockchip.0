From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFCv1 2/8] mfd: rk808: use syscore for RK805 PMIC shutdown
Date: Mon, 9 Dec 2019 13:34:09 +0000
Message-ID: <f1327196-66c9-d152-c0ca-914d43d6f55e@arm.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <20191206184536.2507-3-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191206184536.2507-3-linux.amoon@gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 06/12/2019 6:45 pm, Anand Moon wrote:
> Use common syscore_shutdown for RK805 PMIC to do
> clean I2C shutdown, drop the unused pm_pwroff_prep_fn
> and pm_pwroff_fn function pointers.

Coincidentally, I've also been looking at RK805 for the sake of trying 
to get suspend to behave on my RK3328 box, and I've ended up with some 
slightly different cleanup patches - I'll tidy them up and post them for 
comparison as soon as I can.

> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>   drivers/mfd/rk808.c | 33 +++++++++++++++++----------------
>   1 file changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index e637f5bcc8bb..713d989064ba 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -467,16 +467,6 @@ static void rk808_update_bits(unsigned int reg, unsigned int mask,
>   			"can't write to register 0x%x: %x!\n", reg, ret);
>   }
>   
> -static void rk805_device_shutdown(void)
> -{
> -	rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
> -}
> -
> -static void rk805_device_shutdown_prepare(void)
> -{
> -	rk808_update_bits(RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SHUTDOWN_FUN);
> -}
> -
>   static void rk808_device_shutdown(void)
>   {
>   	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
> @@ -491,10 +481,23 @@ static void rk8xx_syscore_shutdown(void)
>   {
>   	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
>   
> -	if (system_state == SYSTEM_POWER_OFF &&
> -	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
> -		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
> -				SLPPIN_DN_FUN);
> +	if (system_state == SYSTEM_POWER_OFF) {
> +		dev_info(&rk808_i2c_client->dev, "System Shutdown Event\n");
> +
> +		switch (rk808->variant) {
> +		case RK805_ID:
> +			rk808_update_bits(RK805_GPIO_IO_POL_REG,
> +					SLP_SD_MSK, SHUTDOWN_FUN);
> +			rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);

Why this change? Shutdown via the SLEEP pin is working just fine on my 
box :/

Robin.

> +			break;
> +		case RK809_ID:
> +		case RK817_ID:
> +			rk808_update_bits(RK817_SYS_CFG(3),
> +					RK817_SLPPIN_FUNC_MSK, SLPPIN_DN_FUN);
> +			break;
> +		default:
> +			break;
> +		}
>   	}
>   }
>   
> @@ -565,8 +568,6 @@ static int rk808_probe(struct i2c_client *client,
>   		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
>   		cells = rk805s;
>   		nr_cells = ARRAY_SIZE(rk805s);
> -		rk808->pm_pwroff_fn = rk805_device_shutdown;
> -		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
>   		break;
>   	case RK808_ID:
>   		rk808->regmap_cfg = &rk808_regmap_config;
> 
