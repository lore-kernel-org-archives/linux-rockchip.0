From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3288: Add OF board setup
Date: Wed, 22 Jul 2020 20:06:38 +0800
Message-ID: <22e251cc-30e1-884f-0369-e90712aa8bed@rock-chips.com>
References: <20200721064638.16236-1-jagan@amarulasolutions.com>
 <20200721064638.16236-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721064638.16236-2-jagan@amarulasolutions.com>
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


On 2020/7/21 下午2:46, Jagan Teki wrote:
> The new rk3288 revision rk3288w has some changes with respect
> to legacy rk3288 like hclk_vio in cru and usb host0 ohci.
>
> Linux clock driver already handle this via rockchip,rk3288w-cru
> compatible.
>
> USB ohci host can enable via dts for rk3288w based boards.
>
> So, add fdt board setup code to update cru compatible with
> rk3288w-cru compatible if the SOC revision is RK3288W.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v3:
> - use struct bd_info
> - drop ifdef OF_BOARD_SETUP since it select by default
>
>   arch/arm/mach-rockchip/Kconfig         |  1 +
>   arch/arm/mach-rockchip/rk3288/rk3288.c | 30 ++++++++++++++++++++++++++
>   2 files changed, 31 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index e2b6326584..fcab1d5cee 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -99,6 +99,7 @@ config ROCKCHIP_RK322X
>   config ROCKCHIP_RK3288
>   	bool "Support Rockchip RK3288"
>   	select CPU_V7A
> +	select OF_BOARD_SETUP
>   	select SUPPORT_SPL
>   	select SPL
>   	select SUPPORT_TPL
> diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
> index 804abe8a1b..1a4ecdf625 100644
> --- a/arch/arm/mach-rockchip/rk3288/rk3288.c
> +++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
> @@ -13,6 +13,7 @@
>   #include <asm/io.h>
>   #include <asm/arch-rockchip/bootrom.h>
>   #include <asm/arch-rockchip/clock.h>
> +#include <asm/arch-rockchip/cpu_rk3288.h>
>   #include <asm/arch-rockchip/cru.h>
>   #include <asm/arch-rockchip/hardware.h>
>   #include <asm/arch-rockchip/grf_rk3288.h>
> @@ -115,6 +116,35 @@ int rk_board_late_init(void)
>   	return rk3288_board_late_init();
>   }
>   
> +static int ft_rk3288w_setup(void *blob)
> +{
> +	const char *path;
> +	int offs, ret;
> +
> +	path = "/clock-controller@ff760000";
> +	offs = fdt_path_offset(blob, path);
> +	if (offs < 0) {
> +		debug("failed to found fdt path %s\n", path);
> +		return offs;
> +	}
> +
> +	ret = fdt_setprop_string(blob, offs, "compatible", "rockchip,rk3288w-cru");
> +	if (ret) {
> +		printf("failed to set rk3288w-cru compatible (ret=%d)\n", ret);
> +		return ret;
> +	}
> +
> +	return ret;
> +}
> +
> +int ft_board_setup(void *blob, struct bd_info *bd)
> +{
> +	if (soc_is_rk3288w())
> +		return ft_rk3288w_setup(blob);
> +
> +	return 0;
> +}
> +
>   static int do_clock(struct cmd_tbl *cmdtp, int flag, int argc,
>   		    char *const argv[])
>   {
