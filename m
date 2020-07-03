From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 2/9] media: rkvdec: h264: Fix reference frame_num wrap
 for second field
Date: Thu, 02 Jul 2020 23:55:14 -0300
Message-ID: <5ec7b0000d45ed1a4aec9fb7357e53811ec7362f.camel@collabora.com>
References: <20200701215616.30874-1-jonas@kwiboo.se>
         <20200701215616.30874-3-jonas@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200701215616.30874-3-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 2020-07-01 at 21:56 +0000, Jonas Karlman wrote:
> When decoding the second field in a complementary field pair the second
> field is sharing the same frame_num with the first field.
> 
> Currently the frame_num for the first field is wrapped when it matches the
> field being decoded, this cause issues to decode the second field in a
> complementary field pair.
> 
> Fix this by using inclusive comparison, less than or equal.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks!
Ezequiel

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 7b66e2743a4f..f0cfed84d60d 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -754,7 +754,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  			continue;
>  
>  		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
> -		    dpb[i].frame_num < sl_params->frame_num) {
> +		    dpb[i].frame_num <= sl_params->frame_num) {
>  			p[i] = dpb[i].frame_num;
>  			continue;
>  		}
