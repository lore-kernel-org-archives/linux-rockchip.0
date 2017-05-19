From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix include reference
Date: Fri, 19 May 2017 14:47:25 +0200
Message-ID: <1543991.PRPgxyxrAr@phil>
References: <20170519121434.1118129-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170519121434.1118129-1-arnd-r2nGTMty4D4@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd,

Am Freitag, 19. Mai 2017, 14:14:34 CEST schrieb Arnd Bergmann:
> The way we handle include paths for DT has changed a bit, which
> broke a file that had an unconventional way to reference a common
> header file:
> 
> arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts:47:10: fatal error: include/dt-bindings/input/linux-event-codes.h: No such file or directory
> 
> This removes the leading "include/" from the path name, which fixes it.
> 
> Fixes: d5d332d3f7e8 ("devicetree: Move include prefixes from arch to separate directory")
> Signed-off-by: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>

This mimics the patch from Ian Campbell [0], which I also pointed at in
the "devicetree: Move include prefixes from arch to separate directory"
thread and I had originally hoped that both would get applied together.

In any case, both patches look good, so this as well gets a
Reviewed-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

The other one also got a
Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

It seems I don't have any other fixes for 4.12 at the moment, so
do you want to apply any of the two yourself, or should this make
a round through my tree? (Both ways are fine by me)


Heiko

[0] https://patchwork.kernel.org/patch/9724957/

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
> index 658bb9dc9dfd..7bd31066399b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
> @@ -44,7 +44,7 @@
>  
>  /dts-v1/;
>  #include "rk3399-gru.dtsi"
> -#include <include/dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/input/linux-event-codes.h>
>  
>  /*
>   * Kevin-specific things
> 
