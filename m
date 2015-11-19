From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: set system-power-controller on
 rk3288-rock2
Date: Thu, 19 Nov 2015 22:19:32 +0100
Message-ID: <1807407.tUv2FxFrog@phil>
References: <1447940731-5672-1-git-send-email-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447940731-5672-1-git-send-email-john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi John,

Am Donnerstag, 19. November 2015, 13:45:31 schrieb John Keeping:
> Signed-off-by: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>

please always provide at least a short patch description too.
I've applied the patch but reworded it to

	ARM: dts: rockchip: set system-power-controller property on rk3288-rock2
    
	The act8846 on rock2 boards controls the system power, so add the
	appropriate property to allow turning off the board.

Please holler if you disagree and want it described differently :-) .


Thanks
Heiko


> ---
>  arch/arm/boot/dts/rk3288-rock2-som.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-rock2-som.dtsi b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
> index 1813b7c3..1ece66f 100644
> --- a/arch/arm/boot/dts/rk3288-rock2-som.dtsi
> +++ b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
> @@ -109,6 +109,7 @@
>  	act8846: act8846@5a {
>  		compatible = "active-semi,act8846";
>  		reg = <0x5a>;
> +		system-power-controller;
>  		inl1-supply = <&vcc_io>;
>  		inl2-supply = <&vcc_sys>;
>  		inl3-supply = <&vcc_20>;
> 
