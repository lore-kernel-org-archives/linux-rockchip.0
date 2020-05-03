From: Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 8/8] rockchip: Enable PCIe/M.2 on rock960 board
Date: Sun, 3 May 2020 19:09:44 +0530
Message-ID: <20200503133944.GA28003@Mani-XPS-13-9360>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-9-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200430070412.12499-9-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Tom Cubie <tom-jhlD/3HTYFgAvxtiuMwx3w@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 30, 2020 at 12:34:12PM +0530, Jagan Teki wrote:
> Due to some on board limitation rock960 PCIe
> works only with 1.8V IO domain.
> 
> So, this patch enables grf io_sel explicitly
> to make PCIe/M.2 to work.
> 
> Cc: Tom Cubie <tom-jhlD/3HTYFgAvxtiuMwx3w@public.gmane.org>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
> Changes for v2:
> - none
> 
>  board/vamrs/rock960_rk3399/rock960-rk3399.c | 20 ++++++++++++++++++++
>  configs/rock960-rk3399_defconfig            |  5 +++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> index 68a127b9ac..98d62e89ca 100644
> --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> @@ -2,3 +2,23 @@
>  /*
>   * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
>   */
> +
> +#include <common.h>
> +#include <syscon.h>
> +#include <asm/io.h>
> +#include <asm/arch-rockchip/clock.h>
> +#include <asm/arch-rockchip/grf_rk3399.h>
> +#include <asm/arch-rockchip/hardware.h>
> +
> +#ifdef CONFIG_MISC_INIT_R
> +int misc_init_r(void)
> +{
> +	struct rk3399_grf_regs *grf =
> +	    syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
> +
> +	/* BT565 is in 1.8v domain */

From where this BT565 comes in?

Anyway, I don't have the PCI-E device with me to test this change but
it looks good to me.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>

PS: Added Peter to CC incase he is interested.

Thanks,
Mani

> +	rk_setreg(&grf->io_vsel, BIT(0));
> +
> +	return 0;
> +}
> +#endif
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index c4e954731a..cb1ec3c26b 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -9,6 +9,7 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
>  CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
> +CONFIG_MISC_INIT_R=y
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
>  CONFIG_SPL_STACK_R=y
> @@ -19,6 +20,7 @@ CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_MMC=y
>  CONFIG_CMD_USB=y
> +CONFIG_CMD_PCI=y
>  # CONFIG_CMD_SETEXPR is not set
>  CONFIG_CMD_TIME=y
>  CONFIG_CMD_PMIC=y
> @@ -36,10 +38,13 @@ CONFIG_MMC_SDHCI=y
>  CONFIG_MMC_SDHCI_SDMA=y
>  CONFIG_MMC_SDHCI_ROCKCHIP=y
>  CONFIG_DM_ETH=y
> +CONFIG_NVME=y
> +CONFIG_PCI=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> +CONFIG_DM_RESET=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> -- 
> 2.17.1
> 
