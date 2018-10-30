From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: sapphire: add chosen node
Date: Tue, 30 Oct 2018 15:09:17 +0100
Message-ID: <5408972.CYYHPefPr5@phil>
References: <20181026133655.1605-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20181026133655.1605-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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

Hi Vicente,

Am Freitag, 26. Oktober 2018, 15:36:55 CET schrieb Vicente Bergas:
> In order to use earlycon, the stdout-path property needs to be set in
> the chosen node.
> 
> ---
> 
> Also, this works around this kexec bug:
> http://lists.infradead.org/pipermail/kexec/2018-October/021746.html
> 
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dts
> index 5a5806044..326615018 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dts
> @@ -9,4 +9,8 @@
>  / {
>  	model = "Sapphire-RK3399 Board";
>  	compatible = "rockchip,rk3399-sapphire", "rockchip,rk3399";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};

shouldn't that maybe live in the shared .dtsi instead?
I do guess the excavator will have the same default serial?


Heiko
