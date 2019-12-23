From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
Date: Mon, 23 Dec 2019 10:34:43 +0800
Message-ID: <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-8-jagan@amarulasolutions.com>
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

Jagan,


On 2019/12/21 下午3:54, Jagan Teki wrote:
> Most of the SPI flash devices in rockchip are 16MiB size.
>
> So, keeping U-Boot proper offset start from 128MiB with 1MiB
> size and then start env of 8KiB would be a compatible location
> between all variants of flash sizes.
>
> This patch add env start from 0x14000 with a size of 8KiB.

What's the space map in SPI flash suppose to be? Including 
tpl/spl/u-boot.itb

I would prefer to use 128KiB-8KiB as the env start address, we'd better 
to avoid the

risk of overlap between the env space and the firmware space.

>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>   env/Kconfig | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/env/Kconfig b/env/Kconfig
> index 9416a70022..1bb3e1078e 100644
> --- a/env/Kconfig
> +++ b/env/Kconfig
> @@ -489,6 +489,7 @@ config ENV_OFFSET
>   	depends on ENV_IS_IN_EEPROM || ENV_IS_IN_MMC || ENV_IS_IN_NAND || \
>   		    ENV_IS_IN_SPI_FLASH
>   	default 0x3f8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
> +	default 0x140000 if ARCH_ROCKCHIP && ENV_IS_IN_SPI_FLASH

Is this 0x140000 or 0x14000?


Thanks,

- Kever

>   	default 0x88000 if ARCH_SUNXI
>   	default 0xE0000 if ARCH_ZYNQ
>   	default 0x1E00000 if ARCH_ZYNQMP
> @@ -512,6 +513,7 @@ config ENV_SIZE
>   	default 0x40000 if ENV_IS_IN_SPI_FLASH && ARCH_ZYNQMP
>   	default 0x20000 if ARCH_SUNXI || ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
>   	default 0x8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
> +	default 0x2000 if ARCH_ROCKCHIP && ENV_IS_IN_SPI_FLASH
>   	default 0x8000 if ARCH_ZYNQMP || ARCH_VERSAL
>   	default 0x4000 if ARC
>   	default 0x1f000
> @@ -521,6 +523,7 @@ config ENV_SIZE
>   config ENV_SECT_SIZE
>   	hex "Environment Sector-Size"
>   	depends on ENV_IS_IN_FLASH || ENV_IS_IN_SPI_FLASH
> +	default 0x2000 if ARCH_ROCKCHIP
>   	default 0x40000 if ARCH_ZYNQMP || ARCH_VERSAL
>   	default 0x20000 if ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
>   	help
