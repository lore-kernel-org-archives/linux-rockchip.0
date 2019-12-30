From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
Date: Mon, 30 Dec 2019 11:05:29 +0800
Message-ID: <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-12-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-12-jagan@amarulasolutions.com>
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:54, Jagan Teki wrote:
> Add SPI boot support for ROC-RK3399-PC board.
>
> This would add separate config file

What is the key reason to have a new separate config file? I think it 
would be much better

to use the same defconfig, spi boot is one of features like other 
features, it should not need

a separate config.


Thanks,

- Kever

>   for SPI along
> with dts changes.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>   arch/arm/dts/rk3399-roc-pc-u-boot.dtsi | 12 ++++-
>   board/rockchip/evb_rk3399/MAINTAINERS  |  2 +
>   configs/roc-pc-rk3399-spi_defconfig    | 62 ++++++++++++++++++++++++++
>   3 files changed, 75 insertions(+), 1 deletion(-)
>   create mode 100644 configs/roc-pc-rk3399-spi_defconfig
>
> diff --git a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
> index 5746442981..6e43c7c71b 100644
> --- a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
> @@ -11,8 +11,18 @@
>   		spi0 = &spi1;
>   	};
>   
> +	config {
> +		u-boot,spl-payload-offset = <0x40000>; /* @ 256KB */
> +	};
> +
>   	chosen {
> -		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
> +		u-boot,spl-boot-order = "same-as-spl", &spi_flash, &sdhci, &sdmmc;
> +	};
> +};
> +
> +&spi1 {
> +	spi_flash: flash@0 {
> +		u-boot,dm-pre-reloc;
>   	};
>   };
>   
> diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
> index eab4c4c525..8de6ec88f1 100644
> --- a/board/rockchip/evb_rk3399/MAINTAINERS
> +++ b/board/rockchip/evb_rk3399/MAINTAINERS
> @@ -57,8 +57,10 @@ F:	arch/arm/dts/rk3399-orangepi-u-boot.dtsi
>   
>   ROC-RK3399-PC
>   M:	Levin Du <djw@t-chip.com.cn>
> +M:	Jagan Teki <jagan@amarulasolutions.com>
>   S:	Maintained
>   F:	configs/roc-pc-rk3399_defconfig
> +F:	configs/roc-pc-rk3399-spi_defconfig
>   F:	arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
>   
>   ROCK-PI-4
> diff --git a/configs/roc-pc-rk3399-spi_defconfig b/configs/roc-pc-rk3399-spi_defconfig
> new file mode 100644
> index 0000000000..1fdfb10101
> --- /dev/null
> +++ b/configs/roc-pc-rk3399-spi_defconfig
> @@ -0,0 +1,62 @@
> +CONFIG_ARM=y
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_ROCKCHIP_RK3399=y
> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_DEBUG_UART_BASE=0xFF1A0000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_DEBUG_UART=y
> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
> +# CONFIG_DISPLAY_CPUINFO is not set
> +CONFIG_DISPLAY_BOARDINFO_LATE=y
> +# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
> +# CONFIG_SPL_MMC_SUPPORT is not set
> +CONFIG_SPL_SPI_FLASH_SUPPORT=y
> +CONFIG_SPL_SPI_SUPPORT=y
> +CONFIG_SPL_SPI_LOAD=y
> +CONFIG_SPL_TEXT_BASE=0xff8c2000
> +CONFIG_SPL_STACK_R=y
> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
> +CONFIG_CMD_BOOTZ=y
> +CONFIG_CMD_GPT=y
> +CONFIG_CMD_MMC=y
> +CONFIG_CMD_USB=y
> +# CONFIG_CMD_SETEXPR is not set
> +CONFIG_CMD_TIME=y
> +CONFIG_SPL_OF_CONTROL=y
> +CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
> +CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
> +CONFIG_ENV_IS_IN_SPI_FLASH=y
> +CONFIG_SYS_RELOC_GD_ENV_ADDR=y
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
> +CONFIG_RAM_RK3399_LPDDR4=y
> +CONFIG_BAUDRATE=1500000
> +CONFIG_DEBUG_UART_SHIFT=2
> +CONFIG_SYSRESET=y
> +CONFIG_SPI_FLASH_WINBOND=y
> +CONFIG_ROCKCHIP_SPI=y
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
> +CONFIG_ERRNO_STR=y
