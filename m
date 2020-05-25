From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/2] phy: Remove CONFIG_ARCH_ROCKCHIP check for subdir
 rockchip
Date: Mon, 25 May 2020 12:48:32 +0200
Message-ID: <2687194.6AVWON70EC@diego>
References: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
 <1590379739-18729-2-git-send-email-yangtiezhu@loongson.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1590379739-18729-2-git-send-email-yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tiezhu Yang <yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Vinod Koul <vkoul-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Xuefeng Li <lixuefeng-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 25. Mai 2020, 06:08:59 CEST schrieb Tiezhu Yang:
> If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
> the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
> in drivers/phy/Makefile.
> 
> Since the related configs in drivers/phy/rockchip/Kconfig depend on
> ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
> in drivers/phy/Makefile.
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>

wouldn't this make more sense to do for all subdirs?

- allwinner: also has arch_sunxi || compile_test in its Kconfig
- amlogic: same
- mediatek: same
- renesas: same
- tega: same

So I think the right way would be to drop all the obj-$(CONFIG_ARCH_...)
options and group the separate directories into the generic subdir
listing below them.

Heiko

> ---
>  drivers/phy/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 310c149..e5b4f58 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -12,7 +12,7 @@ obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
>  obj-$(CONFIG_ARCH_MESON)		+= amlogic/
>  obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
>  obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
> -obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
> +obj-y					+= rockchip/
>  obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
>  obj-y					+= broadcom/	\
>  					   cadence/	\
> 
