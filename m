From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
Date: Fri, 26 Jun 2020 17:59:14 +0200
Message-ID: <CAAFQd5CHK+c=zED-evW3sqgF+WpuAYW6M8kvPZCVCrf2_KHG8A@mail.gmail.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-4-dafna.hirschfeld@collabora.com> <e269f2f5-c24c-7009-e624-3545af206709@arm.com>
 <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com> <e680474a-1b47-7904-b7ab-5a026d0db05f@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <e680474a-1b47-7904-b7ab-5a026d0db05f@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Helen Koike <helen.koike@collabora.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jun 26, 2020 at 5:48 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> On 26.06.20 16:03, Tomasz Figa wrote:
> > On Fri, Jun 26, 2020 at 3:32 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> Hi Dafna,
> >>
> >> On 2020-06-25 18:42, Dafna Hirschfeld wrote:
> >>> In the stop_streaming callback 'rkisp1_params_vb2_stop_streaming'
> >>> there is no need to release the lock 'config_lock' and then acquire
> >>> it again at each iteration when returning all buffers.
> >>> This is because the stream is about to end and there is no need
> >>> to let the isr access a buffer.
> >>>
> >>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>> ---
> >>>    drivers/staging/media/rkisp1/rkisp1-params.c | 7 +------
> >>>    1 file changed, 1 insertion(+), 6 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> >>> index bf006dbeee2d..5169b02731f1 100644
> >>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> >>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> >>> @@ -1488,19 +1488,13 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
> >>>        /* stop params input firstly */
> >>>        spin_lock_irqsave(&params->config_lock, flags);
> >>>        params->is_streaming = false;
> >>> -     spin_unlock_irqrestore(&params->config_lock, flags);
> >>>
> >>>        for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
> >>> -             spin_lock_irqsave(&params->config_lock, flags);
> >>>                if (!list_empty(&params->params)) {
> >>>                        buf = list_first_entry(&params->params,
> >>>                                               struct rkisp1_buffer, queue);
> >>>                        list_del(&buf->queue);
> >>> -                     spin_unlock_irqrestore(&params->config_lock,
> >>> -                                            flags);
> >>>                } else {
> >>> -                     spin_unlock_irqrestore(&params->config_lock,
> >>> -                                            flags);
> >>>                        break;
> >>>                }
> >>
> >> Just skimming through out of idle curiosity I was going to comment that
> >> if you end up with this pattern:
> >>
> >>          if (!x) {
> >>                  //do stuff
> >>          } else {
> >>                  break;
> >>          }
> >>
> >> it would be better as:
> >>
> >>          if (x)
> >>                  break;
> >>          //do stuff
> >>
> >> However I then went and looked at the whole function and frankly it's a
> >> bit of a WTF. As best I could decipher, this whole crazy loop appears to
> >> be a baroque reinvention of:
> >>
> >>          list_for_each_entry_safe(&params->params, ..., buf) {
> >>                  list_del(&buf->queue);
> >>                  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
> >>          }
> Hi, indeed this is a much simpler implementation, greping 'return_all_buffers'
> I see that many drivers implement it this way.
> thanks!
>
> >>
> >> (assuming from context that the list should never contain more than
> >> RKISP1_ISP_PARAMS_REQ_BUFS_MAX entries in the first place)
> >
> > Or if we want to avoid disabling the interrupts for the whole
> > iteration, we could use list_splice() to move all the entries of
>
> But this code runs when userspace asks to stop the streaming so I don't
> think it is important at that stage to allow the interrupts.

It's generally a good practice to reduce the time spent with
interrupts disabled. Disabling the interrupts prevents the system from
handling external events, including timer interrupts, and scheduling
higher priority tasks, including real time ones. How much the system
runs with interrupts disabled is one of the factors determining the
general system latency.

Best regards,
Tomasz
