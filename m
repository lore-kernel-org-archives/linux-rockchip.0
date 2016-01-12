From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Subject: Re: [PATCH] regulator: fan53555: fill set_suspend_enable/disable callback
Date: Tue, 12 Jan 2016 14:03:36 +0900
Message-ID: <CAJKOXPcJGFV+jWE4XK_Jt5k=vCcGTOf-7QjR6oW=mFQH8yL7qw@mail.gmail.com>
References: <1452596756-16617-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452596756-16617-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: zhangqing <zhangqing@rock-chips.com>
Cc: heiko@sntech.de, lgirdwood@gmail.com, broonie@kernel.org, huangtao@rock-chips.com, zyw@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

2016-01-12 20:05 GMT+09:00 zhangqing <zhangqing@rock-chips.com>:
> Setting the set_suspend_enable/disable callback to support
> enable and disable the dcdc when system is suspend.
>
> Signed-off-by: zhangqing <zhangqing@rock-chips.com>
> ---
>  drivers/regulator/fan53555.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
> index 4940e82..2cb5cc3 100644
> --- a/drivers/regulator/fan53555.c
> +++ b/drivers/regulator/fan53555.c
> @@ -114,6 +114,22 @@ static int fan53555_set_suspend_voltage(struct regulator_dev *rdev, int uV)
>         return 0;
>  }
>
> +static int fan53555_set_suspend_enable(struct regulator_dev *rdev)
> +{
> +       struct fan53555_device_info *di = rdev_get_drvdata(rdev);
> +
> +       return regmap_update_bits(di->regmap, di->sleep_reg,
> +                                 VSEL_BUCK_EN, VSEL_BUCK_EN);

You are just writing the enable_mask (BTW, just use the enable_mask,
not the value itself in such case) instead of enabling the suspend
mode. In the disable callback you are just disabling the regulator.

What do you want to achieve with these callbacks?

Best regards,
Krzysztof

> +}
> +
> +static int fan53555_set_suspend_disable(struct regulator_dev *rdev)
> +{
> +       struct fan53555_device_info *di = rdev_get_drvdata(rdev);
> +
> +       return regmap_update_bits(di->regmap, di->sleep_reg,
> +                                 VSEL_BUCK_EN, 0);
> +}
> +
>  static int fan53555_set_mode(struct regulator_dev *rdev, unsigned int mode)
>  {
>         struct fan53555_device_info *di = rdev_get_drvdata(rdev);
> @@ -192,6 +208,8 @@ static struct regulator_ops fan53555_regulator_ops = {
>         .set_mode = fan53555_set_mode,
>         .get_mode = fan53555_get_mode,
>         .set_ramp_delay = fan53555_set_ramp,
> +       .set_suspend_enable = fan53555_set_suspend_enable,
> +       .set_suspend_disable = fan53555_set_suspend_disable,
>  };
>
>  static int fan53555_voltages_setup_fairchild(struct fan53555_device_info *di)
> --
> 1.9.1
>
>
