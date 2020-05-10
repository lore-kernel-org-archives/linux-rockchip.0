From: Suniel Mahesh <sunil@amarulasolutions.com>
Subject: Re: [PATCH v3 5/6] rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
Date: Mon, 11 May 2020 02:01:46 +0530
Message-ID: <CAM+7aWvKyqRXbMxakUWhu6xpWxcR8UbQUKk6Ot=OJwLE9fk_zg@mail.gmail.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200509165624.20791-6-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, shawn.lin@rock-chips.com, patrick@blueri.se, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Sat, May 9, 2020 at 10:26 PM Jagan Teki <jagan@amarulasolutions.com>
wrote:

> Enable PCIe/M.2 support on
> - NanoPC-T4
> - ROC-RK3399-PC Mezzanine boards.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - none
>
>  arch/arm/dts/rk3399-u-boot.dtsi           | 1 +
>  configs/nanopc-t4-rk3399_defconfig        | 4 ++++
>  configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++++
>  3 files changed, 9 insertions(+)
>
> diff --git a/arch/arm/dts/rk3399-u-boot.dtsi
> b/arch/arm/dts/rk3399-u-boot.dtsi
> index 9bb130a92a..d66d5b6a38 100644
> --- a/arch/arm/dts/rk3399-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-u-boot.dtsi
> @@ -8,6 +8,7 @@
>         aliases {
>                 mmc0 = &sdhci;
>                 mmc1 = &sdmmc;
> +               pci0 = &pcie0;
>         };
>
>         cic: syscon@ff620000 {
> diff --git a/configs/nanopc-t4-rk3399_defconfig
> b/configs/nanopc-t4-rk3399_defconfig
> index ae865908d8..3bb5b498f2 100644
> --- a/configs/nanopc-t4-rk3399_defconfig
> +++ b/configs/nanopc-t4-rk3399_defconfig
> @@ -18,6 +18,7 @@ CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_MMC=y
>  CONFIG_CMD_USB=y
> +CONFIG_CMD_PCI=y
>  # CONFIG_CMD_SETEXPR is not set
>  CONFIG_CMD_TIME=y
>  CONFIG_SPL_OF_CONTROL=y
> @@ -34,10 +35,13 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_NVME=y
> +CONFIG_PCI=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> +CONFIG_DM_RESET=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig
> b/configs/roc-pc-mezzanine-rk3399_defconfig
> index 5a694edc03..0b853805f3 100644
> --- a/configs/roc-pc-mezzanine-rk3399_defconfig
> +++ b/configs/roc-pc-mezzanine-rk3399_defconfig
> @@ -19,6 +19,7 @@ CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_MMC=y
>  CONFIG_CMD_USB=y
> +CONFIG_CMD_PCI=y
>  # CONFIG_CMD_SETEXPR is not set
>  CONFIG_CMD_TIME=y
>  CONFIG_SPL_OF_CONTROL=y
> @@ -36,11 +37,14 @@ CONFIG_SPI_FLASH_WINBOND=y
>  CONFIG_DM_ETH=y
>  CONFIG_ETH_DESIGNWARE=y
>  CONFIG_GMAC_ROCKCHIP=y
> +CONFIG_NVME=y
> +CONFIG_PCI=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
>  CONFIG_RAM_RK3399_LPDDR4=y
> +CONFIG_DM_RESET=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_ROCKCHIP_SPI=y
> --
> 2.17.1
>

Tested-by: Suniel Mahesh <sunil@amarulasolutions.com> #roc-rk3399-pc
