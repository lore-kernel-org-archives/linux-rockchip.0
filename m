From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] mfd: rk808: RK818 uses DEV_OFF to power off supplies
Date: Wed, 26 Oct 2016 14:53:54 +0100
Message-ID: <20161026135354.GB13127@dell>
References: <1476694990-1887-1-git-send-email-chenjh@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1476694990-1887-1-git-send-email-chenjh@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jianhong Chen <chenjh@rock-chips.com>
Cc: zhangqing@rock-chips.com, zyw@rock-chips.com, w.egorov@phytec.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com, huangtao@rock-chips.com, xsf@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, 17 Oct 2016, Jianhong Chen wrote:

> DEV_OFF and DEV_OFF_RST functions for RK808 are designed error that
> only DEV_OFF_RST can power off supplies. RK818 has been fixed this
> issue, so that DEV_OFF is used to power off supplies.
> 
> Signed-off-by: Jianhong Chen <chenjh@rock-chips.com>
> ---
>  drivers/mfd/rk808.c       | 23 ++++++++++++++++++++++-
>  include/linux/mfd/rk808.h |  1 +
>  2 files changed, 23 insertions(+), 1 deletion(-)

Applied, thanks.

> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 0f8acc5..2c9acdb 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -290,6 +290,24 @@ static void rk808_device_shutdown(void)
>  		dev_err(&rk808_i2c_client->dev, "power off error!\n");
>  }
>  
> +static void rk818_device_shutdown(void)
> +{
> +	int ret;
> +	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
> +
> +	if (!rk808) {
> +		dev_warn(&rk808_i2c_client->dev,
> +			 "have no rk818, so do nothing here\n");
> +		return;
> +	}
> +
> +	ret = regmap_update_bits(rk808->regmap,
> +				 RK818_DEVCTRL_REG,
> +				 DEV_OFF, DEV_OFF);
> +	if (ret)
> +		dev_err(&rk808_i2c_client->dev, "power off error!\n");
> +}
> +
>  static const struct of_device_id rk808_of_match[] = {
>  	{ .compatible = "rockchip,rk808" },
>  	{ .compatible = "rockchip,rk818" },
> @@ -304,6 +322,7 @@ static int rk808_probe(struct i2c_client *client,
>  	struct rk808 *rk808;
>  	const struct rk808_reg_data *pre_init_reg;
>  	const struct mfd_cell *cells;
> +	void (*pm_pwroff_fn)(void);
>  	int nr_pre_init_regs;
>  	int nr_cells;
>  	int pm_off = 0;
> @@ -331,6 +350,7 @@ static int rk808_probe(struct i2c_client *client,
>  		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
>  		cells = rk808s;
>  		nr_cells = ARRAY_SIZE(rk808s);
> +		pm_pwroff_fn = rk808_device_shutdown;
>  		break;
>  	case RK818_ID:
>  		rk808->regmap_cfg = &rk818_regmap_config;
> @@ -339,6 +359,7 @@ static int rk808_probe(struct i2c_client *client,
>  		nr_pre_init_regs = ARRAY_SIZE(rk818_pre_init_reg);
>  		cells = rk818s;
>  		nr_cells = ARRAY_SIZE(rk818s);
> +		pm_pwroff_fn = rk818_device_shutdown;
>  		break;
>  	default:
>  		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
> @@ -393,7 +414,7 @@ static int rk808_probe(struct i2c_client *client,
>  				"rockchip,system-power-controller");
>  	if (pm_off && !pm_power_off) {
>  		rk808_i2c_client = client;
> -		pm_power_off = rk808_device_shutdown;
> +		pm_power_off = pm_pwroff_fn;
>  	}
>  
>  	return 0;
> diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
> index 6d435a3..83701ef 100644
> --- a/include/linux/mfd/rk808.h
> +++ b/include/linux/mfd/rk808.h
> @@ -290,6 +290,7 @@ enum rk818_reg {
>  #define SWITCH2_EN	BIT(6)
>  #define SWITCH1_EN	BIT(5)
>  #define DEV_OFF_RST	BIT(3)
> +#define DEV_OFF		BIT(0)
>  
>  #define VB_LO_ACT		BIT(4)
>  #define VB_LO_SEL_3500MV	(7 << 0)

-- 
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
