From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 3/5] rockchip: Separate the reset cause from display
 cpuinfo
Date: Sat, 18 Jul 2020 20:45:37 +0800
Message-ID: <195d323d-3f10-0123-acc8-c2d8ff240ddc@rock-chips.com>
References: <20200714093229.28763-1-jagan@amarulasolutions.com>
 <20200714093229.28763-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200714093229.28763-4-jagan@amarulasolutions.com>
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
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v5:
> - update Makefile
>
>   arch/arm/include/asm/arch-rockchip/cru.h |  2 ++
>   arch/arm/mach-rockchip/Makefile          |  5 ++++-
>   arch/arm/mach-rockchip/cpu-info.c        | 20 ++++++++++++--------
>   3 files changed, 18 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
> index d2057cb738..13ea4aba8e 100644
> --- a/arch/arm/include/asm/arch-rockchip/cru.h
> +++ b/arch/arm/include/asm/arch-rockchip/cru.h
> @@ -30,4 +30,6 @@ enum {
>   
>   #define MHz		1000000
>   
> +char *get_reset_cause(void);
> +
>   #endif /* _ROCKCHIP_CLOCK_H */
> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
> index 5b38526fe0..121f23a563 100644
> --- a/arch/arm/mach-rockchip/Makefile
> +++ b/arch/arm/mach-rockchip/Makefile
> @@ -22,11 +22,14 @@ ifeq ($(CONFIG_SPL_BUILD)$(CONFIG_TPL_BUILD),)
>   # we can have the preprocessor correctly recognise both 0x0 and 0
>   # meaning "turn it off".
>   obj-y += boot_mode.o
> -obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
>   obj-$(CONFIG_ROCKCHIP_COMMON_BOARD) += board.o
>   obj-$(CONFIG_MISC_INIT_R) += misc.o
>   endif
>   
> +ifeq ($(CONFIG_TPL_BUILD),)
> +obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
> +endif
> +
>   obj-$(CONFIG_$(SPL_TPL_)RAM) += sdram.o
>   
>   obj-$(CONFIG_ROCKCHIP_PX30) += px30/
> diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
> index bb5a198039..d0f030109f 100644
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
> @@ -41,21 +41,25 @@ static char *get_reset_cause(void)
>   		cause = "unknown reset";
>   	}
>   
> -	/**
> -	 * reset_reason env is used by rk3288, due to special use case
> -	 * to figure it the boot behavior. so keep this as it is.
> -	 */
> -	env_set("reset_reason", cause);
> -
>   	return cause;
>   }
>   
> +#if CONFIG_IS_ENABLED(DISPLAY_CPUINFO)
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
