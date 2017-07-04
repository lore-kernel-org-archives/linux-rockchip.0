From: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove num-slots from all
 platforms
Date: Tue, 04 Jul 2017 21:10:46 +0900
Message-ID: <17bfd8f6-c6df-eb6c-94d3-4df90300787e@samsung.com>
References: <CGME20170704090520epcas5p29ea96e9550af6ffbdea16208abe2b6e5@epcas5p2.samsung.com>
 <1499159068-51015-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-reply-to: <1499159068-51015-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 07/04/2017 06:04 PM, Shawn Lin wrote:
> We deprecated the "num-slots" property now and plan to get
> rid of it finally. Just move a step to cleanup it from DT.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Reviewed-by: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>

> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 1 -
>  arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 1 -
>  arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 --
>  arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts        | 2 --
>  arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 2 --
>  5 files changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
> index 4772917..a37220a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
> @@ -156,7 +156,6 @@
>  	disable-wp;
>  	mmc-pwrseq = <&emmc_pwrseq>;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> index e631d42..5e4d3a7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> @@ -117,7 +117,6 @@
>  	clock-frequency = <150000000>;
>  	disable-wp;
>  	non-removable;
> -	num-slots = <1>;
>  	vmmc-supply = <&vcc_io>;
>  	vqmmc-supply = <&vcc18_flash>;
>  	pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
> index fac116a..d3f6c8e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
> @@ -203,7 +203,6 @@
>  	mmc-hs200-1_2v;
>  	mmc-hs200-1_8v;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
>  	status = "okay";
> @@ -347,7 +346,6 @@
>  	max-frequency = <50000000>;
>  	cap-sd-highspeed;
>  	card-detect-delay = <200>;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
>  	vmmc-supply = <&vcc_sd>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> index ff48edd..e430fac 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> @@ -91,7 +91,6 @@
>  	no-sdio;
>  	no-sd;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
>  	vmmc-supply = <&vcc_io>;
> @@ -281,7 +280,6 @@
>  	card-detect-delay = <200>;
>  	no-emmc;
>  	no-sdio;
> -	num-slots = <1>;
>  	sd-uhs-sdr12;
>  	sd-uhs-sdr25;
>  	pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
> index 7134181..b3510d5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
> @@ -189,7 +189,6 @@
>  	disable-wp;
>  	mmc-pwrseq = <&emmc_pwrseq>;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
>  	status = "okay";
> @@ -254,7 +253,6 @@
>  	keep-power-in-suspend;
>  	mmc-pwrseq = <&sdio_pwrseq>;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdio0_clk &sdio0_cmd &sdio0_bus4>;
>  	vmmc-supply = <&vcc_io>;
> 
