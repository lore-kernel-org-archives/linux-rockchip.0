From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 16/16] roc-rk3399-pc: Enable USB3.0 Host
Date: Fri, 15 May 2020 10:51:12 +0800
Message-ID: <de3ee626-84c0-2d5f-24f2-d9b5f933f58a@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071803.5781-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071803.5781-1-frank.wang@rock-chips.com>
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
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/13 下午3:18, Frank Wang wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
>
> Enable USB3.0 Host support for ROC-RK3399-PC boards.
>
> Tested USB3.0 SSD on Type C1 port on board.
>
> => usb start
> starting USB...
> Bus usb@fe380000: USB EHCI 1.00
> Bus usb@fe3c0000: USB EHCI 1.00
> Bus dwc3: usb maximum-speed not found
> Register 2000140 NbrPorts 2
> Starting the controller
> USB XHCI 1.10
> scanning bus usb@fe380000 for devices... 1 USB Device(s) found
> scanning bus usb@fe3c0000 for devices... 2 USB Device(s) found
> scanning bus dwc3 for devices... 6 USB Device(s) found
>         scanning usb for storage devices... 1 Storage Device(s) found
> => usb tree
> USB device tree:
>    1  Hub (480 Mb/s, 0mA)
>       u-boot EHCI Host Controller
>
>    1  Hub (480 Mb/s, 0mA)
>    |  u-boot EHCI Host Controller
>    |
>    +-2  Hub (480 Mb/s, 100mA)
>          USB 2.0 Hub [MTT]
>
>    1  Hub (5 Gb/s, 0mA)
>    |  U-Boot XHCI Host Controller
>    |
>    +-2  Hub (480 Mb/s, 0mA)
>    | |  VIA Labs, Inc. USB2.0 Hub
>    | |
>    | +-4  Hub (480 Mb/s, 100mA)
>    |   |   USB 2.0 Hub
>    |   |
>    |   +-5   (480 Mb/s, 100mA)
>    |        VIA Technologies Inc. USB 2.0 BILLBOARD  0000000000000001
>    |
>    +-3  Hub (5 Gb/s, 0mA)
>      |  VIA Labs, Inc. USB3.0 Hub
>      |
>      +-6  Mass Storage (5 Gb/s, 224mA)
>           JMicron External Disk 3.0 DB12345678A2
>
> => usb reset
> resetting USB...
> Bus usb@fe380000: USB EHCI 1.00
> Bus usb@fe3c0000: USB EHCI 1.00
> Bus dwc3: usb maximum-speed not found
> Register 2000140 NbrPorts 2
> Starting the controller
> USB XHCI 1.10
> scanning bus usb@fe380000 for devices... 1 USB Device(s) found
> scanning bus usb@fe3c0000 for devices... 2 USB Device(s) found
> scanning bus dwc3 for devices... 6 USB Device(s) found
>         scanning usb for storage devices... 1 Storage Device(s) found
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   configs/roc-pc-mezzanine-rk3399_defconfig | 5 +++++
>   configs/roc-pc-rk3399_defconfig           | 6 ++++++
>   2 files changed, 11 insertions(+)
>
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
> index 0b853805f3..1f10856caa 100644
> --- a/configs/roc-pc-mezzanine-rk3399_defconfig
> +++ b/configs/roc-pc-mezzanine-rk3399_defconfig
> @@ -29,6 +29,7 @@ CONFIG_ENV_IS_IN_MMC=y
>   CONFIG_SYS_RELOC_GD_ENV_ADDR=y
>   CONFIG_ROCKCHIP_GPIO=y
>   CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MISC=y
>   CONFIG_MMC_DW=y
>   CONFIG_MMC_DW_ROCKCHIP=y
>   CONFIG_MMC_SDHCI=y
> @@ -39,6 +40,8 @@ CONFIG_ETH_DESIGNWARE=y
>   CONFIG_GMAC_ROCKCHIP=y
>   CONFIG_NVME=y
>   CONFIG_PCI=y
> +CONFIG_PHY_ROCKCHIP_INNO_USB2=y
> +CONFIG_PHY_ROCKCHIP_TYPEC=y
>   CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
> @@ -54,6 +57,8 @@ CONFIG_USB_XHCI_HCD=y
>   CONFIG_USB_XHCI_DWC3=y
>   CONFIG_USB_EHCI_HCD=y
>   CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_DWC3=y
> +CONFIG_USB_DWC3_GENERIC=y
>   CONFIG_USB_HOST_ETHER=y
>   CONFIG_USB_ETHER_ASIX=y
>   CONFIG_USB_ETHER_ASIX88179=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index aff690f039..76e76c160e 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -28,6 +28,7 @@ CONFIG_ENV_IS_IN_MMC=y
>   CONFIG_SYS_RELOC_GD_ENV_ADDR=y
>   CONFIG_ROCKCHIP_GPIO=y
>   CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MISC=y
>   CONFIG_MMC_DW=y
>   CONFIG_MMC_DW_ROCKCHIP=y
>   CONFIG_MMC_SDHCI=y
> @@ -36,11 +37,14 @@ CONFIG_SPI_FLASH_WINBOND=y
>   CONFIG_DM_ETH=y
>   CONFIG_ETH_DESIGNWARE=y
>   CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_PHY_ROCKCHIP_INNO_USB2=y
> +CONFIG_PHY_ROCKCHIP_TYPEC=y
>   CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
>   CONFIG_RAM_RK3399_LPDDR4=y
> +CONFIG_DM_RESET=y
>   CONFIG_BAUDRATE=1500000
>   CONFIG_DEBUG_UART_SHIFT=2
>   CONFIG_ROCKCHIP_SPI=y
> @@ -50,6 +54,8 @@ CONFIG_USB_XHCI_HCD=y
>   CONFIG_USB_XHCI_DWC3=y
>   CONFIG_USB_EHCI_HCD=y
>   CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_DWC3=y
> +CONFIG_USB_DWC3_GENERIC=y
>   CONFIG_USB_KEYBOARD=y
>   CONFIG_USB_HOST_ETHER=y
>   CONFIG_USB_ETHER_ASIX=y
