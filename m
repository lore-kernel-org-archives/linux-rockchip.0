From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 2/6] rock-pi-4: Enable PCI/NVME
Date: Sat, 27 Jun 2020 22:37:26 +0800
Message-ID: <96d7869a-292c-3a67-31d1-fe8da304dbbc@rock-chips.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
 <20200618141259.155581-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618141259.155581-2-jagan@amarulasolutions.com>
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
> Enable PCI/NVME for M.2 Slot on RockPI-4 boards.
>
> => nvme info
> Device 0: Vendor: 0x144d Rev: 2B2QEXM7 Prod: S4EUNG0MC10012Y
>              Type: Hard Disk
>              Capacity: 238475.1 MB = 232.8 GB (488397168 x 512)
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
>   configs/rock-pi-4-rk3399_defconfig | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
> index 2487872219..f3eeef0293 100644
> --- a/configs/rock-pi-4-rk3399_defconfig
> +++ b/configs/rock-pi-4-rk3399_defconfig
> @@ -18,6 +18,7 @@ CONFIG_TPL=y
>   CONFIG_CMD_BOOTZ=y
>   CONFIG_CMD_GPT=y
>   CONFIG_CMD_MMC=y
> +CONFIG_CMD_PCI=y
>   CONFIG_CMD_USB=y
>   # CONFIG_CMD_SETEXPR is not set
>   CONFIG_CMD_TIME=y
> @@ -36,6 +37,8 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
>   CONFIG_DM_ETH=y
>   CONFIG_ETH_DESIGNWARE=y
>   CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_NVME=y
> +CONFIG_PCI=y
>   CONFIG_PHY_ROCKCHIP_INNO_USB2=y
>   CONFIG_PHY_ROCKCHIP_TYPEC=y
>   CONFIG_PMIC_RK8XX=y
