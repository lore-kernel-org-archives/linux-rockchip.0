From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: move rk3399-sapphire PCIe to
 excavator baseboard
Date: Wed, 28 Feb 2018 14:18:53 +0100
Message-ID: <18314211.o2LdInmNjp@diego>
References: <3840224.sEPfbROKII@phil> <20180226185721.2582-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180226185721.2582-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 26. Februar 2018, 19:57:21 CET schrieb Vicente Bergas:
> The PCIe signals are routed through the connector to the baseboard.
> 
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Tested-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  .../arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 15
> +++++++++++++++ arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi         |
> 15 --------------- 2 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts index
> 56952d1a3fb8..4d47150d6862 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> @@ -190,6 +190,21 @@
>  	status = "okay";
>  };
> 
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
> +	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
> +	assigned-clock-rates = <100000000>;
> +	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;

I've applied both patches into a temporary branch for likely 4.18 now
with the tags from Shawn.

Reason is that we also have a fix for 4.16 in a different branch fixing
the ep-gpios property on sapphire and having these things conflict
will end up in a lot of chaos, as that fix is not yet in the mainline kernel
but only in an intermediate state.

So likely the pcie move will have to wait for 4.18 to make it easier
on everybody.


Heiko
