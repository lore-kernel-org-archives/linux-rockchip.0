From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 12/12] rockchip: rock-p-n8/n10: Disable
 RAM_ROCKCHIP_DEBUG
Date: Wed, 22 Jul 2020 20:32:09 +0800
Message-ID: <06214622-cd1d-c1ae-6d62-eae6c21c9e1a@rock-chips.com>
References: <20200721152809.37927-1-jagan@amarulasolutions.com>
 <20200721152809.37927-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721152809.37927-3-jagan@amarulasolutions.com>
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


On 2020/7/21 下午11:28, Jagan Teki wrote:
> Disable ram rockchip debug driver for ROCKPi N8/N10 boards
> since we have verified ram in many instances with respective
> U-Boot versions.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - none
>
>   configs/rock-pi-n10-rk3399pro_defconfig | 1 +
>   configs/rock-pi-n8-rk3288_defconfig     | 1 +
>   2 files changed, 2 insertions(+)
>
> diff --git a/configs/rock-pi-n10-rk3399pro_defconfig b/configs/rock-pi-n10-rk3399pro_defconfig
> index 2aa2fafaa4..4a5bff44ef 100644
> --- a/configs/rock-pi-n10-rk3399pro_defconfig
> +++ b/configs/rock-pi-n10-rk3399pro_defconfig
> @@ -48,6 +48,7 @@ CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
> +# CONFIG_RAM_ROCKCHIP_DEBUG is not set
>   CONFIG_DM_RESET=y
>   CONFIG_BAUDRATE=1500000
>   CONFIG_DEBUG_UART_SHIFT=2
> diff --git a/configs/rock-pi-n8-rk3288_defconfig b/configs/rock-pi-n8-rk3288_defconfig
> index d218852d79..630ec6e491 100644
> --- a/configs/rock-pi-n8-rk3288_defconfig
> +++ b/configs/rock-pi-n8-rk3288_defconfig
> @@ -64,6 +64,7 @@ CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
>   CONFIG_RAM=y
>   CONFIG_SPL_RAM=y
> +# CONFIG_RAM_ROCKCHIP_DEBUG is not set
>   CONFIG_DEBUG_UART_SHIFT=2
>   CONFIG_SYSRESET=y
>   CONFIG_USB=y
