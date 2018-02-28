From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: remove PCIe assigned-clocks in
 excavator baseboard
Date: Wed, 28 Feb 2018 09:47:53 +0800
Message-ID: <bcb83fae-7bda-8ac5-325c-74e49cdde21c@rock-chips.com>
References: <86b701f0-899f-acf6-ad32-541dc888ddfe@rock-chips.com>
 <20180227182822.5048-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180227182822.5048-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2018/2/28 2:28, Vicente Bergas wrote:
> Reference clock is needed for pcie_phy, not pcie controller.
> Actually pcie_phy doesn't need this since rk3399 clock driver
> already take care of this.
> 
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Suggested-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> index 4d47150d6862..3d7179aba3fb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> @@ -195,9 +195,6 @@
>   };
>   
>   &pcie0 {
> -	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
> -	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
> -	assigned-clock-rates = <100000000>;
>   	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
>   	num-lanes = <4>;
>   	pinctrl-names = "default";
> 

Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
