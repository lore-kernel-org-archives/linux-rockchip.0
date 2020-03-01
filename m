From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v4 1/3] [media] dt-bindings: Add binding for rk3228 rga
Date: Sun, 01 Mar 2020 01:29:23 +0100
Message-ID: <7950264.35eqgo7tFu@phil>
References: <cover.1580768038.git.justin.swartz@risingedge.co.za> <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mauro,

Am Montag, 3. Februar 2020, 23:40:15 CET schrieb Justin Swartz:
> Indicate that the rk3228 rga is compatible with that of the rk3288.
> 
> But if any rk3228-specific quirks are identified in future that
> require handling logic that differs from what is provided for the
> rk3288, then allow for the compatibility string "rockchip,rk3228-rga"
> to be matched instead of "rockchip,rk3288-rga".
> 
> Signed-off-by: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>

what is the process in the media-world for this dt-binding only patch?

Do you want to apply it, or should I just also apply it with the following
2 dt-patches? There shouldn't be any conflicts with the media tree
as this patch really only affects the rga binding document.

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
> index fd5276abf..c53a8e513 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.txt
> @@ -6,8 +6,9 @@ BitBLT, alpha blending and image blur/sharpness.
>  
>  Required properties:
>  - compatible: value should be one of the following
> -		"rockchip,rk3288-rga";
> -		"rockchip,rk3399-rga";
> +  "rockchip,rk3228-rga", "rockchip,rk3288-rga": for Rockchip RK3228
> +  "rockchip,rk3288-rga": for Rockchip RK3288
> +  "rockchip,rk3399-rga": for Rockchip RK3399
>  
>  - interrupts: RGA interrupt specifier.
>  
> 
