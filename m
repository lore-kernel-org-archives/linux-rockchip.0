From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
Date: Fri, 28 Feb 2020 12:42:55 +0000
Message-ID: <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <20200228061436.13506-3-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200228061436.13506-3-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 28/02/2020 6:14 am, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
> ['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
> is not valid under any of the given schemas
> 
> Fix this error by adding 'google,rk3399evb-rev2' to the compatible
> property in rockchip.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d303790f5..6c6e8273e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -509,6 +509,7 @@ properties:
>           items:
>             - const: rockchip,rk3399-evb
>             - const: rockchip,rk3399
> +          - const: google,rk3399evb-rev2

This looks wrong - the board can't reasonably be a *more* general match 
than the SoC. If this is supposed to represent a specific variant of the 
basic EVB design then it should come before "rockchip,rk3399-evb" (and 
possibly be optional if other variants also exist).

Robin.

>   
>         - description: Rockchip RK3399 Sapphire standalone
>           items:
> 
