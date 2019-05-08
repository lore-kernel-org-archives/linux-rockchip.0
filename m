From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v7 02/11] Kconfig: Add default SPL_FIT_GENERATOR for
 rockchip
Date: Wed, 8 May 2019 11:46:47 +0800
Message-ID: <1c2790a9-dcde-eeb4-56af-21cf8bb91564@rock-chips.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
 <20190507183625.5983-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507183625.5983-3-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/08/2019 02:36 AM, Jagan Teki wrote:
> Add default SPL_FIT_GENERATOR py script for rockchip platforms if
> specific target enabled SPL_LOAD_FIT.
>
> So, this would help get rid of explicitly mentioning the default
> SPL FIT generator in defconfigs. however some targets, like puma_rk3399
> still require their own FIT generator so in those cases the default will
> override with defconfig defined generator.
>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>

Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Thanks,
- Kever
> ---
>  Kconfig                           | 1 +
>  configs/chromebook_bob_defconfig  | 1 -
>  configs/evb-rk3399_defconfig      | 1 -
>  configs/ficus-rk3399_defconfig    | 1 -
>  configs/firefly-rk3399_defconfig  | 1 -
>  configs/orangepi-rk3399_defconfig | 1 -
>  configs/rock960-rk3399_defconfig  | 1 -
>  7 files changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/Kconfig b/Kconfig
> index 7a5491bd67..91c1082ace 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -435,6 +435,7 @@ config SPL_FIT_GENERATOR
>  	string ".its file generator script for U-Boot FIT image"
>  	depends on SPL_FIT
>  	default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
> +	default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
>  	help
>  	  Specifies a (platform specific) script file to generate the FIT
>  	  source file used to build the U-Boot FIT image file. This gets
> diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
> index ce07a7f0ff..bd836acad5 100644
> --- a/configs/chromebook_bob_defconfig
> +++ b/configs/chromebook_bob_defconfig
> @@ -19,7 +19,6 @@ CONFIG_SPL_SPI_SUPPORT=y
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
> index 5bb910e8d4..94963e4280 100644
> --- a/configs/evb-rk3399_defconfig
> +++ b/configs/evb-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
> index 79da86b32f..926d244fbe 100644
> --- a/configs/ficus-rk3399_defconfig
> +++ b/configs/ficus-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  CONFIG_SPL_TEXT_BASE=0xff8c2000
> diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
> index 301b27e3a4..5016fb8993 100644
> --- a/configs/firefly-rk3399_defconfig
> +++ b/configs/firefly-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
> index ba13976cc6..22ddd8dce3 100644
> --- a/configs/orangepi-rk3399_defconfig
> +++ b/configs/orangepi-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
>  CONFIG_NR_DRAM_BANKS=1
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index 8d490be18c..48d14ef7d8 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_FIT=y
>  CONFIG_SPL_LOAD_FIT=y
> -CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
