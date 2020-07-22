From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 09/12] rockchip: rock-pi-n8: Enable on board devices
Date: Wed, 22 Jul 2020 20:30:58 +0800
Message-ID: <06157314-2f48-1811-0836-6eff816ceb30@rock-chips.com>
References: <20200721152443.37602-1-jagan@amarulasolutions.com>
 <20200721152443.37602-10-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721152443.37602-10-jagan@amarulasolutions.com>
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


On 2020/7/21 下午11:24, Jagan Teki wrote:
> From: Suniel Mahesh <sunil@amarulasolutions.com>
>
> Enable common on board devices for ROCKPi N8.
>
> - USB 2.0 Host
> - USB 2.0 OTG/Gadget
> - HDMI Out
>
> Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - squash common device enablement
>
>   configs/rock-pi-n8-rk3288_defconfig | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
>
> diff --git a/configs/rock-pi-n8-rk3288_defconfig b/configs/rock-pi-n8-rk3288_defconfig
> index 6b31e19eda..d218852d79 100644
> --- a/configs/rock-pi-n8-rk3288_defconfig
> +++ b/configs/rock-pi-n8-rk3288_defconfig
> @@ -11,8 +11,10 @@ CONFIG_NR_DRAM_BANKS=1
>   CONFIG_DEBUG_UART_BASE=0xff690000
>   CONFIG_DEBUG_UART_CLOCK=24000000
>   CONFIG_DEBUG_UART=y
> +# CONFIG_ANDROID_BOOT_IMAGE is not set
>   CONFIG_USE_PREBOOT=y
>   CONFIG_SILENT_CONSOLE=y
> +# CONFIG_CONSOLE_MUX is not set
>   CONFIG_DEFAULT_FDT_FILE="rk3288-rock-pi-n8.dtb"
>   CONFIG_DISPLAY_BOARDINFO_LATE=y
>   CONFIG_SPL_STACK_R=y
> @@ -22,6 +24,7 @@ CONFIG_CMD_GPIO=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_I2C=y
>   CONFIG_CMD_MMC=y
> +CONFIG_CMD_USB=y
>   # CONFIG_CMD_SETEXPR is not set
>   CONFIG_CMD_CACHE=y
>   CONFIG_CMD_TIME=y
> @@ -63,4 +66,17 @@ CONFIG_RAM=y
>   CONFIG_SPL_RAM=y
>   CONFIG_DEBUG_UART_SHIFT=2
>   CONFIG_SYSRESET=y
> +CONFIG_USB=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_DWC2=y
> +CONFIG_ROCKCHIP_USB2_PHY=y
> +CONFIG_USB_KEYBOARD=y
> +# CONFIG_USB_KEYBOARD_FN_KEYS is not set
> +CONFIG_USB_GADGET=y
> +CONFIG_USB_GADGET_DWC2_OTG=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
>   CONFIG_ERRNO_STR=y
