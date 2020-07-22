From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v5 4/7] v4l2: extend the CSC API to subdevice.
Date: Wed, 22 Jul 2020 12:53:28 +0000
Message-ID: <20200722125328.GA1828171@chromium.org>
References: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
 <20200703171019.19270-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200703171019.19270-5-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On Fri, Jul 03, 2020 at 07:10:16PM +0200, Dafna Hirschfeld wrote:
> This patch extends the CSC API in video devices to be supported
> also on sub-devices. The flag V4L2_MBUS_FRAMEFMT_SET_CSC set by
> the application when calling VIDIOC_SUBDEV_S_FMT ioctl.
> The flags:
> 
> V4L2_SUBDEV_MBUS_CODE_CSC_COLORSPACE, V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC,
> V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION V4L2_SUBDEV_MBUS_CODE_CSC_XFER_FUNC,
> 
> are set by the driver in the VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.
> 
> New 'flags' fields were added to the structs
> v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed
> from the 'reserved' field
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  .../media/v4l/subdev-formats.rst              | 78 +++++++++++++++++--
>  .../v4l/vidioc-subdev-enum-mbus-code.rst      | 44 ++++++++++-
>  include/uapi/linux/v4l2-mediabus.h            |  9 ++-
>  include/uapi/linux/v4l2-subdev.h              |  8 +-
>  4 files changed, 129 insertions(+), 10 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> index 9a4d61b0d76f..7362ee0b1e96 100644
> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> @@ -41,32 +41,96 @@ Media Bus Formats
>  	:ref:`field-order` for details.
>      * - __u32
>        - ``colorspace``
> -      - Image colorspace, from enum
> -	:c:type:`v4l2_colorspace`. See
> -	:ref:`colorspaces` for details.
> +      - Image colorspace, from enum :c:type:`v4l2_colorspace`.
> +        Must be set by the driver for capture streams and by the application
> +	for output streams, see :ref:`colorspaces`. If the application sets the
> +	flag ``V4L2_MBUS_FRAMEFMT_SET_CSC`` then the application can set
> +	this field for a capture stream to request a specific colorspace

What is a "capture stream" in terms of the subdev API? Should this
perhaps refer to "source pads" instead?

[snip]
> +.. _v4l2-mbus-framefmt-flags:
> +
> +.. flat-table:: v4l2_mbus_framefmt Flags
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       3 1 4
> +
> +    * .. _`mbus-framefmt-set-csc`:
> +
> +      - ``V4L2_MBUS_FRAMEFMT_SET_CSC``
> +      - 0x00000001
> +      - Set by the application. It is only used for capture and is
> +	ignored for output streams. If set, then request the subdevice to do

Ditto.

> +	colorspace conversion from the received colorspace to the requested
> +	colorspace values. If colorimetry field (``colorspace``, ``ycbcr_enc``,

nit: a colorimetry field

> +	``quantization`` or ``xfer_func``) is set to 0, then that colorimetry

Is it okay to explicitly mention 0 here, rather than the defined
"_DEFAULT" values?

Best regards,
Tomasz
