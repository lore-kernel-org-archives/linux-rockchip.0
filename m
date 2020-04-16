From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Date: Thu, 16 Apr 2020 09:22:41 -0300
Message-ID: <d33aef355623a5abd6eec176d33a167c456ed915.camel@collabora.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200416115047.233720-1-paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Paul,

Thanks for the patch.

On Thu, 2020-04-16 at 13:50 +0200, Paul Kocialkowski wrote:
> Hi,
> 
> This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA driver.
> It also contains a fix for the YUV2YUV case that was not properly handled.
> 

How have you been testing this?

Thanks,
Ezequiel

> Cheers,
> 
> Paul
> 
> Paul Kocialkowski (4):
>   dt-bindings: rockchip-rga: Add PX30 compatible
>   arm64: dts: rockchip: Add RGA support to the PX30
>   media: rockchip: rga: Add support for the PX30 compatible
>   media: rockchip: rga: Only set output CSC mode for RGB input
> 
>  .../devicetree/bindings/media/rockchip-rga.txt |  1 +
>  arch/arm64/boot/dts/rockchip/px30.dtsi         | 11 +++++++++++
>  drivers/media/platform/rockchip/rga/rga-hw.c   | 18 +++++++++++-------
>  drivers/media/platform/rockchip/rga/rga.c      |  4 +++-
>  4 files changed, 26 insertions(+), 8 deletions(-)
> 
