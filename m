From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix cpu compatible property for
 rk3308
Date: Fri, 28 Feb 2020 12:33:21 +0000
Message-ID: <6a6beced-a8cb-448e-a4b2-331cd09d0c61@arm.com>
References: <20200228084827.16198-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200228084827.16198-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 28/02/2020 8:48 am, Johan Jonker wrote:
> A test with the command below gives for example these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: cpu@0: compatible:
> Additional items are not allowed ('arm,armv8' was unexpected)
> arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: cpu@0: compatible:
> ['arm,cortex-a35', 'arm,armv8']
> is too long
> 
> Fix these errors by removing the last argument of
> the cpu compatible property in rk3308.dtsi.

Bah, seems this snuck in a couple of releases after we blitzed the last 
of these from the tree :)

Reviewed-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>

> make ARCH=arm64
> dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/cpus.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 116f1900e..3bd5bc860 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -40,7 +40,7 @@
>   
>   		cpu0: cpu@0 {
>   			device_type = "cpu";
> -			compatible = "arm,cortex-a35", "arm,armv8";
> +			compatible = "arm,cortex-a35";
>   			reg = <0x0 0x0>;
>   			enable-method = "psci";
>   			clocks = <&cru ARMCLK>;
> @@ -53,7 +53,7 @@
>   
>   		cpu1: cpu@1 {
>   			device_type = "cpu";
> -			compatible = "arm,cortex-a35", "arm,armv8";
> +			compatible = "arm,cortex-a35";
>   			reg = <0x0 0x1>;
>   			enable-method = "psci";
>   			operating-points-v2 = <&cpu0_opp_table>;
> @@ -63,7 +63,7 @@
>   
>   		cpu2: cpu@2 {
>   			device_type = "cpu";
> -			compatible = "arm,cortex-a35", "arm,armv8";
> +			compatible = "arm,cortex-a35";
>   			reg = <0x0 0x2>;
>   			enable-method = "psci";
>   			operating-points-v2 = <&cpu0_opp_table>;
> @@ -73,7 +73,7 @@
>   
>   		cpu3: cpu@3 {
>   			device_type = "cpu";
> -			compatible = "arm,cortex-a35", "arm,armv8";
> +			compatible = "arm,cortex-a35";
>   			reg = <0x0 0x3>;
>   			enable-method = "psci";
>   			operating-points-v2 = <&cpu0_opp_table>;
> 
