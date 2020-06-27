From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Sat, 27 Jun 2020 22:32:32 +0800
Message-ID: <a8f59aba-544f-fd7c-7604-49f2fcff69c1@rock-chips.com>
References: <20200610103658.96678-1-jagan@amarulasolutions.com>
 <20200610103658.96678-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200610103658.96678-5-jagan@amarulasolutions.com>
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
Cc: Tom Cubie <tom@radxa.com>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/10 下午6:36, Jagan Teki wrote:
> Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
> - VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
> - Compatible carrier board from Radxa.
>
> VAMRC RK3399Pro SOM need to mount on top of radxa dalang
> carrier board for making Rock Pi N10 SBC.
>
> So, add initial support for Rock Pi N10 by including rk3399,
> rk3399pro vamrc-som and raxda dalang carrier board dtsi files.
>
> rk3399pro-rock-pi-n10.dts was synced from linux-next v5.7-rc1.
>
> Tested
> - ROCK PI N10 Model B
> - ROCK PI N10 Model C
> - Boot from SD
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/Makefile                         |  3 +-
>   .../arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi |  7 +++
>   arch/arm/dts/rk3399pro-rock-pi-n10.dts        | 18 ++++++++
>   arch/arm/dts/rk3399pro-u-boot.dtsi            |  6 +++
>   board/rockchip/evb_rk3399/MAINTAINERS         |  6 +++
>   configs/rock-pi-n10-rk3399pro_defconfig       | 46 +++++++++++++++++++
>   6 files changed, 85 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
>   create mode 100644 arch/arm/dts/rk3399pro-rock-pi-n10.dts
>   create mode 100644 arch/arm/dts/rk3399pro-u-boot.dtsi
>   create mode 100644 configs/rock-pi-n10-rk3399pro_defconfig
>
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 9900b44274..07dfe06230 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -136,7 +136,8 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
>   	rk3399-roc-pc-mezzanine.dtb \
>   	rk3399-rock-pi-4.dtb \
>   	rk3399-rock960.dtb \
> -	rk3399-rockpro64.dtb
> +	rk3399-rockpro64.dtb \
> +	rk3399pro-rock-pi-n10.dtb
>   
>   dtb-$(CONFIG_ROCKCHIP_RV1108) += \
>   	rv1108-elgin-r1.dtb \
> diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi b/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
> new file mode 100644
> index 0000000000..946a0230db
> --- /dev/null
> +++ b/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
> @@ -0,0 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399pro-u-boot.dtsi"
> +#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10.dts b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
> new file mode 100644
> index 0000000000..6ac2d4d721
> --- /dev/null
> +++ b/arch/arm/dts/rk3399pro-rock-pi-n10.dts
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2019 Radxa Limited
> + * Copyright (c) 2019 Amarula Solutions(India)
> + */
> +
> +/dts-v1/;
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +#include "rk3399pro-vmarc-som.dtsi"
> +#include <rockchip-radxa-dalang-carrier.dtsi>
> +
> +/ {
> +	model = "Radxa ROCK Pi N10";
> +	compatible = "radxa,rockpi-n10", "vamrs,rk3399pro-vmarc-som",
> +		     "rockchip,rk3399pro";
> +};
> diff --git a/arch/arm/dts/rk3399pro-u-boot.dtsi b/arch/arm/dts/rk3399pro-u-boot.dtsi
> new file mode 100644
> index 0000000000..7bddc3acdb
> --- /dev/null
> +++ b/arch/arm/dts/rk3399pro-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-u-boot.dtsi"
> diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
> index 792df1087f..578638a58b 100644
> --- a/board/rockchip/evb_rk3399/MAINTAINERS
> +++ b/board/rockchip/evb_rk3399/MAINTAINERS
> @@ -68,3 +68,9 @@ M:	Jagan Teki <jagan@amarulasolutions.com>
>   S:	Maintained
>   F:	configs/rock-pi-4-rk3399_defconfig
>   F:	arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
> +
> +ROCK-PI-N10
> +M:	Jagan Teki <jagan@amarulasolutions.com>
> +S:	Maintained
> +F:	configs/rock-pi-n10-rk3399pro_defconfig
> +F:	arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
> diff --git a/configs/rock-pi-n10-rk3399pro_defconfig b/configs/rock-pi-n10-rk3399pro_defconfig
> new file mode 100644
> index 0000000000..c705ce01ce
> --- /dev/null
> +++ b/configs/rock-pi-n10-rk3399pro_defconfig
> @@ -0,0 +1,46 @@
> +CONFIG_ARM=y
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_GPIO_SUPPORT=y
> +CONFIG_ENV_OFFSET=0x3F8000
> +CONFIG_ROCKCHIP_RK3399=y
> +CONFIG_TARGET_EVB_RK3399=y
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_DEBUG_UART_BASE=0xFF1A0000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_DEBUG_UART=y
> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399pro-rock-pi-n10.dtb"
> +CONFIG_MISC_INIT_R=y
> +CONFIG_DISPLAY_BOARDINFO_LATE=y
> +# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
> +CONFIG_SPL_STACK_R=y
> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
> +CONFIG_TPL=y
> +CONFIG_CMD_BOOTZ=y
> +CONFIG_CMD_GPT=y
> +CONFIG_CMD_MMC=y
> +# CONFIG_CMD_SETEXPR is not set
> +CONFIG_CMD_TIME=y
> +CONFIG_SPL_OF_CONTROL=y
> +CONFIG_DEFAULT_DEVICE_TREE="rk3399pro-rock-pi-n10"
> +CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
> +CONFIG_ENV_IS_IN_MMC=y
> +CONFIG_SYS_RELOC_GD_ENV_ADDR=y
> +CONFIG_ROCKCHIP_GPIO=y
> +CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MISC=y
> +CONFIG_MMC_DW=y
> +CONFIG_MMC_DW_ROCKCHIP=y
> +CONFIG_MMC_SDHCI=y
> +CONFIG_MMC_SDHCI_ROCKCHIP=y
> +CONFIG_DM_ETH=y
> +CONFIG_ETH_DESIGNWARE=y
> +CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_PMIC_RK8XX=y
> +CONFIG_REGULATOR_PWM=y
> +CONFIG_REGULATOR_RK8XX=y
> +CONFIG_PWM_ROCKCHIP=y
> +CONFIG_BAUDRATE=1500000
> +CONFIG_DEBUG_UART_SHIFT=2
> +CONFIG_SYSRESET=y
> +CONFIG_ERRNO_STR=y
