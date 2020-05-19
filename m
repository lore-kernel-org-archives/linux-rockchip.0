From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 1/2] media: staging: rkisp1 stats: set a measure flag with
 '|=' instead of '='
Date: Tue, 19 May 2020 13:39:20 -0300
Message-ID: <ce920d19-c602-3ba9-2078-913bb16e8c95@collabora.com>
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, hverkuil@xs4all.nl, sakari.ailus@linux.intel.com, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thanks for the patch.

On 5/9/20 12:29 PM, Dafna Hirschfeld wrote:
> The flag RKISP1_CIF_ISP_STAT_AFM_FIN that indicates a type of
> statistics is mistakenly set with '=' instead of '|='
> this might set off previous flags.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
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

It seems there is a redundancy, the place that calls this function already sets this bit.
It seems there is a similar issue in all rkisp1_stats_get_* functions.

Could you please check and do the proper cleanup?

Thanks
Helen

>  
>  	af = &pbuf->params.af;
>  	af->window[0].sum = rkisp1_read(rkisp1, RKISP1_CIF_ISP_AFM_SUM_A);
> 
