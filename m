From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v3 5/9] media: staging: rkisp1: remove unecessary clocks
Date: Thu, 2 Jul 2020 14:01:50 -0300
Message-ID: <c70b55a4-c33c-226b-2596-a7bbba199346@collabora.com>
References: <20200702165410.2583375-1-helen.koike@collabora.com>
 <20200702165410.2583375-6-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200702165410.2583375-6-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 7/2/20 1:54 PM, Helen Koike wrote:
> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> hclk_isp, thus we can remove parents from the list, with the goal to
> cleanup the dt-bindings and remove it from staging.
> 
> For reference, this is the isp clock topology:
> 
>  xin24m
>     pll_npll
>        npll
>           clk_isp1
>           clk_isp0
>     pll_cpll
>        cpll
>           aclk_isp1
>              aclk_isp1_noc
>              hclk_isp1
>                 aclk_isp1_wrapper
>                 hclk_isp1_noc
>           aclk_isp0
>              hclk_isp1_wrapper
>              aclk_isp0_wrapper
>              aclk_isp0_noc
>              hclk_isp0
>                 hclk_isp0_wrapper
>                 hclk_isp0_noc
>  pclkin_isp1_wrapper
> 
> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> Changes in V3:
> - this is a new patch in the series
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 33 ++++++++++---------
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  2 --
>  2 files changed, 17 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index 4d111ef2e89c7..f806820eb8153 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -24,20 +24,21 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    items:
> -      - description: ISP clock
> -      - description: ISP AXI clock clock
> -      - description: ISP AXI clock  wrapper clock
> -      - description: ISP AHB clock clock
> -      - description: ISP AHB wrapper clock
> +    maxItems: 5
> +    minItems: 3

Sorry, I forgot to mentioned that, as discussed previously on https://patchwork.kernel.org/patch/11475007/ ,
this is prepared to add rk3288 support, this is why maxItems is 5 (since rk3288 has 5 clocks).

> +    description:
> +      rk3399 isp0 clocks
> +        ISP clock
> +        ISP AXI wrapper clock
> +        ISP AHB wrapper clock
>  
>    clock-names:
> -    items:
> -      - const: clk_isp
> -      - const: aclk_isp
> -      - const: aclk_isp_wrap
> -      - const: hclk_isp
> -      - const: hclk_isp_wrap
> +    oneOf:

Same for this "oneOf", so we can add "rk3399 isp1 clocks" and "rk3288 clocks" later.

Regards,
Helen

> +      # rk3399 isp0 clocks
> +      - items:
> +        - const: clk_isp
> +        - const: aclk_isp_wrap
> +        - const: hclk_isp_wrap
>  
>    iommus:
>      maxItems: 1
> @@ -135,11 +136,11 @@ examples:
>              reg = <0x0 0xff910000 0x0 0x4000>;
>              interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>              clocks = <&cru SCLK_ISP0>,
> -                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> -                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> +                     <&cru ACLK_ISP0_WRAPPER>,
> +                     <&cru HCLK_ISP0_WRAPPER>;
>              clock-names = "clk_isp",
> -                          "aclk_isp", "aclk_isp_wrap",
> -                          "hclk_isp", "hclk_isp_wrap";
> +                          "aclk_isp_wrap",
> +                          "hclk_isp_wrap";
>              iommus = <&isp0_mmu>;
>              phys = <&dphy>;
>              phy-names = "dphy";
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index f38801fea10d9..36f5f3b97a9b9 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -407,8 +407,6 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
>  
>  static const char * const rk3399_isp_clks[] = {
>  	"clk_isp",
> -	"aclk_isp",
> -	"hclk_isp",
>  	"aclk_isp_wrap",
>  	"hclk_isp_wrap",
>  };
> 
