From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 10/11] rockpro-rk3399: Enable SPI Flash
Date: Mon, 30 Dec 2019 11:00:42 +0800
Message-ID: <07679fa4-495a-8958-14c9-3e65dc679727@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-11-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-11-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:54, Jagan Teki wrote:
> Enable winbond SPI flash for ROC-PC-RK3399 board.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 4 ++++
>   configs/rockpro64-rk3399_defconfig        | 2 ++
>   2 files changed, 6 insertions(+)
>
> diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> index 4648513ea9..deaa3efd39 100644
> --- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> @@ -6,6 +6,10 @@
>   #include "rk3399-u-boot.dtsi"
>   #include "rk3399-sdram-lpddr4-100.dtsi"
>   / {
> +	aliases {
> +		spi0 = &spi1;
> +	};
> +
>   	chosen {
>   		u-boot,spl-boot-order = "same-as-spl", &sdmmc, &sdhci;
>   	};
> diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
> index 49e27c91cb..6a50ec7dbc 100644
> --- a/configs/rockpro64-rk3399_defconfig
> +++ b/configs/rockpro64-rk3399_defconfig
> @@ -46,6 +46,8 @@ CONFIG_RAM_RK3399_LPDDR4=y
>   CONFIG_BAUDRATE=1500000
>   CONFIG_DEBUG_UART_SHIFT=2
>   CONFIG_SYSRESET=y
> +CONFIG_SPI_FLASH_GIGADEVICE=y
> +CONFIG_ROCKCHIP_SPI=y
>   CONFIG_USB=y
>   CONFIG_USB_XHCI_HCD=y
>   CONFIG_USB_XHCI_DWC3=y
