From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: add efuse0 device node for
 rk3399
Date: Thu, 1 Sep 2016 10:57:49 -0700
Message-ID: <CAD=FV=XHn-VGYZN0TrONHXrnpXP4a4Gk408SR0Q6xY9kVPV+aA@mail.gmail.com>
References: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
 <1470878029-11878-4-git-send-email-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1470878029-11878-4-git-send-email-finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Finlye Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Tony Xie <tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Will Deacon <will.deacon-5wv7dgnIgG8@public.gmane.org>, linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Srinivas Kandagatla <srinivas.kandagatla-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Maxime Ripard <maxime.ripard-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Xu Jianqun <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, cl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Aug 10, 2016 at 6:13 PM, Finlye Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> From: Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> Add a efuse0 node in the device tree for the ARM64 rk3399 SoC.
>
> Signed-off-by: Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)

Oddly this patch seems to have been dropped from v3 and v4 of the
series.  Seems like we still need it?


> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 4c84229..7f764ca 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -899,6 +899,35 @@
>                 status = "disabled";
>         };
>
> +       efuse0: efuse0@ff690000 {

nit: should be efuse0: efuse@ff690000

AKA get rid of the "0" from the node name and just keep it in the alias.

> +               compatible = "rockchip,rk3399-efuse";
> +               reg = <0x0 0xff690000 0x0 0x80>;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               clocks = <&cru PCLK_EFUSE1024NS>;
> +               clock-names = "pclk_efuse";
> +
> +               /* Data cells */
> +               cpul_leakage: cpul-leakage {
> +                       reg = <0x1a 0x1>;
> +               };
> +               cpub_leakage: cpub-leakage {
> +                       reg = <0x17 0x1>;
> +               };
> +               gpu_leakage: gpu-leakage {
> +                       reg = <0x18 0x1>;
> +               };
> +               center_leakage: center-leakage {
> +                       reg = <0x19 0x1>;
> +               };
> +               logic_leakage: logic-leakage {
> +                       reg = <0x1b 0x1>;
> +               };
> +               wafer_info: wafer-info {
> +                       reg = <0x1c 0x1>;
> +               };
> +       };

Other than that this looks sane to me.

-Doug
