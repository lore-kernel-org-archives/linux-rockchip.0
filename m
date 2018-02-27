From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: move rk3399-sapphire PCIe to
 excavator baseboard
Date: Tue, 27 Feb 2018 14:23:58 +0800
Message-ID: <86b701f0-899f-acf6-ad32-541dc888ddfe@rock-chips.com>
References: <3840224.sEPfbROKII@phil> <20180226185721.2582-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2018/2/27 2:57, Vicente Bergas wrote:
> The PCIe signals are routed through the connector to the baseboard.
> 
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Tested-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   .../arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 15 +++++++++++++++
>   arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi         | 15 ---------------
>   2 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> index 56952d1a3fb8..4d47150d6862 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> @@ -190,6 +190,21 @@
>   	status = "okay";
>   };
>   
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
> +	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
> +	assigned-clock-rates = <100000000>;

Ah, could you remove these assigned-clock* as well?
reference clock is needed for pcie_phy, not pcie controller.
Actually pcie_phy doesn't need this since rk3399 clock driver
already take care of this.

Otherwise,
Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>


> +	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	status = "okay";
> +};
> +
>   &pinctrl {
>   	sdio-pwrseq {
>   		wifi_enable_h: wifi-enable-h {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index e5b0369e197f..8c7db887f2cf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -471,21 +471,6 @@
>   	gpio1830-supply = <&vcc_3v0>;
>   };
>   
> -&pcie_phy {
> -	status = "okay";
> -};
> -
> -&pcie0 {
> -	assigned-clocks = <&cru SCLK_PCIEPHY_REF>;
> -	assigned-clock-parents = <&cru SCLK_PCIEPHY_REF100M>;
> -	assigned-clock-rates = <100000000>;
> -	ep-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
> -	num-lanes = <4>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_clkreqn_cpm>;
> -	status = "okay";
> -};
> -
>   &pmu_io_domains {
>   	pmu1830-supply = <&vcc_3v0>;
>   	status = "okay";
> 
