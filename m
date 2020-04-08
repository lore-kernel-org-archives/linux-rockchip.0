From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v3 4/6] media: staging: rkisp1: cap: support uv swap only
 for semiplanar formats
Date: Wed, 8 Apr 2020 15:10:56 +0300
Message-ID: <20200408121056.GF4881@pendragon.ideasonboard.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
 <20200408114822.27360-5-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200408114822.27360-5-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thank you for the patch.

On Wed, Apr 08, 2020 at 01:48:20PM +0200, Dafna Hirschfeld wrote:
> The register RKISP1_CIF_MI_XTD_FORMAT_CTRL is relevant only
> for semiplanar formats, therefore the uv swap can be supported
> through this register only for semiplanar formats.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 31 ++++++++++++-------
>  1 file changed, 19 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 4830083c33fd..257799a7d865 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -383,12 +383,16 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  		     cap->config->mi.cr_size_init);
>  
>  	rkisp1_irq_frame_end_enable(cap);
> -	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> -	if (cap->pix.cfg->uv_swap)
> -		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> -	else
> -		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> -	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +
> +	/* set uv swapping for semiplanar formats */
> +	if (cap->pix.info->comp_planes == 2) {
> +		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +		if (cap->pix.cfg->uv_swap)
> +			reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> +		else
> +			reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> +		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +	}
>  
>  	rkisp1_mi_config_ctrl(cap);
>  
> @@ -421,12 +425,15 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>  
>  	rkisp1_irq_frame_end_enable(cap);
>  
> -	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> -	if (cap->pix.cfg->uv_swap)
> -		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> -	else
> -		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> -	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +	/* set uv swapping for semiplanar formats */
> +	if (cap->pix.info->comp_planes == 2) {
> +		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +		if (cap->pix.cfg->uv_swap)
> +			reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> +		else
> +			reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> +		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +	}
>  
>  	rkisp1_mi_config_ctrl(cap);
>  

-- 
Regards,

Laurent Pinchart
