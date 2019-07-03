From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 2/2] media: hantro: Add support for VP8 decoding on
 rk3288
Date: Wed, 3 Jul 2019 14:32:43 +0200
Message-ID: <20190703143243.60174ead@collabora.com>
References: <20190702170016.5210-1-ezequiel@collabora.com>
        <20190702170016.5210-3-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190702170016.5210-3-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>, kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, ZhiChao Yu <zhichao.yu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue,  2 Jul 2019 14:00:16 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> index bcacc4f51093..470e803e25a6 100644
> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> @@ -74,6 +74,19 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
>  			.step_height = MPEG2_MB_DIM,
>  		},
>  	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_VP8_FRAME,
> +		.codec_mode = HANTRO_MODE_VP8_DEC,
> +		.max_depth = 2,
> +		.frmsize = {
> +			.min_width = 48,
> +			.max_width = 3840,
> +			.step_width = 16,
> +			.min_height = 48,
> +			.max_height = 2160,
> +			.step_height = 16,

Can you define VP8_MB_DIM and use if for step_{width,height} (as done
for MPEG2 and H264)?

Looks good otherwise:

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> +		},
> +	},
>  };
