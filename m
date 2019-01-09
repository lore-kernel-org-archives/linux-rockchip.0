From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/1] mfd: rk808: Prepare rk805 for poweroff
Date: Wed, 09 Jan 2019 14:07:09 +0100
Message-ID: <1917869.4NZ4yPfKWV@diego>
References: <1538465910-27233-1-git-send-email-stefan@olimex.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1538465910-27233-1-git-send-email-stefan@olimex.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Stefan Mavrodiev <stefan@olimex.com>
Cc: linux-rockchip@lists.infradead.org, Lee Jones <lee.jones@linaro.org>, open list <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Stefan, Lee,

Am Dienstag, 2. Oktober 2018, 09:38:29 CET schrieb Stefan Mavrodiev:
> RK805 has SLEEP signal, which can put the device into SLEEP or OFF
> mode. The default is SLEEP mode.
> 
> However, when the kernel performs power-off (actually the ATF) the
> device will not go fully off and this will result in higher power
> consumption and inability to wake the device with RTC alarm.
> 
> The solution is to enable pm_power_off_prepare function, which will
> configure SLEEP pin for OFF function.
> 
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

just found this while cleaning my inbox and this change looks
significant and it seems hasn't been applied yet.

I guess this is still relevant, right?


Heiko

> ---
>  drivers/mfd/rk808.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 216fbf6..50f3f78 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -387,6 +387,25 @@ static void rk805_device_shutdown(void)
>  		dev_err(&rk808_i2c_client->dev, "power off error!\n");
>  }
> 
> +static void rk805_device_shutdown_prepare(void)
> +{
> +	int ret;
> +	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
> +
> +	if (!rk808) {
> +		dev_warn(&rk808_i2c_client->dev,
> +			 "have no rk805, so do nothing here\n");
> +
> +		return;
> +	}
> +
> +	ret = regmap_update_bits(rk808->regmap,
> +				 RK805_GPIO_IO_POL_REG,
> +				 SLP_SD_MSK, SHUTDOWN_FUN);
> +	if (ret)
> +		dev_err(&rk808_i2c_client->dev, "power off error!\n");
> +}
> +
>  static void rk808_device_shutdown(void)
>  {
>  	int ret;
> @@ -549,6 +568,10 @@ static int rk808_probe(struct i2c_client *client,
>  	if (pm_off && !pm_power_off) {
>  		rk808_i2c_client = client;
>  		pm_power_off = pm_pwroff_fn;
> +	} else if (pm_off && !pm_power_off_prepare &&
> +		   rk808->variant == RK805_ID) {
> +		rk808_i2c_client = client;
> +		pm_power_off_prepare = rk805_device_shutdown_prepare;
>  	}
> 
>  	return 0;
> @@ -564,6 +587,7 @@ static int rk808_remove(struct i2c_client *client)
> 
>  	regmap_del_irq_chip(client->irq, rk808->irq_data);
>  	pm_power_off = NULL;
> +	pm_power_off_prepare = NULL;
> 
>  	return 0;
>  }
