From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 06/11] env: kconfig: Restrict rockchip env for MMC
Date: Mon, 30 Dec 2019 11:05:49 +0800
Message-ID: <d38ac96c-d4de-8acd-9070-a0847c721bd4@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-7-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-7-jagan@amarulasolutions.com>
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
> Rockchip do support SPI flash as well, so there is
> a possibility of using flash environment for those
> use cases.
>
> So, restrict the current env offset, size for MMC.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   env/Kconfig | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/env/Kconfig b/env/Kconfig
> index ed12609f6a..9416a70022 100644
> --- a/env/Kconfig
> +++ b/env/Kconfig
> @@ -488,7 +488,7 @@ config ENV_OFFSET
>   	hex "Environment offset"
>   	depends on ENV_IS_IN_EEPROM || ENV_IS_IN_MMC || ENV_IS_IN_NAND || \
>   		    ENV_IS_IN_SPI_FLASH
> -	default 0x3f8000 if ARCH_ROCKCHIP
> +	default 0x3f8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
>   	default 0x88000 if ARCH_SUNXI
>   	default 0xE0000 if ARCH_ZYNQ
>   	default 0x1E00000 if ARCH_ZYNQMP
> @@ -511,7 +511,8 @@ config ENV_SIZE
>   	hex "Environment Size"
>   	default 0x40000 if ENV_IS_IN_SPI_FLASH && ARCH_ZYNQMP
>   	default 0x20000 if ARCH_SUNXI || ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
> -	default 0x8000 if ARCH_ROCKCHIP || ARCH_ZYNQMP || ARCH_VERSAL
> +	default 0x8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
> +	default 0x8000 if ARCH_ZYNQMP || ARCH_VERSAL
>   	default 0x4000 if ARC
>   	default 0x1f000
>   	help
