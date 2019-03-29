From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 06/11] rockchip/vpu: Cleanup JPEG bounce buffer
 management
Date: Fri, 29 Mar 2019 12:21:47 +0900
Message-ID: <CAAFQd5Dd29Jmv7dgBrkX8DLN9+MJ5cbpNnK4rU9K+upxer7RfQ@mail.gmail.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-7-ezequiel@collabora.com>
 <CAAFQd5DjVDhFMc=WpnvF61yBcPm=BUQhVtBWSyphkkM8QubFzA@mail.gmail.com>
 <cb9d6645edaf8335f2cdd3094830e80b10ff051f.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <cb9d6645edaf8335f2cdd3094830e80b10ff051f.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 29, 2019 at 3:30 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> On Thu, 2019-03-28 at 15:15 +0900, Tomasz Figa wrote:
> > Hi Ezequiel,
> >
> > On Tue, Mar 5, 2019 at 4:26 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> > > In order to make the code more generic, introduce a pair of start/stop
> > > codec operations, and use them to allocate and release the JPEG bounce
> > > buffer.
> > >
> > > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > ---
> > >  .../media/rockchip/vpu/rk3288_vpu_hw.c        |  2 ++
> > >  .../rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c     |  4 +--
> > >  .../media/rockchip/vpu/rk3399_vpu_hw.c        |  2 ++
> > >  .../rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c     |  4 +--
> > >  .../staging/media/rockchip/vpu/rockchip_vpu.h | 12 ++++----
> > >  .../media/rockchip/vpu/rockchip_vpu_drv.c     | 10 +++++--
> > >  .../media/rockchip/vpu/rockchip_vpu_enc.c     | 23 +++++----------
> > >  .../media/rockchip/vpu/rockchip_vpu_hw.h      | 28 +++++++++++++++++++
> > >  .../media/rockchip/vpu/rockchip_vpu_jpeg.c    | 25 +++++++++++++++++
> > >  9 files changed, 81 insertions(+), 29 deletions(-)
> > >
> >
> > Thanks for the series! Really sorry for late reply...
> >
> > [snip]
> >
> > > diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
> > > index 1ec2be483e27..76ee24abc141 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
> > > +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
> > > @@ -124,10 +124,7 @@ struct rockchip_vpu_dev {
> > >   * @jpeg_quality:      User-specified JPEG compression quality.
> > >   *
> > >   * @codec_ops:         Set of operations related to codec mode.
> > > - *
> > > - * @bounce_dma_addr:   Bounce buffer bus address.
> > > - * @bounce_buf:                Bounce buffer pointer.
> > > - * @bounce_size:       Bounce buffer size.
> > > + * @jpeg_enc_ctx:      JPEG-encoding context.
> > >   */
> > >  struct rockchip_vpu_ctx {
> > >         struct rockchip_vpu_dev *dev;
> > > @@ -146,9 +143,10 @@ struct rockchip_vpu_ctx {
> > >
> > >         const struct rockchip_vpu_codec_ops *codec_ops;
> > >
> > > -       dma_addr_t bounce_dma_addr;
> > > -       void *bounce_buf;
> > > -       size_t bounce_size;
> > > +       /* Specific for particular codec modes. */
> > > +       union {
> > > +               struct rockchip_vpu_jpeg_enc_hw_ctx jpeg_enc_ctx;
> > > +       };
> >
> > nit: Would it perhaps make it a bit cleaner to call the union "ctx"?
> > Then we wouldn't need to repeat "_ctx" in every field.
> >
>
> Well, the struct is already rockchip_vpu_ctx, so access would look like:
>
>    ctx->ctx.jpeg_enc, ctx->ctx.mpeg2_dec
>
> Perhaps we can just drop the _ctx, and so:
>
>    ctx->jpeg_enc, ctx->mpeg2_dec
>

Even better, thanks.

> > >  };
> > >
> > >  /**
> > > diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > index 5647b0bdac20..1a6dd36c71ab 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > @@ -64,10 +64,16 @@ static void rockchip_vpu_job_finish(struct rockchip_vpu_dev *vpu,
> > >         avail_size = vb2_plane_size(&dst->vb2_buf, 0) -
> > >                      ctx->vpu_dst_fmt->header_size;
> > >         if (bytesused <= avail_size) {
> > > -               if (ctx->bounce_buf) {
> > > +               /*
> > > +                * This works while JPEG is the only encoder this driver
> > > +                * supports. We will have to abstract this step, or get
> > > +                * rid of the bounce buffer before we can support
> > > +                * encoding other codecs.
> >
> > Hmm, why wouldn't it work for other encoders, which shouldn't require
> > a bounce buffer?
> >
>
> Well, I had a TODO item to remove the bounce buffer for JPEG.
>
> IIRC, the ChromeOS VPU driver doesn't have any bounce buffer,
> so I was under the impression we wouldn't need one.
>
> However, we have yet to discuss the encoder implementation.
> We might decide to produce the headers for some video coded format,
> in which case we might need a bounce buffer.

We don't really need a bounce buffer to handle headers, we can do a
memmove() instead, as we did for the VP8 encoder [1]. However, it was
more like a loopback - the driver would just copy the header that the
userspace set through a control, so we decided to drop it and move
completely to the userspace [2] for H.264.

[1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/5bc4e95afddd1300368d0552b228824252bd789f/drivers/media/platform/rk3288-vpu/rk3288_vpu_hw_vp8e.c#52
[2] https://chromium.googlesource.com/chromiumos/third_party/libv4lplugins/+/5e6034258146af6be973fb6a5bb6b9d6e7489437/libv4l-rockchip_v2/libvepu/h264e/h264e.c#591

>
> In any case, this is just a comment to reflect that this piece
> of code is just temporary.
>

My point is that the comment suggests that other encoders would be
affected by this, which I don't believe is true, because the code
explicitly checks if the bounce buffer pointer is non-NULL and for
other encoders it would be NULL.

/*
 * The bounce buffer is only for the JPEG encoder.
 * TODO: Rework the JPEG encoder to eliminate the need
 * for a bounce buffer.
 */

Best regards,
Tomasz
