From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v4 09/10] arm64: dts: Add main Thermal info to rk3368.dtsi
Date: Tue, 09 Feb 2016 09:30:02 +0100
Message-ID: <42802946.20XC68fnyM@phil>
References: <1447044542-30859-1-git-send-email-wxt@rock-chips.com>
 <1447044542-30859-10-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447044542-30859-10-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Am Montag, 9. November 2015, 12:49:01 schrieb Caesar Wang:
> This patch add the thermal needed info on RK3368.
> Meanwhile, support the trips to throttle for thermal.
> 
> Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Acked-by: Eduardo Valentin <edubezval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

[...]

> @@ -829,6 +855,16 @@
>  			};
>  		};
> 
> +		tsadc {
> +			otp_gpio: otp-gpio {
> +				rockchip,pins = <0 10 RK_FUNC_GPIO &pcfg_pull_none>;
> +			};
> +
> +			otp_out: otp-out {
> +				rockchip,pins = <0 10 RK_FUNC_1 &pcfg_pull_none>;
> +			};
> +		};
> +
>  		uart0 {
>  			uart0_xfer: uart0-xfer {
>  				rockchip,pins = <2 24 RK_FUNC_1 &pcfg_pull_up>,

As it came up just now, these pinctrl settings seem strange. I.e. according 
to the TRM gpio0b2 [= gpio0 10] func_1 is sc_rst, which seems to be the 
smartcard controller?

It came up because it seems the Tronsmart R68 board seems to use this pin 
for controlling the vcc_host regulator instead.


Heiko
