From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Date: Fri, 06 Dec 2019 16:48:00 +0100
Message-ID: <3285991.EbEXlA3CnX@phil>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191206154247.28057-1-miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Miquel,

Am Freitag, 6. Dezember 2019, 16:42:47 CET schrieb Miquel Raynal:
> PMIC interrupt can be active high or active low depending on BIT(1) of
> the GPIO_INT_CFG pin. The default is 0x1, which means active
> high. Change the polarity in the device tree to reflect the default
> state.
> 
> Without this and with the current code base, the interrupt never stops
> triggering while the MFD driver does not see anything to
> check/clear/mask so after 100000 spurious IRQs, the kernel simply
> desactivates the interrupt:
> 
>         irq 36: nobody cared (try booting with the "irqpoll" option)
>         [...]
>         handlers:
>         [<(____ptrval____)>] irq_default_primary_handler threaded
> 	[<(____ptrval____)>] regmap_irq_thread
>         Disabling IRQ #36
> 
> Signed-off-by: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>

*coughs slightly*

mfd: rk808: Set RK817 interrupt polarity to low
https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/drivers/mfd/rk808.c?h=for-mfd-next&id=dbd16ef53487084816a20f662423ab543a75fc83

Should be in the current merge window already I guess ;-)

Having this consistent over all rk8xx seemed nicer.


Heiko


> ---
>  arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 869f90cbf0da..a922ea75639d 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -138,7 +138,7 @@
>  		compatible = "rockchip,rk809";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
> -		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> +		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
>  		rockchip,system-power-controller;
> 
