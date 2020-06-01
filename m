From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCHv5][2/2] rockchip: rk3328: add rock-pi-e-rk3328_defconfig
 file
Date: Mon, 1 Jun 2020 16:43:19 +0800
Message-ID: <336558d9-2bf5-f4e7-087d-af123ed15cc0@rock-chips.com>
References: <tencent_F69432040DE3A0ED4FE96B829EA38AC2BD09@qq.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <tencent_F69432040DE3A0ED4FE96B829EA38AC2BD09@qq.com>
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
To: "b.l.huang" <banglang.huang@foxmail.com>, u-boot <u-boot@lists.denx.de>
Cc: trini <trini@konsulko.com>, "Chen-Yu&nbsp,Tsai" <wens@kernel.org>, "philipp.tomsich" <philipp.tomsich@theobroma-systems.com>, linux-rockchip <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/1 上午12:02, b.l.huang wrote:
> This commit add the default configuration file and relevant description
> for rock-pi-e board
>
> Signed-off-by: Banglang Huang <banglang.huang@foxmail.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   board/rockchip/evb_rk3328/MAINTAINERS |   7 ++
>   configs/rock-pi-e-rk3328_defconfig    | 104 ++++++++++++++++++++++++++
>   doc/board/rockchip/rockchip.rst       |   1 +
>   3 files changed, 112 insertions(+)
>   create mode 100644 configs/rock-pi-e-rk3328_defconfig
>
> diff --git a/board/rockchip/evb_rk3328/MAINTAINERS b/board/rockchip/evb_rk3328/MAINTAINERS
> index 89becf41c5..e7dd59ff4e 100644
> --- a/board/rockchip/evb_rk3328/MAINTAINERS
> +++ b/board/rockchip/evb_rk3328/MAINTAINERS
> @@ -17,3 +17,10 @@ M:      Matwey V. Kornilov <matwey.kornilov@gmail.com>
>   S:      Maintained
>   F:      configs/rock64-rk3328_defconfig
>   F:      arch/arm/dts/rk3328-rock64-u-boot.dtsi
> +
> +ROCKPIE-RK3328
> +M:      Banglang Huang <banglang.huang@foxmail.com>
> +S:      Maintained
> +F:      configs/rock-pi-e-rk3328_defconfig
> +F:      arch/arm/dts/rk3328-rock-pi-e.dts
> +F:      arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
> diff --git a/configs/rock-pi-e-rk3328_defconfig b/configs/rock-pi-e-rk3328_defconfig
> new file mode 100644
> index 0000000000..759838775f
> --- /dev/null
> +++ b/configs/rock-pi-e-rk3328_defconfig
> @@ -0,0 +1,104 @@
> +CONFIG_ARM=y
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_GPIO_SUPPORT=y
> +CONFIG_ENV_OFFSET=0x3F8000
> +CONFIG_ROCKCHIP_RK3328=y
> +CONFIG_TPL_ROCKCHIP_COMMON_BOARD=y
> +CONFIG_TPL_LIBCOMMON_SUPPORT=y
> +CONFIG_TPL_LIBGENERIC_SUPPORT=y
> +CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
> +CONFIG_SPL_STACK_R_ADDR=0x4000000
> +CONFIG_SPL_SYS_MALLOC_F_LEN=0x4000
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_DEBUG_UART_BASE=0xFF130000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_SMBIOS_PRODUCT_NAME="rock-pi-e_rk3328"
> +CONFIG_DEBUG_UART=y
> +CONFIG_TPL_SYS_MALLOC_F_LEN=0x800
> +# CONFIG_ANDROID_BOOT_IMAGE is not set
> +CONFIG_FIT=y
> +CONFIG_FIT_VERBOSE=y
> +CONFIG_SPL_LOAD_FIT=y
> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3328-rock-pi-e.dtb"
> +CONFIG_MISC_INIT_R=y
> +# CONFIG_DISPLAY_CPUINFO is not set
> +CONFIG_DISPLAY_BOARDINFO_LATE=y
> +# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
> +CONFIG_TPL_SYS_MALLOC_SIMPLE=y
> +CONFIG_SPL_STACK_R=y
> +CONFIG_SPL_I2C_SUPPORT=y
> +CONFIG_SPL_POWER_SUPPORT=y
> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
> +CONFIG_SPL_ATF=y
> +CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
> +CONFIG_TPL_DRIVERS_MISC_SUPPORT=y
> +CONFIG_CMD_BOOTZ=y
> +CONFIG_CMD_GPT=y
> +CONFIG_CMD_MMC=y
> +CONFIG_CMD_USB=y
> +CONFIG_CMD_TIME=y
> +CONFIG_SPL_OF_CONTROL=y
> +CONFIG_TPL_OF_CONTROL=y
> +CONFIG_DEFAULT_DEVICE_TREE="rk3328-rock-pi-e"
> +CONFIG_OF_SPL_REMOVE_PROPS="clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
> +CONFIG_TPL_OF_PLATDATA=y
> +CONFIG_ENV_IS_IN_MMC=y
> +CONFIG_SYS_RELOC_GD_ENV_ADDR=y
> +CONFIG_NET_RANDOM_ETHADDR=y
> +CONFIG_TPL_DM=y
> +CONFIG_REGMAP=y
> +CONFIG_SPL_REGMAP=y
> +CONFIG_TPL_REGMAP=y
> +CONFIG_SYSCON=y
> +CONFIG_SPL_SYSCON=y
> +CONFIG_TPL_SYSCON=y
> +CONFIG_CLK=y
> +CONFIG_SPL_CLK=y
> +CONFIG_FASTBOOT_BUF_ADDR=0x800800
> +CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
> +CONFIG_ROCKCHIP_GPIO=y
> +CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MMC_DW=y
> +CONFIG_MMC_DW_ROCKCHIP=y
> +CONFIG_SF_DEFAULT_SPEED=20000000
> +CONFIG_DM_ETH=y
> +CONFIG_ETH_DESIGNWARE=y
> +CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_PHY=y
> +CONFIG_PINCTRL=y
> +CONFIG_SPL_PINCTRL=y
> +CONFIG_DM_PMIC=y
> +CONFIG_PMIC_RK8XX=y
> +CONFIG_SPL_DM_REGULATOR=y
> +CONFIG_REGULATOR_PWM=y
> +CONFIG_SPL_DM_REGULATOR_FIXED=y
> +CONFIG_DM_REGULATOR_FIXED=y
> +CONFIG_REGULATOR_RK8XX=y
> +CONFIG_PWM_ROCKCHIP=y
> +CONFIG_RAM=y
> +CONFIG_SPL_RAM=y
> +CONFIG_TPL_RAM=y
> +CONFIG_DM_RESET=y
> +CONFIG_BAUDRATE=1500000
> +CONFIG_DEBUG_UART_SHIFT=2
> +CONFIG_DEBUG_UART_ANNOUNCE=y
> +CONFIG_DEBUG_UART_SKIP_INIT=y
> +CONFIG_SYSRESET=y
> +# CONFIG_TPL_SYSRESET is not set
> +CONFIG_USB=y
> +CONFIG_USB_XHCI_HCD=y
> +CONFIG_USB_XHCI_DWC3=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_OHCI_HCD=y
> +CONFIG_USB_OHCI_GENERIC=y
> +CONFIG_USB_DWC2=y
> +CONFIG_USB_DWC3=y
> +# CONFIG_USB_DWC3_GADGET is not set
> +CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DWC2_OTG=y
> +CONFIG_SPL_TINY_MEMSET=y
> +CONFIG_TPL_TINY_MEMSET=y
> +CONFIG_ERRNO_STR=y
> +CONFIG_SMBIOS_MANUFACTURER="radxa"
> diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
> index 7b72fab496..e7dee7d0ac 100644
> --- a/doc/board/rockchip/rockchip.rst
> +++ b/doc/board/rockchip/rockchip.rst
> @@ -48,6 +48,7 @@ List of mainline supported rockchip boards:
>        - Rockchip Evb-RK3328 (evb-rk3328)
>        - Pine64 Rock64 (rock64-rk3328)
>        - Firefly-RK3328 (roc-cc-rk3328)
> +     - Radxa Rockpi E (rock-pi-e-rk3328)
>   * rk3368
>        - GeekBox (geekbox)
>        - PX5 EVB (evb-px5)
