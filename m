From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
Date: Wed, 20 May 2020 18:50:01 -0300
Message-ID: <cf93943a-c064-6b49-eb66-99bf38378e17@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> According to the TRM, the YUV->RGB conversion outputs
> "24 bit word". What it means is that 4 bytes are used with
> 24bit for the RGB and the last byte is ignored.
> This matches format V4L2_PIX_FMT_XBGR32.

I would just improve this a bit, since you only mention the number of bytes, but
doesn't mention why the colors are swapped.

My suggestion:

According to the TRM, the YUV->RGB conversion outputs RGB 888 format
with 4 bytes, where the last byte is ignored, using big endian representation:

________________________________
|___X___|___R___|___G___|___B___|
31      24      16      8       0

Which matches format V4L2_PIX_FMT_XBGR32 in little endian representation, so
replace it accordingly.


With this clarification:

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks,
Helen

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index f69235f82c45..61b9ebe577b2 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -276,7 +276,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	},
>  	/* rgb */
>  	{
> -		.fourcc = V4L2_PIX_FMT_RGB24,
> +		.fourcc = V4L2_PIX_FMT_XBGR32,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>  	}, {
> 
