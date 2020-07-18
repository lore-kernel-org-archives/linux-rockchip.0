From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 1/5] roc-rk3399-pc: Move leds setup in SPL
Date: Sat, 18 Jul 2020 20:45:19 +0800
Message-ID: <d8ae4fef-34df-f791-f20c-01067d6d40aa@rock-chips.com>
References: <20200714093229.28763-1-jagan@amarulasolutions.com>
 <20200714093229.28763-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200714093229.28763-2-jagan@amarulasolutions.com>
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


On 2020/7/14 下午5:32, Jagan Teki wrote:
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
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v5
> - drop tpl.c file
> - update the code in board file
>
>   arch/arm/mach-rockchip/tpl.c                |  7 ----
>   board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 36 +++++++++++----------
>   configs/roc-pc-mezzanine-rk3399_defconfig   |  2 +-
>   configs/roc-pc-rk3399_defconfig             |  2 +-
>   4 files changed, 21 insertions(+), 26 deletions(-)
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
> diff --git a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
> index 7c3a803654..4db3dd739c 100644
> --- a/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
> +++ b/board/firefly/roc-pc-rk3399/roc-pc-rk3399.c
> @@ -6,14 +6,24 @@
>   #include <common.h>
>   #include <dm.h>
>   #include <log.h>
> -#include <asm/arch-rockchip/periph.h>
> -#include <power/regulator.h>
>   #include <spl_gpio.h>
> -#include <asm/io.h>
> +#include <power/regulator.h>
> +
>   #include <asm/arch-rockchip/gpio.h>
>   
> -#ifndef CONFIG_SPL_BUILD
> -int board_early_init_f(void)
> +#define GPIO0_BASE		0xff720000
> +
> +static int led_setup(void)
> +{
> +	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
> +
> +	/* Turn on red LED, indicating full power mode */
> +	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
> +
> +	return 0;
> +}
> +
> +static int roc_pc_early_init_f(void)
>   {
>   	struct udevice *regulator;
>   	int ret;
> @@ -30,19 +40,11 @@ int board_early_init_f(void)
>   out:
>   	return 0;
>   }
> -#endif
> -
> -#if defined(CONFIG_TPL_BUILD)
> -
> -#define GPIO0_BASE      0xff720000
>   
>   int board_early_init_f(void)
>   {
> -	struct rockchip_gpio_regs * const gpio0 = (void *)GPIO0_BASE;
> -
> -	/* Turn on red LED, indicating full power mode */
> -	spl_gpio_output(gpio0, GPIO(BANK_B, 5), 1);
> -
> -	return 0;
> +	if (IS_ENABLED(CONFIG_SPL_BUILD))
> +		return led_setup();
> +	else
> +		return roc_pc_early_init_f();
>   }
> -#endif
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
> index c87a8568fc..15d511741f 100644
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
> @@ -21,7 +22,6 @@ CONFIG_SPL_STACK_R=y
>   CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>   CONFIG_SPL_SPI_LOAD=y
>   CONFIG_TPL=y
> -CONFIG_TPL_GPIO_SUPPORT=y
>   CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index 601f5c6ae1..2a6d0d22c8 100644
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
> @@ -21,7 +22,6 @@ CONFIG_SPL_STACK_R=y
>   CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>   CONFIG_SPL_SPI_LOAD=y
>   CONFIG_TPL=y
> -CONFIG_TPL_GPIO_SUPPORT=y
>   CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
