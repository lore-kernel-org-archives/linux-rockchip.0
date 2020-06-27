From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 6/6] roc-rk3399-pc: Update ENV offset, size
Date: Sat, 27 Jun 2020 22:40:10 +0800
Message-ID: <8fa345f7-f42c-37a3-5427-98fc92f0fde1@rock-chips.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
 <20200618141259.155581-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618141259.155581-6-jagan@amarulasolutions.com>
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
> Adjust the ENV offset, size to fit into all images
> on 16MB flash.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
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

This is not for ENV.

Thanks,

- Kever

>   configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++--
>   configs/roc-pc-rk3399_defconfig           | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
> index 7906948374..595f052cb7 100644
> --- a/configs/roc-pc-mezzanine-rk3399_defconfig
> +++ b/configs/roc-pc-mezzanine-rk3399_defconfig
> @@ -1,8 +1,8 @@
>   CONFIG_ARM=y
>   CONFIG_ARCH_ROCKCHIP=y
>   CONFIG_SYS_TEXT_BASE=0x00200000
> -CONFIG_ENV_SIZE=0x6000
> -CONFIG_ENV_OFFSET=0x460000
> +CONFIG_ENV_SIZE=0x8000
> +CONFIG_ENV_OFFSET=0x3F8000
>   CONFIG_ENV_SECT_SIZE=0x1000
>   CONFIG_ROCKCHIP_RK3399=y
>   CONFIG_TARGET_ROC_PC_RK3399=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index 046fb73858..1c4db3443f 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -1,8 +1,8 @@
>   CONFIG_ARM=y
>   CONFIG_ARCH_ROCKCHIP=y
>   CONFIG_SYS_TEXT_BASE=0x00200000
> -CONFIG_ENV_SIZE=0x6000
> -CONFIG_ENV_OFFSET=0x460000
> +CONFIG_ENV_SIZE=0x8000
> +CONFIG_ENV_OFFSET=0x3F8000
>   CONFIG_ENV_SECT_SIZE=0x1000
>   CONFIG_ROCKCHIP_RK3399=y
>   CONFIG_TARGET_ROC_PC_RK3399=y
