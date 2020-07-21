From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v5 5/7] media: v4l2: add support for the subdev CSC API
 for hsv_enc on mediabus
Date: Tue, 21 Jul 2020 15:54:16 +0200
Message-ID: <f78cd2d5-a38b-7bbd-b03a-299ca8644bc9@xs4all.nl>
References: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
 <20200703171019.19270-6-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200703171019.19270-6-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: helen.koike@collabora.com, ezequiel@collabora.com, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

On 03/07/2020 19:10, Dafna Hirschfeld wrote:
> Add the flag V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC that drivers
> can set when enumerating the supported mediabus formats
> on subdevices to indicate that the userspace can ask to
> set the 'hsv_enc'. The patch also replaces the 'ycbcr_enc'
> field in 'struct v4l2_mbus_framefmt' with a union that
> includes 'hsv_enc'

I would just squash this patch with the previous patch. There is really
no need to split this into two patches.

Regards,

	Hans

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  .../media/v4l/subdev-formats.rst              | 33 +++++++++++++++----
>  include/uapi/linux/v4l2-mediabus.h            |  8 ++++-
>  include/uapi/linux/v4l2-subdev.h              |  1 +
>  3 files changed, 34 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> index 7362ee0b1e96..dddc38191547 100644
> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> @@ -51,7 +51,9 @@ Media Bus Formats
>  	The driver indicates that colorspace conversion is supported by setting
>  	the flag V4L2_SUBDEV_MBUS_CODE_CSC_COLORSPACE in the corresponding struct
>  	:c:type:`v4l2_subdev_mbus_code_enum` during enumeration.
> -	See :ref:`colorspaces`.
> +	See :ref:`v4l2-subdev-mbus-code-flags`.
> +    * - union {
> +      - (anonymous)
>      * - __u16
>        - ``ycbcr_enc``
>        - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
> @@ -67,7 +69,23 @@ Media Bus Formats
>  	V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC in the corresponding struct
>  	:c:type:`v4l2_subdev_mbus_code_enum` during enumeration.
>  	See :ref:`v4l2-subdev-mbus-code-flags`.
> -
> +    * - __u16
> +      - ``hsv_enc``
> +      - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
> +        This information supplements the ``colorspace`` and must be set by
> +	the driver for capture streams and by the application for output
> +	streams, see :ref:`colorspaces`. If the application sets the
> +	flag ``V4L2_MBUS_FRAMEFMT_SET_CSC`` then the application can set
> +	this field for a capture stream to request a specific HSV encoding
> +	for the media bus data. If the driver cannot handle requested
> +	conversion, it will return another supported encoding.
> +	This field is ignored for Y'CbCr media bus formats. The driver indicates
> +	that hsv_enc conversion is supported by setting the flag
> +	V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC in the corresponding struct
> +	:c:type:`v4l2_subdev_mbus_code_enum` during enumeration.
> +	See :ref:`v4l2-subdev-mbus-code-flags`
> +    * - }
> +      -
>      * - __u16
>        - ``quantization``
>        - Quantization range, from enum :c:type:`v4l2_quantization`.
> @@ -123,11 +141,12 @@ Media Bus Formats
>  	ignored for output streams. If set, then request the subdevice to do
>  	colorspace conversion from the received colorspace to the requested
>  	colorspace values. If colorimetry field (``colorspace``, ``ycbcr_enc``,
> -	``quantization`` or ``xfer_func``) is set to 0, then that colorimetry
> -	setting will remain unchanged from what was received. So to change the
> -	quantization, only the ``quantization`` field shall be set to non-zero values
> -	(``V4L2_QUANTIZATION_FULL_RANGE`` or ``V4L2_QUANTIZATION_LIM_RANGE``)
> -	and all other colorimetry fields shall be set to 0.
> +	''hsv_enc``, ``quantization`` or ``xfer_func``) is set to 0, then that
> +	colorimetry setting will remain unchanged from what was received. So to
> +	change the quantization, only the ``quantization`` field shall be set to
> +	non-zero values (``V4L2_QUANTIZATION_FULL_RANGE`` or
> +	``V4L2_QUANTIZATION_LIM_RANGE``) and all other colorimetry fields shall
> +	be set to 0.
>  
>  	To check which conversions are supported by the hardware for the current
>  	media bus frame format, see :ref:`v4l2-subdev-mbus-code-flags`.
> diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
> index 3b7d692b4015..d0bc8df18ad5 100644
> --- a/include/uapi/linux/v4l2-mediabus.h
> +++ b/include/uapi/linux/v4l2-mediabus.h
> @@ -26,6 +26,7 @@
>   * @field:	used interlacing type (from enum v4l2_field)
>   * @colorspace:	colorspace of the data (from enum v4l2_colorspace)
>   * @ycbcr_enc:	YCbCr encoding of the data (from enum v4l2_ycbcr_encoding)
> + * @hsv_enc:	HSV encoding of the data (from enum v4l2_hsv_encoding)
>   * @quantization: quantization of the data (from enum v4l2_quantization)
>   * @xfer_func:  transfer function of the data (from enum v4l2_xfer_func)
>   * @reserved2:  two reserved bytes that can be later used
> @@ -38,7 +39,12 @@ struct v4l2_mbus_framefmt {
>  	__u32			code;
>  	__u32			field;
>  	__u32			colorspace;
> -	__u16			ycbcr_enc;
> +	union {
> +		/* enum v4l2_ycbcr_encoding */
> +		__u16			ycbcr_enc;
> +		/* enum v4l2_hsv_encoding */
> +		__u16			hsv_enc;
> +	};
>  	__u16			quantization;
>  	__u16			xfer_func;
>  	__u16			reserved2;
> diff --git a/include/uapi/linux/v4l2-subdev.h b/include/uapi/linux/v4l2-subdev.h
> index c20aa9a89864..08e25a961d15 100644
> --- a/include/uapi/linux/v4l2-subdev.h
> +++ b/include/uapi/linux/v4l2-subdev.h
> @@ -67,6 +67,7 @@ struct v4l2_subdev_crop {
>  
>  #define V4L2_SUBDEV_MBUS_CODE_CSC_COLORSPACE	0x00000001
>  #define V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC	0x00000002
> +#define V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC	V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC
>  #define V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION	0x00000004
>  #define V4L2_SUBDEV_MBUS_CODE_CSC_XFER_FUNC	0x00000008
>  /**
> 
