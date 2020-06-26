From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [RFC v4 8/8] media: v4l2: add support for the CSC API for
 hsv_enc on mediabus
Date: Fri, 26 Jun 2020 14:24:43 +0200
Message-ID: <378546a90adba0aa74e4eb0288668a99afbb9b31.camel@pengutronix.de>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
         <20200605172625.19777-9-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200605172625.19777-9-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On Fri, 2020-06-05 at 19:26 +0200, Dafna Hirschfeld wrote:
[...]
> --- a/include/uapi/linux/v4l2-subdev.h
> +++ b/include/uapi/linux/v4l2-subdev.h
> @@ -66,6 +66,7 @@ struct v4l2_subdev_crop {
>  };
>  
>  #define V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC	0x00000001
> +#define V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC	0x00000001

Hans' comment on patch 4 applies here as well, it would probably be
better to write:

#define V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC	V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC
regards
Philipp
