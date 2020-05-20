From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/2] media: staging: rkisp1 stats: set a measure flag
 with '|=' instead of '='
Date: Wed, 20 May 2020 03:15:43 +0300
Message-ID: <20200520001543.GM3820@pendragon.ideasonboard.com>
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, helen.koike@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, hverkuil@xs4all.nl, sakari.ailus@linux.intel.com, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thank you for the patch.

On Sat, May 09, 2020 at 05:29:03PM +0200, Dafna Hirschfeld wrote:
> The flag RKISP1_CIF_ISP_STAT_AFM_FIN that indicates a type of
> statistics is mistakenly set with '=' instead of '|='
> this might set off previous flags.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-stats.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 6dfcbdc3deb8..8351bda0be03 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -253,7 +253,7 @@ static void rkisp1_stats_get_afc_meas(struct rkisp1_stats *stats,
>  	struct rkisp1_device *rkisp1 = stats->rkisp1;
>  	struct rkisp1_cif_isp_af_stat *af;
>  
> -	pbuf->meas_type = RKISP1_CIF_ISP_STAT_AFM_FIN;
> +	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
>  
>  	af = &pbuf->params.af;
>  	af->window[0].sum = rkisp1_read(rkisp1, RKISP1_CIF_ISP_AFM_SUM_A);

-- 
Regards,

Laurent Pinchart
