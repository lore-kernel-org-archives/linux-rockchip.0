From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 6/6] rockchip: Enable PCIe/M.2 on rock960 board
Date: Fri, 15 May 2020 10:54:13 +0800
Message-ID: <10d8fb00-4e90-71c0-9020-d2b72e38fd07@rock-chips.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-7-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200509165624.20791-7-jagan@amarulasolutions.com>
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
Cc: shawn.lin@rock-chips.com, patrick@blueri.se, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, Tom Cubie <tom@radxa.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/10 上午12:56, Jagan Teki wrote:
> Due to board limitation some SSD's would work
> on rock960 PCIe M.2 only with 1.8V IO domain.
>
> So, this patch enables grf io_sel explicitly to
> make PCIe/M.2 to work.
>
> Cc: Tom Cubie <tom@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v3:
> - collect mani a-b
> - add comments
>
>   board/vamrs/rock960_rk3399/rock960-rk3399.c | 23 +++++++++++++++++++++
>   configs/rock960-rk3399_defconfig            |  5 +++++
>   2 files changed, 28 insertions(+)
>
> diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> index 68a127b9ac..ef1eb2d0b7 100644
> --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> @@ -2,3 +2,26 @@
>   /*
>    * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>    */
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
> +	/**
> +	 * Some SSD's to work on rock960 would require explicit
> +	 * domain voltage change, so BT565 is in 1.8v domain
> +	 */
> +	rk_setreg(&grf->io_vsel, BIT(0));
> +
> +	return 0;
> +}
> +#endif
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index 045d989a19..64517f9623 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -9,6 +9,7 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
>   CONFIG_DEBUG_UART_CLOCK=24000000
>   CONFIG_DEBUG_UART=y
>   CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
> +CONFIG_MISC_INIT_R=y
>   CONFIG_DISPLAY_BOARDINFO_LATE=y
>   # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
>   CONFIG_SPL_STACK_R=y
> @@ -19,6 +20,7 @@ CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
>   CONFIG_CMD_USB=y
> +CONFIG_CMD_PCI=y
>   # CONFIG_CMD_SETEXPR is not set
>   CONFIG_CMD_TIME=y
>   CONFIG_CMD_PMIC=y
> @@ -36,10 +38,13 @@ CONFIG_MMC_SDHCI=y
>   CONFIG_MMC_SDHCI_SDMA=y
>   CONFIG_MMC_SDHCI_ROCKCHIP=y
>   CONFIG_DM_ETH=y
> +CONFIG_NVME=y
> +CONFIG_PCI=y
>   CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
> +CONFIG_DM_RESET=y
>   CONFIG_BAUDRATE=1500000
>   CONFIG_DEBUG_UART_SHIFT=2
>   CONFIG_SYSRESET=y
