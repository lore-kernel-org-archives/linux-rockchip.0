From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v4 3/5] roc-rk3399-pc: Move leds setup in SPL
Date: Sun, 28 Jun 2020 10:50:34 +0800
Message-ID: <ba44c3e7-a24f-4a2f-9697-b67fcc476ff0@rock-chips.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
 <20200618153948.218506-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618153948.218506-4-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/18 下午11:39, Jagan Teki wrote:
> roc-rk3399-pc has some specific requirements to support LEDS,
> environment. board detection and etc prior to U-Boot proper.
>
> So as of now SPL would be a better stage for these custom board
> requirements to support unlike TPL. Adding few of these custom
> requirements like LEDS in TPL would require extra code pulling
> and also the size of TPL can grow.
>
> So, this patch moves the leds code from TPL into SPL after relocation.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> ---
> Changes for v4:
> - none
>
>   arch/arm/mach-rockchip/tpl.c                |  7 -------
>   board/firefly/roc-pc-rk3399/Makefile        |  4 ++++
>   board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 21 -------------------
>   board/firefly/roc-pc-rk3399/spl.c           | 23 +++++++++++++++++++++
>   configs/roc-pc-mezzanine-rk3399_defconfig   |  2 +-
>   configs/roc-pc-rk3399_defconfig             |  2 +-
>   6 files changed, 29 insertions(+), 30 deletions(-)
>   create mode 100644 board/firefly/roc-pc-rk3399/spl.c
>
> diff --git a/arch/arm/mach-rockchip/tpl.c b/arch/arm/mach-rockchip/tpl.c
> index 88f80b05a9..cc908e1b0e 100644
> --- a/arch/arm/mach-rockchip/tpl.c
> +++ b/arch/arm/mach-rockchip/tpl.c
> @@ -43,18 +43,11 @@ __weak void rockchip_stimer_init(void)
>   	       TIMER_CONTROL_REG);
>   }
>   
> -__weak int board_early_init_f(void)
> -{
> -	return 0;
> -}
> -
>   void board_init_f(ulong dummy)
>   {
>   	struct udevice *dev;
>   	int ret;
>   
> -	board_early_init_f();
> -
>   #if defined(CONFIG_DEBUG_UART) && defined(CONFIG_TPL_SERIAL_SUPPORT)
>   	/*
>   	 * Debug UART can be used from here if required:
> diff --git a/board/firefly/roc-pc-rk3399/Makefile b/board/firefly/roc-pc-rk3399/Makefile
> index 29c79b25d7..3a9c4c744d 100644
> --- a/board/firefly/roc-pc-rk3399/Makefile
> +++ b/board/firefly/roc-pc-rk3399/Makefile
> @@ -4,4 +4,8 @@
>   # SPDX-License-Identifier:     GPL-2.0+
>   #
>   
> +ifdef CONFIG_SPL_BUILD
> +obj-y	+= spl.o
> +else
>   obj-y	+= roc-pc-rk3399.o
> +endif
> diff --git a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
> index 7c3a803654..581cdcd3b0 100644
> --- a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
> +++ b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
> @@ -6,13 +6,8 @@
>   #include <common.h>
>   #include <dm.h>
>   #include <log.h>
> -#include <asm/arch-rockchip/periph.h>
>   #include <power/regulator.h>
> -#include <spl_gpio.h>
> -#include <asm/io.h>
> -#include <asm/arch-rockchip/gpio.h>

It will be better to use CONFIG_SPL_BUILD for SPL code in this file 
instead of

add a new file.

Many other boards will follow up to add this new file, I don't think 
this is a good idea.


Thanks,

- Kever

>   
> -#ifndef CONFIG_SPL_BUILD
>   int board_early_init_f(void)
>   {
>   	struct udevice *regulator;
> @@ -30,19 +25,3 @@ int board_early_init_f(void)
>   out:
>   	return 0;
>   }
> -#endif
> -
> -#if defined(CONFIG_TPL_BUILD)
> -
> -#define GPIO0_BASE      0xff720000
> -
> -int board_early_init_f(void)
> -{
> -	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
> -
> -	/* Turn on red LED, indicating full power mode */
> -	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
> -
> -	return 0;
> -}
> -#endif
> diff --git a/board/firefly/roc-pc-rk3399/spl.c b/board/firefly/roc-pc-rk3399/spl.c
> new file mode 100644
> index 0000000000..a7664c6b86
> --- /dev/null
> +++ b/board/firefly/roc-pc-rk3399/spl.c
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2020 Amarula Solutions(India)
> + */
> +
> +#include <common.h>
> +#include <spl_gpio.h>
> +#include <asm/arch-rockchip/gpio.h>
> +
> +#define GPIO0_BASE		0xff720000
> +
> +static void led_setup(void)
> +{
> +	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
> +
> +	/* Turn on red LED, indicating full power mode */
> +	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
> +}
> +
> +void rk_spl_board_init(void)
> +{
> +	led_setup();
> +}
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
> index 595f052cb7..060b4bfecf 100644
> --- a/configs/roc-pc-mezzanine-rk3399_defconfig
> +++ b/configs/roc-pc-mezzanine-rk3399_defconfig
> @@ -1,6 +1,7 @@
>   CONFIG_ARM=y
>   CONFIG_ARCH_ROCKCHIP=y
>   CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_GPIO_SUPPORT=y
>   CONFIG_ENV_SIZE=0x8000
>   CONFIG_ENV_OFFSET=0x3F8000
>   CONFIG_ENV_SECT_SIZE=0x1000
> @@ -20,7 +21,6 @@ CONFIG_SPL_STACK_R=y
>   CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>   CONFIG_SPL_SPI_LOAD=y
>   CONFIG_TPL=y
> -CONFIG_TPL_GPIO_SUPPORT=y
>   CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index 1c4db3443f..9897a52cd8 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -1,6 +1,7 @@
>   CONFIG_ARM=y
>   CONFIG_ARCH_ROCKCHIP=y
>   CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_GPIO_SUPPORT=y
>   CONFIG_ENV_SIZE=0x8000
>   CONFIG_ENV_OFFSET=0x3F8000
>   CONFIG_ENV_SECT_SIZE=0x1000
> @@ -20,7 +21,6 @@ CONFIG_SPL_STACK_R=y
>   CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>   CONFIG_SPL_SPI_LOAD=y
>   CONFIG_TPL=y
> -CONFIG_TPL_GPIO_SUPPORT=y
>   CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
