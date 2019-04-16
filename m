From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2 08/14] rockchip: dts: rk3399: nanopi4: Use CD pin as
 RK_FUNC_1
Date: Tue, 16 Apr 2019 12:10:12 +0100
Message-ID: <148886f2-b1f2-8e90-c6cc-00fd49d98c86@arm.com>
References: <20190416105647.18437-1-jagan@amarulasolutions.com>
 <20190416105647.18437-9-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190416105647.18437-9-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 16/04/2019 11:56, Jagan Teki wrote:
> sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
> indeed failed to detect the sdcard on the board with below error
> 
>    Card did not respond to voltage select!
> 
> So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
> is already defined in rk3399.dts so make use of same like
> other boards.

I guess the U-Boot dwmmc driver doesn't support using a GPIO? The reason 
we do this for Linux is that the dedicated function is not compatible 
with runtime power management - once we see that no card is present and 
suspend the idle controller, the CD logic is also powered off and thus 
no longer capable of generating the interrupt necessary to wake 
everything up again. The GPIO function of the same pin, however, is in 
an always-on power domain so is able to do the right thing.

So it's not "wrong" as such, but this change should be fine for U-Boot 
as long as it never turns off PD_SD itself.

Robin.

> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
>   arch/arm/dts/rk3399-nanopi4.dtsi | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/arch/arm/dts/rk3399-nanopi4.dtsi b/arch/arm/dts/rk3399-nanopi4.dtsi
> index d325e11728..5dc8a8de16 100644
> --- a/arch/arm/dts/rk3399-nanopi4.dtsi
> +++ b/arch/arm/dts/rk3399-nanopi4.dtsi
> @@ -521,10 +521,6 @@
>   	};
>   
>   	sdmmc {
> -		sdmmc0_det_l: sdmmc0-det-l {
> -			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -
>   		sdmmc0_pwr_h: sdmmc0-pwr-h {
>   			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
> @@ -582,7 +578,7 @@
>   	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc0_det_l>;
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc3v0_sd>;
>   	vqmmc-supply = <&vcc_sdio>;
> 
