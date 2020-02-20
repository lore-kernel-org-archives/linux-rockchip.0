From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v5 0/6] media: rockchip: Add the rkvdec driver
Date: Thu, 20 Feb 2020 09:24:28 +0100
Message-ID: <de59d088-ec08-c851-77f2-545053ca0cbb@xs4all.nl>
References: <20200219173750.26453-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200219173750.26453-1-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Boris Brezillon <boris.brezillon@collabora.com>, Sakari Ailus <sakari.ailus@iki.fi>
List-Id: linux-rockchip.vger.kernel.org

On 2/19/20 6:37 PM, Ezequiel Garcia wrote:
> Hello,
> 
> This is v5 of Boris' rkvdec driver.
> 
> This version corrects wrong copyright notices and then adds
> a TODO file for the staging driver. The only reason to keep the
> driver in staging are the staging uAPI controls.

Can you post a follow-up patch that updates the MAINTAINERS file?
That's missing in this series.

Thanks!

	Hans

> 
> Thanks,
> Ezequiel
> 
> Boris Brezillon (5):
>   media: v4l2-core: Add helpers to build the H264 P/B0/B1 reflists
>   media: hantro: h264: Use the generic H264 reflist builder
>   media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
>   media: rkvdec: Add the rkvdec driver
>   arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node
> 
> Jonas Karlman (1):
>   media: uapi: h264: Add DPB entry field reference flags
> 
>  .../bindings/media/rockchip,vdec.yaml         |   71 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        |   16 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
>  drivers/media/v4l2-core/Kconfig               |    4 +
>  drivers/media/v4l2-core/Makefile              |    1 +
>  drivers/media/v4l2-core/v4l2-h264.c           |  258 ++++
>  drivers/staging/media/Kconfig                 |    2 +
>  drivers/staging/media/Makefile                |    1 +
>  drivers/staging/media/hantro/Kconfig          |    1 +
>  drivers/staging/media/hantro/hantro_h264.c    |  237 +---
>  drivers/staging/media/rkvdec/Kconfig          |   15 +
>  drivers/staging/media/rkvdec/Makefile         |    3 +
>  drivers/staging/media/rkvdec/TODO             |   11 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c    | 1154 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec-regs.h    |  223 ++++
>  drivers/staging/media/rkvdec/rkvdec.c         | 1134 ++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.h         |  123 ++
>  include/media/h264-ctrls.h                    |    2 +
>  include/media/v4l2-h264.h                     |   86 ++
>  19 files changed, 3126 insertions(+), 230 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>  create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/Kconfig
>  create mode 100644 drivers/staging/media/rkvdec/Makefile
>  create mode 100644 drivers/staging/media/rkvdec/TODO
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
>  create mode 100644 include/media/v4l2-h264.h
> 
