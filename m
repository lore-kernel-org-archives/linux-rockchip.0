From: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v4 2/9] media: staging: dt-bindings: rkisp1: add required
 items in i2c example
Date: Fri, 17 Jul 2020 11:41:40 -0600
Message-ID: <CAL_Jsq+5vW2cCz1oxVE-R3MW7gQfSHKrR_YrGm5ZHnjCCd9_Vw@mail.gmail.com>
References: <20200702191322.2639681-1-helen.koike@collabora.com> <20200702191322.2639681-3-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200702191322.2639681-3-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:STAGING SUBSYSTEM" <devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Collabora Kernel ML <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Eddie Cai <eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> Add missing required items in Rockchip ISP1 dt-bindings example for
> a complete i2c node.
>
> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
>
> Changes in v2:
> - new patch in the series
> ---
>  .../devicetree/bindings/media/rockchip-isp1.yaml             | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index a77b6ec500c95..8c7904845788d 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -169,6 +169,11 @@ examples:
>          };
>
>          i2c7: i2c@ff160000 {
> +            compatible = "rockchip,rk3399-i2c";
> +            reg = <0x0 0xff160000 0x0 0x1000>;

This will give a warning now as the default cell sizes are 1.

> +            interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH 0>;
> +            clocks = <&cru SCLK_I2C7>, <&cru PCLK_I2C7>;
> +            clock-names = "i2c", "pclk";

Just drop the unit address rather than adding all this.

>              clock-frequency = <400000>;
>              #address-cells = <1>;
>              #size-cells = <0>;
> --
> 2.26.0
>
