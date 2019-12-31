From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
Date: Tue, 31 Dec 2019 15:19:44 +0100
Message-ID: <CAFBinCBMKBry+ynmk1byC+UweMPbQcpHnGE2CxKJVJBcrY5+QQ@mail.gmail.com>
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com> <CAKGbVbs365C_44p9VyW33n5r2s7VKgOzpZWCZ2rAHZ+f2sic1A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAKGbVbs365C_44p9VyW33n5r2s7VKgOzpZWCZ2rAHZ+f2sic1A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Qiang Yu <yuq825@gmail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Qiang,

On Tue, Dec 31, 2019 at 3:54 AM Qiang Yu <yuq825@gmail.com> wrote:
[...]
> > diff --git a/drivers/gpu/drm/lima/lima_sched.c b/drivers/gpu/drm/lima/lima_sched.c
> > index f522c5f99729..851c496a168b 100644
> > --- a/drivers/gpu/drm/lima/lima_sched.c
> > +++ b/drivers/gpu/drm/lima/lima_sched.c
> > @@ -5,6 +5,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/xarray.h>
> >
> > +#include "lima_devfreq.h"
> >  #include "lima_drv.h"
> >  #include "lima_sched.h"
> >  #include "lima_vm.h"
> > @@ -213,6 +214,8 @@ static struct dma_fence *lima_sched_run_job(struct drm_sched_job *job)
> >          */
> >         ret = dma_fence_get(task->fence);
> >
> > +       lima_devfreq_record_busy(pipe->ldev);
> > +
> >         pipe->current_task = task;
> >
> >         /* this is needed for MMU to work correctly, otherwise GP/PP
> > @@ -280,6 +283,8 @@ static void lima_sched_handle_error_task(struct lima_sched_pipe *pipe,
> >         pipe->current_vm = NULL;
> >         pipe->current_task = NULL;
> >
> > +       lima_devfreq_record_idle(pipe->ldev);
> > +
> >         drm_sched_resubmit_jobs(&pipe->base);
> >         drm_sched_start(&pipe->base, true);
> >  }
> > @@ -348,6 +353,8 @@ void lima_sched_pipe_fini(struct lima_sched_pipe *pipe)
> >
> >  void lima_sched_pipe_task_done(struct lima_sched_pipe *pipe)
> >  {
> > +       lima_devfreq_record_idle(pipe->ldev);
>
> This should be moved to the else {} part of the following code. As you
> have added the save
> idle record to the lima_sched_handle_error_task which is just the if
> {} part of the following
> code, so no need to call it twice for error tasks. BTW.
> lima_sched_handle_error_task is also
> used for timeout tasks, so add idle record in it is fine.
oh, that is a good catch - thank you!
I will fix that in the next version


Martin
