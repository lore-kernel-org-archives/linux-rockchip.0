From: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
Date: Sun, 10 Nov 2019 16:17:02 -0800
Message-ID: <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190907174833.19957-1-katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, arm-linux <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
<katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
>
> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> RK3399 RockPro64.

Hi Katsuhiro,

I tested your patch with my rockpro64 on 5.4-rc6 which has your other
patches to es8316 driver, but apparently it doesn't work.

'alsamixer' complains 'cannot load mixer controls: No such device or
address' and if I try to play audio with mpg123 it pretends that it
plays something but there's no sound.

Any idea what can be wrong?

Regards,
Vasily

> Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
> ---
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 0401d4ec1f45..8b1e6382b140 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -81,6 +81,12 @@
>                 reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>         };
>
> +       sound {
> +               compatible = "audio-graph-card";
> +               label = "rockchip,rk3399";
> +               dais = <&i2s1_p0>;
> +       };
> +
>         vcc12v_dcin: vcc12v-dcin {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc12v_dcin";
> @@ -470,6 +476,20 @@
>         i2c-scl-rising-time-ns = <300>;
>         i2c-scl-falling-time-ns = <15>;
>         status = "okay";
> +
> +       es8316: codec@11 {
> +               compatible = "everest,es8316";
> +               reg = <0x11>;
> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> +               clock-names = "mclk";
> +               #sound-dai-cells = <0>;
> +
> +               port {
> +                       es8316_p0_0: endpoint {
> +                               remote-endpoint = <&i2s1_p0_0>;
> +                       };
> +               };
> +       };
>  };
>
>  &i2c3 {
> @@ -505,6 +525,14 @@
>         rockchip,playback-channels = <2>;
>         rockchip,capture-channels = <2>;
>         status = "okay";
> +
> +       i2s1_p0: port {
> +               i2s1_p0_0: endpoint {
> +                       dai-format = "i2s";
> +                       mclk-fs = <256>;
> +                       remote-endpoint = <&es8316_p0_0>;
> +               };
> +       };
>  };
>
>  &i2s2 {
> --
> 2.23.0.rc1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
