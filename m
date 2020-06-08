From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RFC v4 1/8] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
Date: Mon, 8 Jun 2020 13:33:25 +0200
Message-ID: <a929b94b-ab8b-42cc-6ffa-d7a3e8a8332b@xs4all.nl>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
 <20200605172625.19777-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200605172625.19777-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: helen.koike@collabora.com, ezequiel@collabora.com, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, p.zabel@pengutronix.de
List-Id: linux-rockchip.vger.kernel.org

On 05/06/2020 19:26, Dafna Hirschfeld wrote:
> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
> This is a bug, the resizer should support the same formats
> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Please include Helen's Ack when you post a v5.

(https://patchwork.linuxtv.org/patch/64291/)

For that matter, shouldn't this be a 'Fixes:' patch with a Cc to stable?

Regards,

	Hans

> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index d049374413dc..d64c064bdb1d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  	u32 pad = code->pad;
>  	int ret;
>  
> -	/* supported mbus codes are the same in isp sink pad */
> -	code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
> +	/* supported mbus codes are the same in isp video src pad */
> +	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
>  	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
>  			       &dummy_cfg, code);
>  
> 
