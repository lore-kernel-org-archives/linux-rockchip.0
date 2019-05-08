From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] rockchip: rk3399: spl: Don't init dram if TPL enabled
Date: Wed, 8 May 2019 15:52:54 +0800
Message-ID: <dca9d6a7-5018-2d46-4d70-c0543d405811@rock-chips.com>
References: <20190508063956.26549-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190508063956.26549-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jagan,


On 05/08/2019 02:39 PM, Jagan Teki wrote:
> DRAM init would require in
> - TPL stage if target support TPL and
> - SPL stage if target support SPL alone
>
> So, don't initialize the dram in SPL if TPL defined and at
> the same time enable it if TPL undefined which is SPL alone.
>
> Tested in TPL and SPL supported boards.
>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
>  arch/arm/mach-rockchip/rk3399-board-spl.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
> index 3eea73ef33..a439e09b61 100644
> --- a/arch/arm/mach-rockchip/rk3399-board-spl.c
> +++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
> @@ -198,11 +198,13 @@ void board_init_f(ulong dummy)
>  		return;
>  	}
>  
> +#if !defined(SUPPORT_TPL)
>  	ret = uclass_get_device(UCLASS_RAM, 0, &dev);
>  	if (ret) {
>  		pr_err("DRAM init failed: %d\n", ret);
>  		return;
>  	}
> +#endif

We still need to init DRAM driver in SPL so that we can get correct ram
info,
but we don't need to run the dram init program, which should have been
handled in DRAM driver.

Thanks,
- Kever
>  }
>  
>  #if defined(SPL_GPIO_SUPPORT)
