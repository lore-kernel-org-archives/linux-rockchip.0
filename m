From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v4 4/5] rockchip: Separate the reset cause from display
 cpuinfo
Date: Sun, 28 Jun 2020 10:46:39 +0800
Message-ID: <3ecbc635-d430-3ee1-7656-3430b7b74f5b@rock-chips.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
 <20200618153948.218506-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618153948.218506-5-jagan@amarulasolutions.com>
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

HI Jagan,

On 2020/6/18 下午11:39, Jagan Teki wrote:
> reset cause is a generic functionality based on the soc
> cru registers in rockchip. This can be used for printing
> the cause of reset in cpuinfo or some other place where
> reset cause is needed.
>
> Other than cpuinfo, reset cause can also be using during
> bootcount for checking the specific reset cause and glow
> the led based on the reset cause.
>
> So, let's separate the reset cause code from cpuinfo, and
> add a check to build it for rk3399, rk3288 since these two
> soc are supporting reset cause as of now.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> ---
> Changes for v4:
> - none
>
>   arch/arm/include/asm/arch-rockchip/cru.h |  2 ++
>   arch/arm/mach-rockchip/Makefile          |  5 ++++-
>   arch/arm/mach-rockchip/cpu-info.c        | 20 ++++++++++++--------
>   3 files changed, 18 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
> index 5eb17f9d55..317eb61049 100644
> --- a/arch/arm/include/asm/arch-rockchip/cru.h
> +++ b/arch/arm/include/asm/arch-rockchip/cru.h
> @@ -31,4 +31,6 @@ enum {
>   
>   #define MHz		1000000
>   
> +char *get_reset_cause(void);

Since you add a environment, you should use that instead of export 
get_reset_cause().


> +
>   #endif /* _ROCKCHIP_CLOCK_H */
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index 5b38526fe0..ef4898e00c 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -15,6 +15,10 @@ obj-tpl-$(CONFIG_ROCKCHIP_PX30) += px30-board-tpl.o
>   
>   obj-spl-$(CONFIG_ROCKCHIP_RK3036) += rk3036-board-spl.o
>   
> +ifeq ($(CONFIG_ROCKCHIP_RK3288)$(CONFIG_ROCKCHIP_RK3399), y)
> +obj-y += cpu-info.o
> +endif

This change is not need, if the soc does not support this feature, they 
should not enable

CONFIG_DISPLAY_CPUINFO.

Thanks,
- Kever

> +
>   ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
>   
>   # Always include boot_mode.o, as we bypass it (i.e. turn it off)
> @@ -22,7 +26,6 @@ ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
>   # we can have the preprocessor correctly recognise both 0x0 and 0
>   # meaning "turn it off".
>   obj-y += boot_mode.o
> -obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
>   obj-$(CONFIG_ROCKCHIP_COMMON_BOARD) += board.o
>   obj-$(CONFIG_MISC_INIT_R) += misc.o
>   endif
> diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
> index 21ca9dedce..76a840e2c3 100644
> --- a/arch/arm/mach-rockchip/cpu-info.c
> +++ b/arch/arm/mach-rockchip/cpu-info.c
> @@ -13,7 +13,7 @@
>   #include <asm/arch-rockchip/hardware.h>
>   #include <linux/err.h>
>   
> -static char *get_reset_cause(void)
> +char *get_reset_cause(void)
>   {
>   	struct rockchip_cru *cru = rockchip_get_cru();
>   	char *cause = NULL;
> @@ -41,12 +41,6 @@ static char *get_reset_cause(void)
>   		cause = "unknown reset";
>   	}
>   
> -	/**
> -	 * reset_reason env is used by rk3288, due to special use case
> -	 * to figure it the boot behavior. so keep this as it is.
> -	 */
> -	env_set("reset_reason", cause);
> -
>   	/*
>   	 * Clear glb_rst_st, so we can determine the last reset cause
>   	 * for following resets.
> @@ -56,12 +50,22 @@ static char *get_reset_cause(void)
>   	return cause;
>   }
>   
> +#ifdef CONFIG_DISPLAY_CPUINFO
>   int print_cpuinfo(void)
>   {
> +	char *cause = get_reset_cause();
> +
>   	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
> -	printf("Reset cause: %s\n", get_reset_cause());
> +	printf("Reset cause: %s\n", cause);
> +
> +	/**
> +	 * reset_reason env is used by rk3288, due to special use case
> +	 * to figure it the boot behavior. so keep this as it is.
> +	 */
> +	env_set("reset_reason", cause);
>   
>   	/* TODO print operating temparature and clock */
>   
>   	return 0;
>   }
> +#endif
