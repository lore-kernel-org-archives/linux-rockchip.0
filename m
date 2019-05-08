From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v7 08/11] rockchip: rk3399: Add Nanopi NEO4 board support
Date: Wed, 8 May 2019 11:48:34 +0800
Message-ID: <2d44a65c-ce44-b1d2-2272-00c2a5f36ca2@rock-chips.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
 <20190507183625.5983-9-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507183625.5983-9-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/08/2019 02:36 AM, Jagan Teki wrote:
> Add initial support for Nanopi NEO4 board.
>
> Specification
> - Rockchip RK3399
> - 1GB DDR3-1866
> - SD card slot
> - eMMC Socket
> - RTL8211E 1Gbps
> - AP6212 WiFI/BT
> - HDMI In/Out, DP, MIPI CSI
> - USB 3.0, 2.0
> - USB Type C power and data
> - GPIO expansion ports
> - DC 5V/3A
>
> Commit details of rk3399-nanopi-neo4.dts sync from Linux:
> "arm64: dts: rockchip: Add Nanopi NEO4 initial support"
> (sha1: 092470b537f19788d957aed12d835a179b606014)
>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>

Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Thanks,
- Kever
> ---
>  arch/arm/dts/Makefile                       |  1 +
>  arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi |  6 +++
>  arch/arm/dts/rk3399-nanopi-neo4.dts         | 50 +++++++++++++++++
>  board/rockchip/evb_rk3399/MAINTAINERS       |  6 +++
>  configs/nanopi-neo4-rk3399_defconfig        | 59 +++++++++++++++++++++
>  5 files changed, 122 insertions(+)
>  create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
>  create mode 100644 configs/nanopi-neo4-rk3399_defconfig
>
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index adaca524c3..529c506b4d 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -108,6 +108,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
>  	rk3399-gru-bob.dtb \
>  	rk3399-nanopc-t4.dtb \
>  	rk3399-nanopi-m4.dtb \
> +	rk3399-nanopi-neo4.dtb \
>  	rk3399-orangepi.dtb \
>  	rk3399-puma-ddr1333.dtb \
>  	rk3399-puma-ddr1600.dtb \
> diff --git a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
> new file mode 100644
> index 0000000000..7d22528f49
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-nanopi4-u-boot.dtsi"
> diff --git a/arch/arm/dts/rk3399-nanopi-neo4.dts b/arch/arm/dts/rk3399-nanopi-neo4.dts
> new file mode 100644
> index 0000000000..195410b089
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-nanopi-neo4.dts
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Amarula Solutions B.V.
> + * Author: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +/dts-v1/;
> +
> +#include "rk3399-nanopi4.dtsi"
> +
> +/ {
> +	model = "FriendlyARM NanoPi NEO4";
> +	compatible = "friendlyarm,nanopi-neo4", "rockchip,rk3399";
> +
> +	vdd_5v: vdd-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_5v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc5v0_core: vcc5v0-core {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_core";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vdd_5v>;
> +	};
> +
> +	vcc5v0_usb1: vcc5v0-usb1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb1";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};
> +
> +&vcc3v3_sys {
> +	vin-supply = <&vcc5v0_core>;
> +};
> +
> +&u2phy0_host {
> +	phy-supply = <&vcc5v0_usb1>;
> +};
> +
> +&vbus_typec {
> +	regulator-always-on;
> +	vin-supply = <&vdd_5v>;
> +};
> diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
> index f55c92f80c..1f51f65160 100644
> --- a/board/rockchip/evb_rk3399/MAINTAINERS
> +++ b/board/rockchip/evb_rk3399/MAINTAINERS
> @@ -18,6 +18,12 @@ S:	Maintained
>  F:	configs/nanopi-m4-rk3399_defconfig
>  F:	arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
>  
> +NANOPI-NEO4
> +M:	Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> +S:	Maintained
> +F:	configs/nanopi-neo4-rk3399_defconfig
> +F:	arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
> +
>  ORANGEPI-RK3399
>  M:	Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>  S:	Maintained
> diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
> new file mode 100644
> index 0000000000..188656a2b4
> --- /dev/null
> +++ b/configs/nanopi-neo4-rk3399_defconfig
> @@ -0,0 +1,59 @@
> +CONFIG_ARM=y
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_LIBCOMMON_SUPPORT=y
> +CONFIG_SPL_LIBGENERIC_SUPPORT=y
> +CONFIG_SYS_MALLOC_F_LEN=0x4000
> +CONFIG_ROCKCHIP_RK3399=y
> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
> +CONFIG_DEBUG_UART_BASE=0xFF1A0000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_SPL_STACK_R_ADDR=0x80000
> +CONFIG_DEBUG_UART=y
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-neo4.dtb"
> +# CONFIG_DISPLAY_CPUINFO is not set
> +CONFIG_DISPLAY_BOARDINFO_LATE=y
> +CONFIG_SPL_TEXT_BASE=0xff8c2000
> +CONFIG_SPL_STACK_R=y
> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
> +CONFIG_CMD_BOOTZ=y
> +CONFIG_CMD_GPT=y
> +CONFIG_CMD_MMC=y
> +CONFIG_CMD_SF=y
> +CONFIG_CMD_USB=y
> +# CONFIG_CMD_SETEXPR is not set
> +CONFIG_CMD_TIME=y
> +CONFIG_SPL_OF_CONTROL=y
> +CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopi-neo4"
> +CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
> +CONFIG_ENV_IS_IN_MMC=y
> +CONFIG_ROCKCHIP_GPIO=y
> +CONFIG_SYS_I2C_ROCKCHIP=y
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
> +CONFIG_USB=y
> +CONFIG_USB_XHCI_HCD=y
> +CONFIG_USB_XHCI_DWC3=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_HOST_ETHER=y
> +CONFIG_USB_ETHER_ASIX=y
> +CONFIG_USB_ETHER_ASIX88179=y
> +CONFIG_USB_ETHER_MCS7830=y
> +CONFIG_USB_ETHER_RTL8152=y
> +CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USE_TINY_PRINTF=y
> +CONFIG_ERRNO_STR=y
