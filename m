From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 15/16] configs: evb-rk3399: update support usb3.0 host
Date: Fri, 15 May 2020 10:50:55 +0800
Message-ID: <253d687c-7bf3-7722-25a8-f426c5fc9ec6@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071747.5727-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071747.5727-1-frank.wang@rock-chips.com>
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


On 2020/5/13 下午3:17, Frank Wang wrote:
> Update evb-rk3399 default config to support USB3.0 Host.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   configs/evb-rk3399_defconfig | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
> index 7f14e18b1b..6cfb4e5dac 100644
> --- a/configs/evb-rk3399_defconfig
> +++ b/configs/evb-rk3399_defconfig
> @@ -28,6 +28,7 @@ CONFIG_SYS_RELOC_GD_ENV_ADDR=y
>   CONFIG_NET_RANDOM_ETHADDR=y
>   CONFIG_ROCKCHIP_GPIO=y
>   CONFIG_SYS_I2C_ROCKCHIP=y
> +CONFIG_MISC=y
>   CONFIG_MMC_DW=y
>   CONFIG_MMC_SDHCI=y
>   CONFIG_MMC_SDHCI_ROCKCHIP=y
> @@ -35,10 +36,13 @@ CONFIG_SF_DEFAULT_SPEED=20000000
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
>   CONFIG_DM_RNG=y
>   CONFIG_RNG_ROCKCHIP=y
>   CONFIG_BAUDRATE=1500000
> @@ -49,6 +53,8 @@ CONFIG_USB_XHCI_HCD=y
>   CONFIG_USB_XHCI_DWC3=y
>   CONFIG_USB_EHCI_HCD=y
>   CONFIG_USB_EHCI_GENERIC=y
> +CONFIG_USB_DWC3=y
> +CONFIG_USB_DWC3_GENERIC=y
>   CONFIG_USB_HOST_ETHER=y
>   CONFIG_USB_ETHER_ASIX=y
>   CONFIG_USB_ETHER_ASIX88179=y
