From: Kever Yang <kever.yang@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_1/6=5d_rock-pi-4=3a_Enable_USB3_Host?=
 =?UTF-8?B?44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytr?=
 =?UTF-8?B?ZXZlci55YW5nPXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6M=?=
 =?UTF-8?B?5Y+R44CR?=
Date: Sat, 27 Jun 2020 22:37:12 +0800
Message-ID: <5eb1d158-fdb3-2b71-78ce-153a764489ec@rock-chips.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618141259.155581-1-jagan@amarulasolutions.com>
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


On 2020/6/18 下午10:12, Jagan Teki wrote:
> Enable USB3.0 Host support for RockPI-4 boards.
>
> Note that the Upper USB3.0 port is marked as otg and
> lower USB3.0 port marked as host, so this below log
> capture when USB3.0 mass storage plug in at lower
> USB 3.0 port.
>
> Log:
> Bus usb@fe380000: USB EHCI 1.00
> Bus usb@fe3c0000: USB EHCI 1.00
> Bus dwc3: usb maximum-speed not found
> Register 2000140 NbrPorts 2
> Starting the controller
> USB XHCI 1.10
> Bus dwc3: usb maximum-speed not found
> Register 2000140 NbrPorts 2
> Starting the controller
> USB XHCI 1.10
> scanning bus usb@fe380000 for devices... 1 USB Device(s) found
> scanning bus usb@fe3c0000 for devices... 1 USB Device(s) found
> scanning bus dwc3 for devices... 1 USB Device(s) found
> scanning bus dwc3 for devices... cannot reset port 1!?
> 2 USB Device(s) found
>         scanning usb for storage devices... 1 Storage Device(s) found
> => usb tree
> USB device tree:
>    1  Hub (480 Mb/s, 0mA)
>       u-boot EHCI Host Controller
>
>    1  Hub (480 Mb/s, 0mA)
>       u-boot EHCI Host Controller
>
>    1  Hub (5 Gb/s, 0mA)
>       U-Boot XHCI Host Controller
>
>    1  Hub (5 Gb/s, 0mA)
>    |  U-Boot XHCI Host Controller
>    |
>    +-2  Mass Storage (5 Gb/s, 224mA)
>         SanDisk Dual Drive 040130e3ee554b7078843f4eb331646
>
> Cc: Tom Cubie <tom@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - rebase on master
>
>   configs/rock-pi-4-rk3399_defconfig | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
> index 0d86fdc895..2487872219 100644
> --- a/configs/rock-pi-4-rk3399_defconfig
> +++ b/configs/rock-pi-4-rk3399_defconfig
> @@ -28,6 +28,7 @@ CONFIG_ENV_IS_IN_MMC=y
>   CONFIG_SYS_RELOC_GD_ENV_ADDR=y
>   CONFIG_ROCKCHIP_GPIO=y
>   CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MISC=y
>   CONFIG_MMC_DW=y
>   CONFIG_MMC_DW_ROCKCHIP=y
>   CONFIG_MMC_SDHCI=y
> @@ -35,11 +36,14 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
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
>   CONFIG_SYSRESET=y
> @@ -48,6 +52,8 @@ CONFIG_USB_XHCI_HCD=y
>   CONFIG_USB_XHCI_DWC3=y
>   CONFIG_USB_EHCI_HCD=y
>   CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_DWC3=y
> +CONFIG_USB_DWC3_GENERIC=y
>   CONFIG_USB_HOST_ETHER=y
>   CONFIG_USB_ETHER_ASIX=y
>   CONFIG_USB_ETHER_ASIX88179=y
