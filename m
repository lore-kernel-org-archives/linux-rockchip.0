From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v1 1/3] dt-bindings: rockchip-thermal: Support the RK3308 SoC compatible
Date: Tue, 05 Nov 2019 08:58:56 +0100
Message-ID: <2284763.Jna2nk2sLt@diego>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com> <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: amit.kucheria@verdurent.com, rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, andy.yan@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 5. November 2019, 04:17:24 CET schrieb Elaine Zhang:
> Add a new compatible for thermal founding on RK3308 SoCs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> index c6aac9bcacf1..3a0a9556680e 100644
> --- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> +++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> @@ -6,6 +6,7 @@ Required properties:
>     "rockchip,rv1108-tsadc": found on RV1108 SoCs
>     "rockchip,rk3228-tsadc": found on RK3228 SoCs
>     "rockchip,rk3288-tsadc": found on RK3288 SoCs
> +   "rockchip,rk3308-tsadc": found on RK3308 SoCs
>     "rockchip,rk3328-tsadc": found on RK3328 SoCs
>     "rockchip,rk3368-tsadc": found on RK3368 SoCs
>     "rockchip,rk3399-tsadc": found on RK3399 SoCs
> 
