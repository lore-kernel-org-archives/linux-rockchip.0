From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io
 tx/rx_delay
Date: Thu, 7 Mar 2019 20:05:27 -0500
Message-ID: <24c5ffaa-644d-4623-a635-6842f67efe8a@gmail.com>
References: <20190306223454.2959-1-papadakospan@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190306223454.2959-1-papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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
To: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 3/6/2019 5:34 PM, Leonidas P. Papadakos wrote:
> The rk3328-roc-cc board exhibits tx stability issues with large packets,
> as does the rock64 board, which was fixed with this patch
> https://patchwork.kernel.org/patch/10178969/
> 
> A similar patch was merged for the rk3328-roc-cc here
> https://patchwork.kernel.org/patch/10804863/
> but it doesn't include the tx/rx_delay tweaks, and I find that they
> help with an issue where large transfers would bring the ethernet
> link down, causing a link reset regularly.
> 
> These values are better for the Renegade specifically, borrowed from
> the armbian rk3328-roc-cc.dts:
> https://github.com/armbian/build/blob/master/patch/kernel/rockchip64-default/Add_dts_rk3328-roc-cc.patch
> 
> Signed-off-by: Leonidas P. Papadakos <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> index 33c44e857..ec5454028 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> @@ -108,8 +108,8 @@
>   	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
>   	snps,reset-active-low;
>   	snps,reset-delays-us = <0 10000 50000>;
> -	tx_delay = <0x25>;
> -	rx_delay = <0x11>;
> +	tx_delay = <0x28>;
> +	rx_delay = <0x16>;
>   	status = "okay";
>   };
>   
> 

When I submitted the patch to fix the TX stability issue, I intended to 
follow up with another patch for delay updates.
Unfortunately, I was unable to locate a delay that was acceptable, as I 
was never able to get below ~700 retry attempts on the TX side in testing.

I am unsure if this is due to manufacturing defects or if I'm missing 
something else.
It may be worth considering implementing some sort of delay auto tuning, 
similar to the mmc driver.
Thoughts?
