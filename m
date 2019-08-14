From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v5 04/11] media: uapi: h264: Add the concept of start code
Date: Wed, 14 Aug 2019 10:11:04 +0200
Message-ID: <f88d144f-e0fe-6974-efe5-77b5ed5c6e09@xs4all.nl>
References: <20190812193522.10911-1-ezequiel@collabora.com>
 <20190812193522.10911-5-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190812193522.10911-5-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 8/12/19 9:35 PM, Ezequiel Garcia wrote:
> Stateless decoders have different expectations about the
> start code that is prepended on H264 slices. Add a
> menu control to express the supported start code types
> (including no start code).
> 
> Drivers are allowed to support only one start code type,
> but they can support both too.
> 
> Note that this is independent of the H264 decoding mode,
> which specifies the granularity of the decoding operations.
> Either in frame-based or slice-based mode, this new control
> will allow to define the start code expected on H264 slices.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
> Changes in v5:
> * Improve specification as suggested by Hans.
> Changes in v4:
> * New patch.
> ---
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 33 +++++++++++++++++++
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  3 +-
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 +++++
>  include/media/h264-ctrls.h                    |  6 ++++
>  4 files changed, 50 insertions(+), 1 deletion(-)
> 

<snip>

> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> index e6c510877f67..31555c99f64a 100644
> --- a/include/media/h264-ctrls.h
> +++ b/include/media/h264-ctrls.h
> @@ -27,6 +27,7 @@
>  #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE	(V4L2_CID_MPEG_BASE+1005)
> +#define V4L2_CID_MPEG_VIDEO_H264_STARTCODE	(V4L2_CID_MPEG_BASE+1006)

I almost forgot: can you change this to _START_CODE? Since it is two words?

Thanks!

	Hans

>  
>  /* enum v4l2_ctrl_type type values */
>  #define V4L2_CTRL_TYPE_H264_SPS			0x0110
> @@ -41,6 +42,11 @@ enum v4l2_mpeg_video_h264_decoding_mode {
>  	V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING,
>  };
>  
> +enum v4l2_mpeg_video_h264_start_code {
> +	V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
> +	V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE,
> +};
> +
>  #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
>  #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
>  #define V4L2_H264_SPS_CONSTRAINT_SET2_FLAG			0x04
> 
