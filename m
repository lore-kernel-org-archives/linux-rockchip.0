From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/3] ARM: dts: rockchip: Add Radxa Rock Pi N8 initial
 support
Date: Sat, 27 Jun 2020 23:11:34 +0800
Message-ID: <36ea5a0c-53f7-c978-3e6d-c6fda2617840@rock-chips.com>
References: <20200618161220.219452-1-jagan@amarulasolutions.com>
 <20200618161220.219452-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618161220.219452-4-jagan@amarulasolutions.com>
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>, U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/19 上午12:12, Jagan Teki wrote:
> Rock Pi N8 is a Rockchip RK3288 based SBC, which has
> - VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
> - Compatible carrier board from Radxa.
>
> VAMRC RK3288 SOM need to mount on top of radxa dalang
> carrier board for making Rock Pi N8 SBC.
>
> So, add initial support for Rock Pi N8 by including rk3288,
> rk3288 vamrc-som and raxda dalang carrier board dtsi files.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/Makefile                      |  1 +
>   arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi | 33 +++++++++++
>   arch/arm/dts/rk3288-rock-pi-n8.dts         | 17 ++++++
>   arch/arm/dts/rk3288-vmarc-som.dtsi         |  9 ---
>   board/rockchip/evb_rk3288/MAINTAINERS      |  6 ++
>   configs/rock-pi-n8-rk3288_defconfig        | 66 ++++++++++++++++++++++
>   6 files changed, 123 insertions(+), 9 deletions(-)
>   create mode 100644 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
>   create mode 100644 arch/arm/dts/rk3288-rock-pi-n8.dts
>   create mode 100644 configs/rock-pi-n8-rk3288_defconfig
>
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 07dfe06230..aae95811c1 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -92,6 +92,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3288) += \
>   	rk3288-phycore-rdk.dtb \
>   	rk3288-popmetal.dtb \
>   	rk3288-rock2-square.dtb \
> +	rk3288-rock-pi-n8.dtb \
>   	rk3288-tinker.dtb \
>   	rk3288-tinker-s.dtb \
>   	rk3288-veyron-jerry.dtb \
> diff --git a/arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi b/arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
> new file mode 100644
> index 0000000000..e9d7404ed9
> --- /dev/null
> +++ b/arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2017 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3288-u-boot.dtsi"
> +
> +&dmc {
> +	rockchip,pctl-timing = <0x215 0xc8 0x0 0x35 0x26 0x2 0x70 0x2000d
> +		0x6 0x0 0x8 0x4 0x17 0x24 0xd 0x6
> +		0x4 0x8 0x4 0x76 0x4 0x0 0x30 0x0
> +		0x1 0x2 0x2 0x4 0x0 0x0 0xc0 0x4
> +		0x8 0x1f4>;
> +	rockchip,phy-timing = <0x48d7dd93 0x187008d8 0x121076
> +		0x0 0xc3 0x6 0x2>;
> +	rockchip,sdram-params = <0x20d266a4 0x5b6 2 533000000 6 9 0>;
> +};
> +
> +&sdmmc {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&emmc {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&uart2 {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&pinctrl {
> +	u-boot,dm-pre-reloc;
> +};
> diff --git a/arch/arm/dts/rk3288-rock-pi-n8.dts b/arch/arm/dts/rk3288-rock-pi-n8.dts
> new file mode 100644
> index 0000000000..c8637a50c1
> --- /dev/null
> +++ b/arch/arm/dts/rk3288-rock-pi-n8.dts
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2019 Vamrs Limited
> + * Copyright (c) 2019 Amarula Solutions(India)
> + */
> +
> +/dts-v1/;
> +#include "rk3288.dtsi"
> +#include "rk3288-vmarc-som.dtsi"
> +#include <rockchip-radxa-dalang-carrier.dtsi>
> +
> +/ {
> +	model = "Radxa ROCK Pi N8";
> +	compatible = "radxa,rockpi-n8", "vamrs,rk3288-vmarc-som",
> +		     "rockchip,rk3288";
> +};
> diff --git a/arch/arm/dts/rk3288-vmarc-som.dtsi b/arch/arm/dts/rk3288-vmarc-som.dtsi
> index 1549ac4044..3cffe61cdf 100644
> --- a/arch/arm/dts/rk3288-vmarc-som.dtsi
> +++ b/arch/arm/dts/rk3288-vmarc-som.dtsi
> @@ -251,15 +251,6 @@
>   	};
>   };
>   
> -&io_domains {
> -	bb-supply = <&vcc_io>;
> -	flash0-supply = <&vccio_flash>;
> -	gpio1830-supply = <&vcc_18>;
> -	gpio30-supply = <&vcc_io>;
> -	sdcard-supply = <&vccio_sd>;
> -	status = "okay";
> -};
> -
>   &pinctrl {
>   	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
>   		drive-strength = <8>;
> diff --git a/board/rockchip/evb_rk3288/MAINTAINERS b/board/rockchip/evb_rk3288/MAINTAINERS
> index 8a4f127f88..9bd6b1e8a4 100644
> --- a/board/rockchip/evb_rk3288/MAINTAINERS
> +++ b/board/rockchip/evb_rk3288/MAINTAINERS
> @@ -4,3 +4,9 @@ S:	Maintained
>   F:	board/rockchip/evb_rk3288
>   F:	include/configs/evb_rk3288.h
>   F:	configs/evb-rk3288_defconfig
> +
> +ROCK-PI-N8
> +M:	Jagan Teki <jagan@amarulasolutions.com>
> +S:	Maintained
> +F:	configs/rock-pi-n8-rk3288_defconfig
> +F:	arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
> diff --git a/configs/rock-pi-n8-rk3288_defconfig b/configs/rock-pi-n8-rk3288_defconfig
> new file mode 100644
> index 0000000000..6b31e19eda
> --- /dev/null
> +++ b/configs/rock-pi-n8-rk3288_defconfig
> @@ -0,0 +1,66 @@
> +CONFIG_ARM=y
> +# CONFIG_SPL_USE_ARCH_MEMCPY is not set
> +# CONFIG_SPL_USE_ARCH_MEMSET is not set
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00100000
> +CONFIG_ENV_OFFSET=0x3F8000
> +CONFIG_ROCKCHIP_RK3288=y
> +CONFIG_TARGET_EVB_RK3288=y
> +CONFIG_SPL_STACK_R_ADDR=0x80000
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_DEBUG_UART_BASE=0xff690000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_DEBUG_UART=y
> +CONFIG_USE_PREBOOT=y
> +CONFIG_SILENT_CONSOLE=y
> +CONFIG_DEFAULT_FDT_FILE="rk3288-rock-pi-n8.dtb"
> +CONFIG_DISPLAY_BOARDINFO_LATE=y
> +CONFIG_SPL_STACK_R=y
> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
> +CONFIG_CMD_SPL=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_GPT=y
> +CONFIG_CMD_I2C=y
> +CONFIG_CMD_MMC=y
> +# CONFIG_CMD_SETEXPR is not set
> +CONFIG_CMD_CACHE=y
> +CONFIG_CMD_TIME=y
> +CONFIG_CMD_PMIC=y
> +CONFIG_CMD_REGULATOR=y
> +# CONFIG_SPL_DOS_PARTITION is not set
> +# CONFIG_SPL_EFI_PARTITION is not set
> +CONFIG_SPL_PARTITION_UUIDS=y
> +CONFIG_SPL_OF_CONTROL=y
> +CONFIG_DEFAULT_DEVICE_TREE="rk3288-rock-pi-n8"
> +CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
> +CONFIG_ENV_IS_IN_MMC=y
> +CONFIG_SYS_RELOC_GD_ENV_ADDR=y
> +CONFIG_REGMAP=y
> +CONFIG_SPL_REGMAP=y
> +CONFIG_SYSCON=y
> +CONFIG_SPL_SYSCON=y
> +# CONFIG_SPL_SIMPLE_BUS is not set
> +CONFIG_CLK=y
> +CONFIG_SPL_CLK=y
> +CONFIG_ROCKCHIP_GPIO=y
> +CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_LED=y
> +CONFIG_LED_GPIO=y
> +CONFIG_MMC_DW=y
> +CONFIG_MMC_DW_ROCKCHIP=y
> +CONFIG_DM_ETH=y
> +CONFIG_ETH_DESIGNWARE=y
> +CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_PINCTRL=y
> +CONFIG_SPL_PINCTRL=y
> +CONFIG_DM_PMIC=y
> +# CONFIG_SPL_PMIC_CHILDREN is not set
> +CONFIG_PMIC_RK8XX=y
> +CONFIG_DM_REGULATOR_FIXED=y
> +CONFIG_REGULATOR_RK8XX=y
> +CONFIG_PWM_ROCKCHIP=y
> +CONFIG_RAM=y
> +CONFIG_SPL_RAM=y
> +CONFIG_DEBUG_UART_SHIFT=2
> +CONFIG_SYSRESET=y
> +CONFIG_ERRNO_STR=y
