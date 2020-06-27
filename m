From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 5/6] roc-rk3399-pc: Enable USB Gadget
Date: Sat, 27 Jun 2020 22:39:19 +0800
Message-ID: <2f253073-47aa-3ba2-762f-0e0c7bc42f4b@rock-chips.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
 <20200618141259.155581-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618141259.155581-5-jagan@amarulasolutions.com>
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Suniel Mahesh <sunil@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/18 下午10:12, Jagan Teki wrote:
> Enable DWC3 core, gadget for roc-rk3399-pc board.
>
> This would help to use fastboot by default.
>
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
>   configs/roc-pc-mezzanine-rk3399_defconfig | 3 +++
>   configs/roc-pc-rk3399_defconfig           | 3 +++
>   2 files changed, 6 insertions(+)
>
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
> index fd1b85c1e4..7906948374 100644
> --- a/configs/roc-pc-mezzanine-rk3399_defconfig
> +++ b/configs/roc-pc-mezzanine-rk3399_defconfig
> @@ -12,6 +12,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>   CONFIG_SPL_SPI_FLASH_SUPPORT=y
>   CONFIG_SPL_SPI_SUPPORT=y
>   CONFIG_DEBUG_UART=y
> +# CONFIG_ANDROID_BOOT_IMAGE is not set
>   CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc-mezzanine.dtb"
>   CONFIG_DISPLAY_BOARDINFO_LATE=y
>   # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
> @@ -64,7 +65,9 @@ CONFIG_USB_EHCI_HCD=y
>   CONFIG_USB_EHCI_GENERIC=y
>   CONFIG_USB_DWC3=y
>   CONFIG_USB_DWC3_GENERIC=y
> +CONFIG_ROCKCHIP_USB2_PHY=y
>   CONFIG_USB_KEYBOARD=y
> +CONFIG_USB_GADGET=y
>   CONFIG_USB_HOST_ETHER=y
>   CONFIG_USB_ETHER_ASIX=y
>   CONFIG_USB_ETHER_ASIX88179=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index 80e7001481..046fb73858 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -12,6 +12,7 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>   CONFIG_SPL_SPI_FLASH_SUPPORT=y
>   CONFIG_SPL_SPI_SUPPORT=y
>   CONFIG_DEBUG_UART=y
> +# CONFIG_ANDROID_BOOT_IMAGE is not set
>   CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
>   CONFIG_DISPLAY_BOARDINFO_LATE=y
>   # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
> @@ -61,7 +62,9 @@ CONFIG_USB_EHCI_HCD=y
>   CONFIG_USB_EHCI_GENERIC=y
>   CONFIG_USB_DWC3=y
>   CONFIG_USB_DWC3_GENERIC=y
> +CONFIG_ROCKCHIP_USB2_PHY=y
>   CONFIG_USB_KEYBOARD=y
> +CONFIG_USB_GADGET=y
>   CONFIG_USB_HOST_ETHER=y
>   CONFIG_USB_ETHER_ASIX=y
>   CONFIG_USB_ETHER_ASIX88179=y
