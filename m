From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 4/5] rockchip: Add common reset cause
Date: Mon, 6 Jan 2020 17:24:59 +0800
Message-ID: <19b60114-b3d1-147b-4ef5-25e82bd4a5ff@rock-chips.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
 <20191229190726.29266-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191229190726.29266-5-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/30 上午3:07, Jagan Teki wrote:
> Add cpu reset cause in common cpu-info file.
>
> This would help to print the reset cause for
> various resets.
>
> Right now it support rk3288, rk3399. rest of rockchip
> platforms doesn't have reset cause support ye but this
> code is more feasible to extend the same.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/include/asm/arch-rockchip/cru.h      | 12 +++++
>   .../include/asm/arch-rockchip/cru_rk3288.h    | 14 +-----
>   arch/arm/mach-rockchip/cpu-info.c             | 49 +++++++++++++++++++
>   arch/arm/mach-rockchip/rk3288/rk3288.c        | 39 ---------------
>   4 files changed, 62 insertions(+), 52 deletions(-)
>
> diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
> index 5ed3fbfd07..e1dd9a89c2 100644
> --- a/arch/arm/include/asm/arch-rockchip/cru.h
> +++ b/arch/arm/include/asm/arch-rockchip/cru.h
> @@ -13,4 +13,16 @@
>   # include <asm/arch-rockchip/cru_rk3399.h>
>   #endif
>   
> +/* CRU_GLB_RST_ST */
> +enum {
> +	GLB_POR_RST,
> +	FST_GLB_RST_ST		= BIT(0),
> +	SND_GLB_RST_ST		= BIT(1),
> +	FST_GLB_TSADC_RST_ST	= BIT(2),
> +	SND_GLB_TSADC_RST_ST	= BIT(3),
> +	FST_GLB_WDT_RST_ST	= BIT(4),
> +	SND_GLB_WDT_RST_ST	= BIT(5),
> +	GLB_RST_ST_MASK		= GENMASK(5, 0),
> +};
> +
>   #endif /* _ROCKCHIP_CLOCK_H */
> diff --git a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
> index 7aa6efe46c..412b73e55f 100644
> --- a/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
> +++ b/arch/arm/include/asm/arch-rockchip/cru_rk3288.h
> @@ -51,7 +51,7 @@ struct rockchip_cru {
>   	u32 cru_glb_cnt_th;
>   	u32 cru_glb_rst_con;
>   	u32 reserved3;
> -	u32 cru_glb_rst_st;
> +	u32 glb_rst_st;
>   	u32 reserved4;
>   	u32 cru_sdmmc_con[2];
>   	u32 cru_sdio0_con[2];
> @@ -227,16 +227,4 @@ enum {
>   	CLKF_MASK		= 0x1fff << CLKF_SHIFT,
>   };
>   
> -/* CRU_GLB_RST_ST */
> -enum {
> -	GLB_POR_RST,
> -	FST_GLB_RST_ST		= BIT(0),
> -	SND_GLB_RST_ST		= BIT(1),
> -	FST_GLB_TSADC_RST_ST	= BIT(2),
> -	SND_GLB_TSADC_RST_ST	= BIT(3),
> -	FST_GLB_WDT_RST_ST	= BIT(4),
> -	SND_GLB_WDT_RST_ST	= BIT(5),
> -	GLB_RST_ST_MASK		= GENMASK(5, 0),
> -};
> -
>   #endif
> diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
> index 9bccbd4f68..4b0e99299a 100644
> --- a/arch/arm/mach-rockchip/cpu-info.c
> +++ b/arch/arm/mach-rockchip/cpu-info.c
> @@ -5,10 +5,59 @@
>    */
>   
>   #include <common.h>
> +#include <asm/io.h>
> +#include <asm/arch-rockchip/clock.h>
> +#include <asm/arch-rockchip/cru.h>
> +#include <asm/arch-rockchip/hardware.h>
> +#include <linux/err.h>
> +
> +static char *get_reset_cause(void)
> +{
> +	struct rockchip_cru *cru = rockchip_get_cru();
> +	char *cause = NULL;
> +
> +	if (IS_ERR(cru))
> +		return cause;
> +
> +	switch (cru->glb_rst_st) {
> +	case GLB_POR_RST:
> +		cause = "POR";
> +		break;
> +	case FST_GLB_RST_ST:
> +	case SND_GLB_RST_ST:
> +		cause = "RST";
> +		break;
> +	case FST_GLB_TSADC_RST_ST:
> +	case SND_GLB_TSADC_RST_ST:
> +		cause = "THERMAL";
> +		break;
> +	case FST_GLB_WDT_RST_ST:
> +	case SND_GLB_WDT_RST_ST:
> +		cause = "WDOG";
> +		break;
> +	default:
> +		cause = "unknown reset";
> +	}
> +
> +	/**
> +	 * reset_reason env is used by rk3288, due to special use case
> +	 * to figure it the boot behavior. so keep this as it is.
> +	 */
> +	env_set("reset_reason", cause);
> +
> +	/*
> +	 * Clear glb_rst_st, so we can determine the last reset cause
> +	 * for following resets.
> +	 */
> +	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
> +
> +	return cause;
> +}
>   
>   int print_cpuinfo(void)
>   {
>   	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
> +	printf("Reset cause: %s\n", get_reset_cause());
>   
>   	/* TODO print operating temparature and clock */
>   
> diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
> index 47ee5d440b..18ea7f35fb 100644
> --- a/arch/arm/mach-rockchip/rk3288/rk3288.c
> +++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
> @@ -102,43 +102,6 @@ void board_debug_uart_init(void)
>   }
>   #endif
>   
> -static void rk3288_detect_reset_reason(void)
> -{
> -	struct rockchip_cru *cru = rockchip_get_cru();
> -	const char *reason;
> -
> -	if (IS_ERR(cru))
> -		return;
> -
> -	switch (cru->cru_glb_rst_st) {
> -	case GLB_POR_RST:
> -		reason = "POR";
> -		break;
> -	case FST_GLB_RST_ST:
> -	case SND_GLB_RST_ST:
> -		reason = "RST";
> -		break;
> -	case FST_GLB_TSADC_RST_ST:
> -	case SND_GLB_TSADC_RST_ST:
> -		reason = "THERMAL";
> -		break;
> -	case FST_GLB_WDT_RST_ST:
> -	case SND_GLB_WDT_RST_ST:
> -		reason = "WDOG";
> -		break;
> -	default:
> -		reason = "unknown reset";
> -	}
> -
> -	env_set("reset_reason", reason);
> -
> -	/*
> -	 * Clear cru_glb_rst_st, so we can determine the last reset cause
> -	 * for following resets.
> -	 */
> -	rk_clrreg(&cru->cru_glb_rst_st, GLB_RST_ST_MASK);
> -}
> -
>   __weak int rk3288_board_late_init(void)
>   {
>   	return 0;
> @@ -146,8 +109,6 @@ __weak int rk3288_board_late_init(void)
>   
>   int rk_board_late_init(void)
>   {
> -	rk3288_detect_reset_reason();
> -
>   	return rk3288_board_late_init();
>   }
>   
