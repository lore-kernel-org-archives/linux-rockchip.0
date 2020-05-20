From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 4/4] media: staging: rkisp1: cap: remove support of
 BGR666 format
Date: Wed, 20 May 2020 19:34:55 -0300
Message-ID: <fc4dbc40-ab57-0ca4-4ac7-5ffdb7f0ad81@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org



On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> The rkisp1 supports RGB encoding with 6 bits per
> color with the following format:
> - - b5 b4 b3 b2 b1 b0 - - g5 g4 g3 g2 g1 g0 - - r5 r4 r3 r2 r1 r0 - - - - - - - -

Is this the same as V4L2_PIX_FMT_XBGR32 format, but with colors range from 0 to 63 ?

I was wondering what is the usage of such a format. If it is useful, then I'm sad
to see this being removed from the driver, since this is a v4l2 api limitation, and not
a hw limitation.

Regards,
Helen

> 
> This is not how V4L2_PIX_FMT_BGR666 is defined, so remove
> this format from the driver's formats list.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 61b9ebe577b2..2660e44eda88 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -283,10 +283,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.fourcc = V4L2_PIX_FMT_RGB565,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_BGR666,
> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
>  	},
>  };
>  
> 
