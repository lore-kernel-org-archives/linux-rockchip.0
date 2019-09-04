From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 01/12] media: hantro: Fix H264 max frmsize supported on
 RK3288
Date: Wed, 04 Sep 2019 10:07:36 -0300
Message-ID: <b7a43c96fa861de1dbbe969e3aaa4220e7e96793.camel@collabora.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <HE1PR06MB4011EAB6F0965D47A20AF805ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <HE1PR06MB4011EAB6F0965D47A20AF805ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Boris Brezillon <boris.brezillon@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Jonas,

Thank you for the patch.

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> change frmsize max_width/max_height to match TRM.
> 

The RK3288 TRM v1.1 (2015-8-20) I have here mentions a maximum
of 3840x2160.

I must admit I haven't tested with actual content this size
to verify it, have you checked it?

Thanks,
Ezequiel
 
> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> index 6bfcc47d1e58..ebb017b8a334 100644
> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
>  		.max_depth = 2,
>  		.frmsize = {
>  			.min_width = 48,
> -			.max_width = 3840,
> +			.max_width = 4096,
>  			.step_width = H264_MB_DIM,
>  			.min_height = 48,
> -			.max_height = 2160,
> +			.max_height = 2304,
>  			.step_height = H264_MB_DIM,
>  		},
>  	},
