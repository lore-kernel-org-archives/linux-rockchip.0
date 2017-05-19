From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] arm64: dts: extent bus-ranges of PCIe for rk3399
Date: Fri, 19 May 2017 13:53:46 +0200
Message-ID: <1839398.ekEOVhNgvp@phil>
References: <1494916241-75234-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1494916241-75234-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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

Hi Shawn,

Am Dienstag, 16. Mai 2017, 14:30:40 CEST schrieb Shawn Lin:
> In order to support multiple hierarchy of PCIe buses,
> for instance, PCIe switch, we need to extent bus-ranges
> to as max as possible. We have 32 regions and could support
> up to 31 buses except bus 0 for our root bridge.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

can these 2 patches really be independent?

I.e. what happens if only this patch1 is applied and patch2 is not?
[important for bisectability]


Heiko

> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 25cb51d..532b89d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -220,7 +220,7 @@
>  		#size-cells = <2>;
>  		#interrupt-cells = <1>;
>  		aspm-no-l0s;
> -		bus-range = <0x0 0x1>;
> +		bus-range = <0x0 0x1f>;
>  		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
>  			 <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
>  		clock-names = "aclk", "aclk-perf",
> 
