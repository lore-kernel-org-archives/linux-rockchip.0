From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [RESEND PATCH] rtc: rk808: rename rtc-rk808.c to rtc-rk8xx.c
Date: Mon, 04 Jan 2016 17:14:04 +0800
Message-ID: <568A37DC.40208@rock-chips.com>
References: <1451571295-4193-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1451571295-4193-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: zhangqing <zhangqing@rock-chips.com>, heiko@sntech.de, lee.jones@linaro.org, a.zummo@towertech.it, alexandre.belloni@free-electrons.com
Cc: huangtao@rock-chips.com, rtc-linux@googlegroups.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Zhang Qing,

On 12/31/2015 10:14 PM, zhangqing wrote:
> make rtc-rk8xx.c compatible for all pmic chips.
> for pmic chips(rk808\rk807\rk816\rk818) in the future.
The commit message will be better like this:
Rename the file to rtc-rk8xx.c to compatible other Rockchip PMIC chips
like rk807/rk816/rk818 and other chips in the the future.

Also rename the variable, MACRO, function and etc. names in relate file.

<You'd better share which chips have you test with new driver here.>
> Signed-off-by: zhangqing <zhangqing@rock-chips.com>
Prefer to use: Zhang Qing <zhangqing@rock-chips.com >
> ---
>   drivers/mfd/rk808.c                      |   2 +-
>   drivers/rtc/Kconfig                      |   8 +-
>   drivers/rtc/Makefile                     |   2 +-
>   drivers/rtc/{rtc-rk808.c => rtc-rk8xx.c} | 218 ++++++++++++++++++-------------
>   4 files changed, 131 insertions(+), 99 deletions(-)
>   rename drivers/rtc/{rtc-rk808.c => rtc-rk8xx.c} (64%)
>
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 4b1e439..21da22b 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -77,7 +77,7 @@ static const struct mfd_cell rk808s[] = {
>   	{ .name = "rk808-clkout", },
>   	{ .name = "rk808-regulator", },
>   	{
> -		.name = "rk808-rtc",
> +		.name = "rk8xx-rtc",
>   		.num_resources = ARRAY_SIZE(rtc_resources),
>   		.resources = &rtc_resources[0],
>   	},
> diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
> index 376322f..d669473d 100644
> --- a/drivers/rtc/Kconfig
> +++ b/drivers/rtc/Kconfig
> @@ -325,15 +325,15 @@ config RTC_DRV_MAX77686
>   	  This driver can also be built as a module. If so, the module
>   	  will be called rtc-max77686.
>   
> -config RTC_DRV_RK808
> -	tristate "Rockchip RK808 RTC"
> +config RTC_DRV_RK8XX
> +	tristate "Rockchip RK8XX RTC"
>   	depends on MFD_RK808
>   	help
>   	  If you say yes here you will get support for the
> -	  RTC of RK808 PMIC.
> +	  RTC of RK8XX PMIC.
>   
>   	  This driver can also be built as a module. If so, the module
> -	  will be called rk808-rtc.
> +	  will be called rk8xx-rtc.
>   
>   config RTC_DRV_MAX77802
>   	tristate "Maxim 77802 RTC"
> diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
> index 62d61b2..5b1384a 100644
> --- a/drivers/rtc/Makefile
> +++ b/drivers/rtc/Makefile
> @@ -120,7 +120,7 @@ obj-$(CONFIG_RTC_DRV_PUV3)	+= rtc-puv3.o
>   obj-$(CONFIG_RTC_DRV_PXA)	+= rtc-pxa.o
>   obj-$(CONFIG_RTC_DRV_R9701)	+= rtc-r9701.o
>   obj-$(CONFIG_RTC_DRV_RC5T583)	+= rtc-rc5t583.o
> -obj-$(CONFIG_RTC_DRV_RK808)	+= rtc-rk808.o
> +obj-$(CONFIG_RTC_DRV_RK8XX)	+= rtc-rk8xx.o
>   obj-$(CONFIG_RTC_DRV_RP5C01)	+= rtc-rp5c01.o
>   obj-$(CONFIG_RTC_DRV_RS5C313)	+= rtc-rs5c313.o
>   obj-$(CONFIG_RTC_DRV_RS5C348)	+= rtc-rs5c348.o
> diff --git a/drivers/rtc/rtc-rk808.c b/drivers/rtc/rtc-rk8xx.c
> similarity index 64%
> rename from drivers/rtc/rtc-rk808.c
> rename to drivers/rtc/rtc-rk8xx.c
> index 35c9aad..5d946bf 100644
> --- a/drivers/rtc/rtc-rk808.c
> +++ b/drivers/rtc/rtc-rk8xx.c
> @@ -1,5 +1,5 @@
>   /*
> - * RTC driver for Rockchip RK808
> + * RTC driver for Rockchip RK8XX
>    *
>    * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
>    *
> @@ -20,14 +20,33 @@
>   #include <linux/kernel.h>
>   #include <linux/rtc.h>
>   #include <linux/bcd.h>
> -#include <linux/mfd/rk808.h>
>   #include <linux/platform_device.h>
>   #include <linux/i2c.h>
> +#include <linux/regmap.h>
> +
> +#define RK8XX_SECONDS_REG			0x00
> +#define RK8XX_MINUTES_REG			0x01
> +#define RK8XX_HOURS_REG				0x02
> +#define RK8XX_DAYS_REG				0x03
> +#define RK8XX_MONTHS_REG			0x04
> +#define RK8XX_YEARS_REG				0x05
> +#define RK8XX_WEEKS_REG				0x06
> +#define RK8XX_ALARM_SECONDS_REG			0x08
> +#define RK8XX_ALARM_MINUTES_REG			0x09
> +#define RK8XX_ALARM_HOURS_REG			0x0A
> +#define RK8XX_ALARM_DAYS_REG			0x0B
> +#define RK8XX_ALARM_MONTHS_REG			0x0C
> +#define RK8XX_ALARM_YEARS_REG			0x0D
> +#define RK8XX_RTC_CTRL_REG			0x10
> +#define RK8XX_RTC_STATUS_REG			0x11
> +#define RK8XX_RTC_INT_REG			0x12
> +#define RK8XX_RTC_COMP_LSB_REG			0x13
> +#define RK8XX_RTC_COMP_MSB_REG			0x14
>   
>   /* RTC_CTRL_REG bitfields */
>   #define BIT_RTC_CTRL_REG_STOP_RTC_M		BIT(0)
>   
> -/* RK808 has a shadowed register for saving a "frozen" RTC time.
> +/* RK8xx has a shadowed register for saving a "frozen" RTC time.
>    * When user setting "GET_TIME" to 1, the time will save in this shadowed
>    * register. If set "READSEL" to 1, user read rtc time register, actually
>    * get the time of that moment. If we need the real time, clr this bit.
> @@ -47,17 +66,25 @@
>   
>   /* REG_SECONDS_REG through REG_YEARS_REG is how many registers? */
>   
> -#define NUM_TIME_REGS	(RK808_WEEKS_REG - RK808_SECONDS_REG + 1)
> -#define NUM_ALARM_REGS	(RK808_ALARM_YEARS_REG - RK808_ALARM_SECONDS_REG + 1)
> +#define NUM_TIME_REGS	(RK8XX_WEEKS_REG - RK8XX_SECONDS_REG + 1)
> +#define NUM_ALARM_REGS	(RK8XX_ALARM_YEARS_REG - RK8XX_ALARM_SECONDS_REG + 1)
>   
> -struct rk808_rtc {
> -	struct rk808 *rk808;
> +static const struct regmap_config rk8xx_rtc_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = RK8XX_RTC_COMP_MSB_REG,
> +	.cache_type = REGCACHE_RBTREE,
> +};
> +
> +struct rk8xx_rtc {
>   	struct rtc_device *rtc;
> +	struct i2c_client *i2c;
> +	struct regmap *regmap;
Maybe you need some comment here or in commit message for this change,
seems this is more than "rename".

Thanks,
- Kever
