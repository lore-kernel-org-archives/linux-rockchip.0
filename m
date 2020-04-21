From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
Date: Tue, 21 Apr 2020 15:19:36 +0200
Message-ID: <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <12f6d7cf-6af6-4f54-3188-65e73b703a72-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Question for the media maintainers Hans & Co. :

What's nxp,imx8mq-vpu.yaml doing under rga?
Why is rockchip-vpu.yaml inserted under rga instead of vpu?

Johan

> diff --git a/MAINTAINERS b/MAINTAINERS
> index f0e7b4d17fcc..0cfd86594b0b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14471,7 +14471,8 @@ M:	Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>
>  M:	Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>  L:	linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
> +F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/media/platform/rockchip/rga/

HANTRO VPU CODEC DRIVER
M:	Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
M:	Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
L:	linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
L:	linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
S:	Maintained
F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
F:	drivers/staging/media/hantro/

ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
M:	Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>
M:	Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
L:	linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
S:	Maintained
F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
F:	drivers/media/platform/rockchip/rga/
