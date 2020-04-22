From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] media: MAINTAINERS: Fix Hantro, Rga and Rkvdec entries
Date: Wed, 22 Apr 2020 14:01:41 +0200
Message-ID: <73d3d8c1-1952-aeb1-5bc0-829503cf29bd@gmail.com>
References: <20200422111403.19114-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200422111403.19114-1-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On 4/22/20 1:14 PM, Ezequiel Garcia wrote:
> It seems recent merges introduced a couple issues
> here, so let's fix them all. Also, reorder Rockchip
> video decoder as per parse-maintainers.pl script
> and add linux-rockchip mailing list.
> 
> Reported-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  MAINTAINERS | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 09e0137df61d..4d5b06c6fe0f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7460,7 +7460,7 @@ L:	linux-media@vger.kernel.org
>  L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> -F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/staging/media/hantro/
>  
>  HARD DRIVE ACTIVE PROTECTION SYSTEM (HDAPS) DRIVER
> @@ -14465,13 +14465,6 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
>  F:	drivers/hid/hid-roccat*
>  F:	include/linux/hid-roccat*
>  
> -ROCKCHIP VIDEO DECODER DRIVER
> -M:	Ezequiel Garcia <ezequiel@collabora.com>
> -L:	linux-media@vger.kernel.org
> -S:	Maintained
> -F:	drivers/staging/media/rkvdec/
> -F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> -
>  ROCKCHIP ISP V1 DRIVER
>  M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org

L:	linux-rockchip@lists.infradead.org

> @@ -14483,12 +14476,19 @@ ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob Chen <jacob-chen@iotwrt.com>
>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>  L:	linux-media@vger.kernel.org
> +L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
>  F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
> -F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/media/platform/rockchip/rga/
>  
> +ROCKCHIP VIDEO DECODER DRIVER
> +M:	Ezequiel Garcia <ezequiel@collabora.com>
> +L:	linux-media@vger.kernel.org
> +L:	linux-rockchip@lists.infradead.org
> +S:	Maintained

> +F:	drivers/staging/media/rkvdec/
> +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml

When I look at the other entries 'drivers/' is sort below 'Documentation/'.

./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

> +
>  ROCKER DRIVER
>  M:	Jiri Pirko <jiri@resnulli.us>
>  L:	netdev@vger.kernel.org
> 
