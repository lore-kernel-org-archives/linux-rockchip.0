From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 07/16] configs: Enable USB host on Rock-PI-N10
Date: Tue, 21 Jul 2020 11:20:33 +0800
Message-ID: <932a7eba-d5a7-d030-5f68-797c572eccd8@rock-chips.com>
References: <20200720185120.671064-1-jagan@amarulasolutions.com>
 <20200720185120.671064-8-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200720185120.671064-8-jagan@amarulasolutions.com>
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

Hi Jagan,

     For the same board config, please just enable all the features you 
need in one patch

since the drivers already there, no need the split them into pieces.


     BTW: please add prefix "rockchip" in subject

Thanks,

- Kever

On 2020/7/21 上午2:51, Jagan Teki wrote:
> From: Suniel Mahesh <sunil@amarulasolutions.com>
>
> Enable USB 3.0 and 2.0 and related configs for the Rock-PI-N10
> target, which hosts RK3399Pro-VMARC-SOM.
>
> Log:
> Bus usb@fe380000: USB EHCI 1.00
> Bus usb@fe3c0000: USB EHCI 1.00
> Bus dwc3: usb maximum-speed not found
> Register 2000140 NbrPorts 2
> Starting the controller
> USB XHCI 1.10
> scanning bus usb@fe380000 for devices... 1 USB Device(s) found
> scanning bus usb@fe3c0000 for devices... 1 USB Device(s) found
> scanning bus dwc3 for devices... cannot reset port 1!?
> 2 USB Device(s) found
>          scanning usb for storage devices... 1 Storage Device(s) found
> => usb tree
> USB device tree:
>          1  Hub (480 Mb/s, 0mA)
>                  u-boot EHCI Host Controller
>
>          1  Hub (480 Mb/s, 0mA)
>                  u-boot EHCI Host Controller
>
>          1  Hub (5 Gb/s, 0mA)
>          |  U-Boot XHCI Host Controller
>          |
>          +-2  Mass Storage (5 Gb/s, 224mA)
>                  SanDisk Dual Drive 04019c9b2e1a58f24ee318c3c123aa5
> => usb tree
> USB device tree:
> 1  Hub (480 Mb/s, 0mA)
> |  u-boot EHCI Host Controller
> |
> +-2  Mass Storage (480 Mb/s, 224mA)
>          SanDisk Dual Drive 04019c9b2e1a58f24ee318c3c123aa5
>
> 1  Hub (480 Mb/s, 0mA)
>     u-boot EHCI Host Controller
>
> Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>   configs/rock-pi-n10-rk3399pro_defconfig | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>
> diff --git a/configs/rock-pi-n10-rk3399pro_defconfig b/configs/rock-pi-n10-rk3399pro_defconfig
> index c705ce01ce..e09e656fbc 100644
> --- a/configs/rock-pi-n10-rk3399pro_defconfig
> +++ b/configs/rock-pi-n10-rk3399pro_defconfig
> @@ -19,6 +19,7 @@ CONFIG_TPL=y
>   CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
> +CONFIG_CMD_USB=y
>   # CONFIG_CMD_SETEXPR is not set
>   CONFIG_CMD_TIME=y
>   CONFIG_SPL_OF_CONTROL=y
> @@ -36,11 +37,23 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
>   CONFIG_DM_ETH=y
>   CONFIG_ETH_DESIGNWARE=y
>   CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_PHY_ROCKCHIP_INNO_USB2=y
> +CONFIG_PHY_ROCKCHIP_TYPEC=y
>   CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
> +CONFIG_DM_RESET=y
>   CONFIG_BAUDRATE=1500000
>   CONFIG_DEBUG_UART_SHIFT=2
>   CONFIG_SYSRESET=y
> +CONFIG_USB=y
> +CONFIG_USB_XHCI_HCD=y
> +CONFIG_USB_XHCI_DWC3=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_DWC3=y
> +CONFIG_USB_DWC3_GENERIC=y
> +CONFIG_USB_KEYBOARD=y
> +# CONFIG_USB_KEYBOARD_FN_KEYS is not set
>   CONFIG_ERRNO_STR=y
