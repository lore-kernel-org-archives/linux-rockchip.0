From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 1/5] media: staging: rkisp1: cap: cleanup in mainpath
 config for uv swap format
Date: Thu, 2 Apr 2020 16:53:09 -0300
Message-ID: <a945bce9-2cb5-e51c-43d8-7b04916635f6@collabora.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200402190419.15155-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On 4/2/20 4:04 PM, Dafna Hirschfeld wrote:
> The value RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP equals BIT(0),
> Therefore when writing it to the register there is no need to mask
> it first with ~BIT(0).
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 45d237a77ca4..5700d7be2819 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -432,8 +432,7 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  	if (cap->pix.cfg->uv_swap) {
>  		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
> -		reg = (reg & ~BIT(0)) |
> -		      RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> +		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
>  		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  	}
>  
> 
