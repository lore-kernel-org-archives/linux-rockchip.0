From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 2/5] media: staging: rkisp1: use a macro for the
 statistics flags mask
Date: Wed, 20 May 2020 08:03:30 -0300
Message-ID: <0e4f479e-5768-c916-e80f-ff2b605f2975@collabora.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On 5/12/20 9:05 AM, Dafna Hirschfeld wrote:
> The mask of the ready statistics flags is used in
> several places in the code using bitwise-or.
> Use a macro for that to make the code more readable.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  4 ++++
>  drivers/staging/media/rkisp1/rkisp1-isp.c    |  5 +----
>  drivers/staging/media/rkisp1/rkisp1-stats.c  | 12 +++---------
>  3 files changed, 8 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 33dffe21c769..c0ab16c6b3db 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -42,6 +42,10 @@
>  
>  #define RKISP1_MAX_BUS_CLK	8
>  
> +#define RKISP1_STATS_MEAS_MASK		(RKISP1_CIF_ISP_AWB_DONE |	\
> +					 RKISP1_CIF_ISP_AFM_FIN |	\
> +					 RKISP1_CIF_ISP_EXP_END |	\
> +					 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>  enum rkisp1_rsz_pad {
>  	RKISP1_RSZ_PAD_SINK,
>  	RKISP1_RSZ_PAD_SRC,
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 19ab0ed323aa..49b47e1734b0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1137,10 +1137,7 @@ irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>  
>  		/* New frame from the sensor received */
>  		isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
> -		if (isp_ris & (RKISP1_CIF_ISP_AWB_DONE |
> -			       RKISP1_CIF_ISP_AFM_FIN |
> -			       RKISP1_CIF_ISP_EXP_END |
> -			       RKISP1_CIF_ISP_HIST_MEASURE_RDY))
> +		if (isp_ris & RKISP1_STATS_MEAS_MASK)
>  			rkisp1_stats_isr(&rkisp1->stats, isp_ris);
>  	}
>  
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 6dfcbdc3deb8..12998db955e6 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -407,22 +407,16 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
>  
>  	spin_lock(&stats->irq_lock);
>  
> -	val = RKISP1_CIF_ISP_AWB_DONE | RKISP1_CIF_ISP_AFM_FIN |
> -	      RKISP1_CIF_ISP_EXP_END | RKISP1_CIF_ISP_HIST_MEASURE_RDY;
> +	val = RKISP1_STATS_MEAS_MASK;
>  	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
>  
>  	isp_mis_tmp = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
> -	if (isp_mis_tmp &
> -	    (RKISP1_CIF_ISP_AWB_DONE | RKISP1_CIF_ISP_AFM_FIN |
> -	     RKISP1_CIF_ISP_EXP_END | RKISP1_CIF_ISP_HIST_MEASURE_RDY))
> +	if (isp_mis_tmp & RKISP1_STATS_MEAS_MASK)
>  		rkisp1->debug.stats_error++;
>  
>  	if (!stats->is_streaming)
>  		goto unlock;
> -	if (isp_ris & (RKISP1_CIF_ISP_AWB_DONE |
> -		       RKISP1_CIF_ISP_AFM_FIN |
> -		       RKISP1_CIF_ISP_EXP_END |
> -		       RKISP1_CIF_ISP_HIST_MEASURE_RDY)) {
> +	if (isp_ris & RKISP1_STATS_MEAS_MASK) {
>  		work = kzalloc(sizeof(*work), GFP_ATOMIC);
>  		if (work) {
>  			INIT_WORK(&work->work,
> 
