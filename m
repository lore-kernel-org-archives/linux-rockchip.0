From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 09/11] rockchip/vpu: Add decoder boilerplate
Date: Fri, 29 Mar 2019 16:40:39 +0900
Message-ID: <CAAFQd5DEyu7TSc=Cv3T94aTdfZbgS4J8HN_nZA=BL8HkFW-Z-Q@mail.gmail.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-10-ezequiel@collabora.com>
 <CAAFQd5AWJj5wY6jOf2hC4t8kU1XQ3y6H_YKGaZgRVCHrUvfPXQ@mail.gmail.com>
 <3dc357b3be2ebe787b79817384c59bba25ff57ad.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3dc357b3be2ebe787b79817384c59bba25ff57ad.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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

On Fri, Mar 29, 2019 at 4:23 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> Hey Tomasz,
>
> Thanks for taking the time to review this carefully!
>
> On Thu, 2019-03-28 at 18:57 +0900, Tomasz Figa wrote:
> > On Tue, Mar 5, 2019 at 4:27 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
[snip]
> > > +}
> > > +
> > > +static int
> > > +vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> > > +{
> > > +       struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > > +       struct rockchip_vpu_ctx *ctx = fh_to_ctx(priv);
> > > +       struct rockchip_vpu_dev *vpu = ctx->dev;
> > > +       struct vb2_queue *vq, *peer_vq;
> > > +       int ret;
> > > +
> > > +       /* Change not allowed if queue is streaming. */
> > > +       vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> > > +       if (vb2_is_streaming(vq))
> > > +               return -EBUSY;
> > > +
> > > +       /*
> > > +        * Since format change on the OUTPUT queue will reset
> > > +        * the CAPTURE queue, we can't allow doing so
> > > +        * when the CAPTURE queue has buffers allocated.
> > > +        */
> > > +       peer_vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
> > > +                                 V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> > > +       if (vb2_is_busy(peer_vq) &&
> > > +           (pix_mp->pixelformat != ctx->src_fmt.pixelformat ||
> > > +            pix_mp->height != ctx->src_fmt.height ||
> > > +            pix_mp->width != ctx->src_fmt.width))
> > > +               return -EBUSY;
> >
> > I'd say that in general we don't want any S_FMT(OUT) to be allowed if
> > CAP has buffers allocated, so maybe just checking vb2_is_busy(peer_vq)
> > is enough?
> >
>
> Hm, this has been confusing to no end for me. This check comes from s_fmt_cap
> in rockchip_vpu_enc.c, at the time we came to the conclusion that
> vb2_is_busy(peer_queue) wasn't enough.

Hmm, yeah, this is confusing indeed, especially considering that we
shouldn't need width and height on the CAP queue of an encoder.

>
> Taking a step back, the S_FMT order is first encoded format, then raw format.
>
> So for encoders the user is expected to do first S_FMT(CAP), second S_FMT(OUT).
> For decoders, first S_FMT(OUT), second S_FMT(CAP)... and that's why we are interested
> on a strict vb2_is_busy check.
>
> The question is how we came to a different conclusion on the encoder.
>

I loosely recollect it having something to do with JPEG specifically, hmm...

[snip]

> > > +
> > > +       if (V4L2_TYPE_IS_OUTPUT(q->type))
> > > +               if (ctx->codec_ops && ctx->codec_ops->start)
> > > +                       ret = ctx->codec_ops->start(ctx);
> > > +       return ret;
> > > +}
> > > +
> > > +static void rockchip_vpu_stop_streaming(struct vb2_queue *q)
> > > +{
> > > +       struct rockchip_vpu_ctx *ctx = vb2_get_drv_priv(q);
> > > +
> > > +       if (V4L2_TYPE_IS_OUTPUT(q->type))
> > > +               if (ctx->codec_ops && ctx->codec_ops->stop)
> > > +                       ctx->codec_ops->stop(ctx);
> > > +
> > > +       /* The mem2mem framework calls v4l2_m2m_cancel_job before
> >
> > CodingStyle: Multiline comments should start with one empty line.
> >
>
> Oops. Seems I have a tendency for this!
>

Actually, some subsystems use that style, e.g. net/.

> > > +        * .stop_streaming, so there isn't any job running and
> > > +        * it is safe to return all the buffers.
> > > +        */
> > > +       for (;;) {
> > > +               struct vb2_v4l2_buffer *vbuf;
> > > +
> > > +               if (V4L2_TYPE_IS_OUTPUT(q->type))
> > > +                       vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> > > +               else
> > > +                       vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > > +               if (!vbuf)
> > > +                       break;
> > > +               v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req, &ctx->ctrl_handler);
> > > +               v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
> > > +       }
> > > +}
> > > +
> > > +static void rockchip_vpu_buf_request_complete(struct vb2_buffer *vb)
> > > +{
> > > +       struct rockchip_vpu_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
> > > +
> > > +       v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->ctrl_handler);
> > > +}
> > > +
> > > +static int rockchip_vpu_buf_out_validate(struct vb2_buffer *vb)
> > > +{
> > > +       struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> > > +
> > > +       vbuf->field = V4L2_FIELD_NONE;
> >
> > Similar comment as in earlier patch. Is validate expected to correct
> > the values or just check?
> >
>
> See Hans' reply.

Ack.

>
> > > +       return 0;
> > > +}
> > > +
> > > +const struct vb2_ops rockchip_vpu_dec_queue_ops = {
> > > +       .queue_setup = rockchip_vpu_queue_setup,
> > > +       .buf_prepare = rockchip_vpu_buf_prepare,
> > > +       .buf_queue = rockchip_vpu_buf_queue,
> > > +       .buf_out_validate = rockchip_vpu_buf_out_validate,
> > > +       .buf_request_complete = rockchip_vpu_buf_request_complete,
> > > +       .start_streaming = rockchip_vpu_start_streaming,
> > > +       .stop_streaming = rockchip_vpu_stop_streaming,
> > > +       .wait_prepare = vb2_ops_wait_prepare,
> > > +       .wait_finish = vb2_ops_wait_finish,
> > > +};
> > > diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > index 937e9cfb4568..27a9da86f1d0 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > @@ -36,6 +36,11 @@ module_param_named(debug, rockchip_vpu_debug, int, 0644);
> > >  MODULE_PARM_DESC(debug,
> > >                  "Debug level - higher value produces more verbose messages");
> > >
> > > +enum rockchip_vpu_type {
> > > +       RK_VPU_ENCODER,
> > > +       RK_VPU_DECODER,
> > > +};
> >
> > Given that we already have ctx->is_enc, any reason not to have this
> > represented in the same way everywhere?
> >
>
> The reason is that I'd rather have:
>
> rockchip_vpu_video_device_register(vpu, RK_VPU_ENCODER);
>
> Than:
>
> rockchip_vpu_video_device_register(vpu, true);
>
> We could have a vpu_type field instead of that is_enc boolean.
> I think the code would be even cleaner.
>

Sounds good to me!

Best regards,
Tomasz
