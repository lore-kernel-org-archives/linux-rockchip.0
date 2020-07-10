From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: remove duplicate macro definition
Date: Fri, 10 Jul 2020 09:59:04 -0300
Message-ID: <66d18b0a-6528-9a67-ab4a-864141b0e459@collabora.com>
References: <20200707181053.24134-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200707181053.24134-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/7/20 3:10 PM, Dafna Hirschfeld wrote:
> The macro RKISP1_CIF_ISP_AWB_MODE_YCBCR_EN is defined twice.
> Remove the second define.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-regs.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-regs.h b/drivers/staging/media/rkisp1/rkisp1-regs.h
> index 46018f435b6f..9b8e616ea24c 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-regs.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-regs.h
> @@ -398,7 +398,6 @@
>  #define RKISP1_CIF_ISP_AWB_YMAX_READ(x)			(((x) >> 2) & 1)
>  #define RKISP1_CIF_ISP_AWB_MODE_RGB_EN			((1 << 31) | (0x2 << 0))
>  #define RKISP1_CIF_ISP_AWB_MODE_YCBCR_EN		((0 << 31) | (0x2 << 0))
> -#define RKISP1_CIF_ISP_AWB_MODE_YCBCR_EN		((0 << 31) | (0x2 << 0))
>  #define RKISP1_CIF_ISP_AWB_MODE_MASK_NONE		0xFFFFFFFC
>  #define RKISP1_CIF_ISP_AWB_MODE_READ(x)			((x) & 3)
>  /* ISP_AWB_GAIN_RB, ISP_AWB_GAIN_G  */
> 
