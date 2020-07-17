From: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v4 4/9] media: staging: dt-bindings: rkisp1: fix "no reg"
 error in parent node
Date: Fri, 17 Jul 2020 11:44:02 -0600
Message-ID: <CAL_JsqLYHY85_JhpGKwTOSP99uCER9VEf-gp3g4nFhN4ktCO3w@mail.gmail.com>
References: <20200702191322.2639681-1-helen.koike@collabora.com> <20200702191322.2639681-5-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200702191322.2639681-5-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:STAGING SUBSYSTEM" <devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Collabora Kernel ML <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Eddie Cai <eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> Fix the following error found with make ARCH=arm64 dt_binding_check:
>
> Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:24.27-101.11:
> Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit name, but no reg or ranges property
>
> Reported-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
>
> V3:
> - this is a new patch in the series
> ---
>  .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index e5b9c0574e352..4d111ef2e89c7 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -126,6 +126,7 @@ examples:
>      #include <dt-bindings/power/rk3399-power.h>
>
>      parent0: parent@0 {
> +        reg = <0 0>;

Just drop the unit-address.

>          #address-cells = <2>;
>          #size-cells = <2>;
>
> --
> 2.26.0
>
