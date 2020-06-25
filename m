From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [RFC v4 3/8] media: Documentation: v4l: move table of
 v4l2_pix_format(_mplane) flags to pixfmt-v4l2.rst
Date: Thu, 25 Jun 2020 20:29:22 -0300
Message-ID: <58bbf581-aadc-c643-0bce-b2b7647c99a2@collabora.com>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
 <20200605172625.19777-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200605172625.19777-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, p.zabel@pengutronix.de
List-Id: linux-rockchip.vger.kernel.org



On 6/5/20 2:26 PM, Dafna Hirschfeld wrote:
> The table of the flags of the structs
> v4l2_pix_format(_mplane) is currently in pixfmt-reserved.rst
> which is wrong, it should be in pixfmt-v4l2.rst
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  .../userspace-api/media/v4l/pixfmt-reserved.rst | 17 -----------------
>  .../userspace-api/media/v4l/pixfmt-v4l2.rst     | 17 +++++++++++++++++
>  .../media/videodev2.h.rst.exceptions            |  2 +-
>  3 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst b/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
> index 59b9e7238f90..74ab6b5ce294 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
> @@ -263,20 +263,3 @@ please make a proposal on the linux-media mailing list.
>  	of tiles, resulting in 32-aligned resolutions for the luminance plane
>  	and 16-aligned resolutions for the chrominance plane (with 2x2
>  	subsampling).
> -
> -.. tabularcolumns:: |p{6.6cm}|p{2.2cm}|p{8.7cm}|
> -
> -.. _format-flags:
> -
> -.. flat-table:: Format Flags
> -    :header-rows:  0
> -    :stub-columns: 0
> -    :widths:       3 1 4
> -
> -    * - ``V4L2_PIX_FMT_FLAG_PREMUL_ALPHA``
> -      - 0x00000001
> -      - The color values are premultiplied by the alpha channel value. For
> -	example, if a light blue pixel with 50% transparency was described
> -	by RGBA values (128, 192, 255, 128), the same pixel described with
> -	premultiplied colors would be described by RGBA values (64, 96,
> -	128, 128)> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
> index 759420a872d6..ffa539592822 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
> @@ -169,3 +169,20 @@ Single-planar format structure
>          This information supplements the ``colorspace`` and must be set by
>  	the driver for capture streams and by the application for output
>  	streams, see :ref:`colorspaces`.
> +
> +.. tabularcolumns:: |p{6.6cm}|p{2.2cm}|p{8.7cm}|
> +
> +.. _format-flags:
> +
> +.. flat-table:: Format Flags
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       3 1 4
> +
> +    * - ``V4L2_PIX_FMT_FLAG_PREMUL_ALPHA``
> +      - 0x00000001
> +      - The color values are premultiplied by the alpha channel value. For
> +        example, if a light blue pixel with 50% transparency was described
> +	by RGBA values (128, 192, 255, 128), the same pixel described with
> +	premultiplied colors would be described by RGBA values (64, 96,
> +	128, 128)


I see this is also pointed by Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst, but I don't
oppose moving the flags to this page.

Regards,
Helen


> diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> index a625fb90e3a9..564a3bf5bc6d 100644
> --- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> +++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
> @@ -180,7 +180,7 @@ replace define V4L2_CAP_IO_MC device-capabilities
>  
>  # V4L2 pix flags
>  replace define V4L2_PIX_FMT_PRIV_MAGIC :c:type:`v4l2_pix_format`
> -replace define V4L2_PIX_FMT_FLAG_PREMUL_ALPHA reserved-formats
> +replace define V4L2_PIX_FMT_FLAG_PREMUL_ALPHA format-flags
>  
>  # V4L2 format flags
>  replace define V4L2_FMT_FLAG_COMPRESSED fmtdesc-flags
> 
