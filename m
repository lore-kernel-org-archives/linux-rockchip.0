From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: enable HS200/DDR52 mode for emmc
 on rk3288-popmetal
Date: Tue, 11 Oct 2016 23:56:39 +0200
Message-ID: <30132025.B40M3pXsTH@phil>
References: <1476102826-7143-1-git-send-email-shawn.lin@rock-chips.com>
 <1476102826-7143-2-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1476102826-7143-2-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 10. Oktober 2016, 20:33:46 CEST schrieb Shawn Lin:
> Enable these two modes to speed up the booting and improve
> the performance.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

applied both patches for 4.10 after moving the mmc-* above non-removable


Thanks
Heiko

> ---
> 
>  arch/arm/boot/dts/rk3288-popmetal.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts
> b/arch/arm/boot/dts/rk3288-popmetal.dts index 3831cd5..7500e98 100644
> --- a/arch/arm/boot/dts/rk3288-popmetal.dts
> +++ b/arch/arm/boot/dts/rk3288-popmetal.dts
> @@ -148,6 +148,8 @@
>  	cap-mmc-highspeed;
>  	disable-wp;
>  	non-removable;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
>  	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
