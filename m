From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 2/2] media: staging: rkisp1: stats: don't set stats flags
 in rkisp1_stats_send_measurement
Date: Wed, 27 May 2020 01:15:18 +0200
Message-ID: <CAHD77Hksw9QmSkNs7qx7fBHWDw7gJjhZAXNZCrMLhEYFFg5e_g@mail.gmail.com>
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
 <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200509152904.26348-2-dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Dafna Hirschfeld <dafna3-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, May 9, 2020 at 5:29 PM Dafna Hirschfeld
<dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> The flags that indicate which statistics are read are already
> set in the functions that read them so there is no need to
> set them in the function rkisp1_stats_send_measurement.
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
>  drivers/staging/media/rkisp1/rkisp1-stats.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 8351bda0be03..0616793ae395 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -356,26 +356,19 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats,
>         cur_stat_buf =
>                 (struct rkisp1_stat_buffer *)(cur_buf->vaddr[0]);
>

Should we perhaps also set cur_stat_buf->meas_type to 0 here?

> -       if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE) {
> +       if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE)
>                 rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AWB;

I wonder if it wouldn't be cleaner if this function took care of
meas_type, rather than sprinkling it all over the measurement
collection functions.

> -       }
>
> -       if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN) {
> +       if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN)
>                 rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
> -       }
>
>         if (meas_work->isp_ris & RKISP1_CIF_ISP_EXP_END) {
>                 rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
>                 rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
>         }
>
> -       if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY) {
> +       if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>                 rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
> -       }
>
>         vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
>                               sizeof(struct rkisp1_stat_buffer));
> --
> 2.17.1
>
