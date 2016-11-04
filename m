From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 5/6] ARM: add low level debug uart for rk1108
Date: Fri, 04 Nov 2016 08:36:09 +0100
Message-ID: <12034481.WHiLii4Pov@phil>
References: <1478175975-11779-1-git-send-email-andy.yan@rock-chips.com>
 <1478176941-12188-1-git-send-email-andy.yan@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1478176941-12188-1-git-send-email-andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 3. November 2016, 20:42:21 CET schrieb Andy Yan:
> RK1108 UARTs are Synopsis DesignWare 8250 compatible.
> Only with different register addresses.
> 
> Signed-off-by: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
>  arch/arm/Kconfig.debug | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index d83f7c3..408540f 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -776,6 +776,30 @@ choice
>  		  their output to the standard serial port on the RealView
>  		  PB1176 platform.
> 
> +	config DEBUG_RK1108_UART0
> +		bool "Kernel low-level debugging messages via Rockchip RK1108 UART0"
> +		depends on ARCH_ROCKCHIP
> +		select DEBUG_UART_8250
> +		help
> +		  Say Y here if you want kernel low-level debugging support
> +                  on Rockchip RK1108 based platforms.
> +
> +	config DEBUG_RK1108_UART1
> +		bool "Kernel low-level debugging messages via Rockchip RK1108 UART1"
> +		depends on ARCH_ROCKCHIP
> +		select DEBUG_UART_8250
> +		help
> +		  Say Y here if you want kernel low-level debugging support
> +		  on Rockchip RK1108 based platforms.
> +
> +	config DEBUG_RK1108_UART2
> +		bool "Kernel low-level debugging messages via Rockchip RK1108 UART2"
> +		depends on ARCH_ROCKCHIP
> +		select DEBUG_UART_8250
> +		help
> +		  Say Y here if you want kernel low-level debugging support
> +		  on Rockchip RK1108 based platforms.
> +

are you sure, you need all 3 of them?

I.e. most Rockchip SoCs so far had one uart somewhat designated as debug uart. 
Most likely due to it not having rts/cts and being used in reference 
schematics, but no one ever used another uart than uart2 on previous socs. So 
ideally we could check and only add uarts we actually need for now. More can 
be added later anyway once boards try to use them.


Heiko
