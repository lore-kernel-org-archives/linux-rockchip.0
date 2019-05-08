From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] rockchip: rk3399: orangepi: Add SPL_TEXT_BASE
Date: Wed, 8 May 2019 11:43:25 +0800
Message-ID: <2b5903f5-547e-e459-986e-c4d48e616988@rock-chips.com>
References: <20190507182440.4501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507182440.4501-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/08/2019 02:24 AM, Jagan Teki wrote:
> CONFIG_SPL_TEXT_BASE was available in configs/rk3399_common.h
> when the OrangePI rk3399 board supported during first
> version patch.
>
> But, later below change which move this config into Kconfig and
> same has been merged in mainline tree.
> "configs: move CONFIG_SPL_TEXT_BASE to Kconfig"
> (sha1: f89d6133eef2e068f9c33853b6584d7fcbfa9d2e)
>
> Unfortunately, the maintainer applied the initial version patch,
> instead of looking for next version changes.
>
> Fix it by adding SPL_TEXT_BASE in orangepi-rk3399 defconfig.
>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>

Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Thanks,
- Kever
> ---
>  configs/orangepi-rk3399_defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
> index cdccf221b5..ba13976cc6 100644
> --- a/configs/orangepi-rk3399_defconfig
> +++ b/configs/orangepi-rk3399_defconfig
> @@ -17,6 +17,7 @@ CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
>  # CONFIG_DISPLAY_CPUINFO is not set
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
> +CONFIG_SPL_TEXT_BASE=0xff8c2000
>  CONFIG_SPL_STACK_R=y
>  CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
>  CONFIG_SPL_ATF=y
