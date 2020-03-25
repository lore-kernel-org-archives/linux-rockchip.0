From: Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH v2 3/8] hantro: Use v4l2_m2m_buf_done_and_job_finish
Date: Wed, 25 Mar 2020 10:02:52 -0400
Message-ID: <0a8f6d97e6869ff694aedd67a3176217a885c938.camel@ndufresne.ca>
References: <20200318132108.21873-1-ezequiel@collabora.com>
         <20200318132108.21873-4-ezequiel@collabora.com>
         <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, Rob Herring <robh@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Le mercredi 25 mars 2020 à 09:22 +0100, Hans Verkuil a écrit :
> On 3/18/20 2:21 PM, Ezequiel Garcia wrote:
> > Let the core sort out the nuances of returning buffers
> > to userspace, by using the v4l2_m2m_buf_done_and_job_finish
> > helper.
> > 
> > This change also removes usage of buffer sequence fields,
> > which shouldn't have any meaning for stateless decoders.
> 
> Uh, why remove this? For one, doesn't this cause fails in v4l2-compliance?
> Also, while I agree that it is not terribly useful, it doesn't hurt, does it?
> 
> And the V4L2 spec makes no exception for stateless codecs with respect to the
> sequence field.
> 
> Nacked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

The spec also does not say what it means either. As an example, you
have spec for ALTERNATE interlacing mode that changes the meaning of
the sequence, but not for alternate H264 fields (which cannot be part
of the format, since this changes often). We also don't have spec for
the the sequence behaviour while using HOLD features.

I'm worried we are falling into the test driven trap, were people
implement features to satisfy a test, while the added complexity don't
really make sense. Shouldn't we change our approach and opt-out
features for new type of HW, so that we can keep the drivers code
saner?

> 
> Regards,
> 
> 	Hans
> 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  drivers/staging/media/hantro/hantro_drv.c | 27 ++++++++---------------
> >  1 file changed, 9 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> > index 0b1200fc0e1a..ec889d755cd6 100644
> > --- a/drivers/staging/media/hantro/hantro_drv.c
> > +++ b/drivers/staging/media/hantro/hantro_drv.c
> > @@ -94,32 +94,23 @@ static void hantro_job_finish(struct hantro_dev *vpu,
> >  			      unsigned int bytesused,
> >  			      enum vb2_buffer_state result)
> >  {
> > -	struct vb2_v4l2_buffer *src, *dst;
> >  	int ret;
> >  
> >  	pm_runtime_mark_last_busy(vpu->dev);
> >  	pm_runtime_put_autosuspend(vpu->dev);
> >  	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
> >  
> > -	src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> > -	dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > -
> > -	if (WARN_ON(!src))
> > -		return;
> > -	if (WARN_ON(!dst))
> > -		return;
> > -
> > -	src->sequence = ctx->sequence_out++;
> > -	dst->sequence = ctx->sequence_cap++;
> > -
> > -	ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
> > -	if (ret)
> > -		result = VB2_BUF_STATE_ERROR;
> > +	if (ctx->buf_finish) {
> > +		struct vb2_v4l2_buffer *dst;
> >  
> > -	v4l2_m2m_buf_done(src, result);
> > -	v4l2_m2m_buf_done(dst, result);
> > +		dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > +		ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
> > +		if (ret)
> > +			result = VB2_BUF_STATE_ERROR;
> > +	}
> >  
> > -	v4l2_m2m_job_finish(vpu->m2m_dev, ctx->fh.m2m_ctx);
> > +	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
> > +					 result);
> >  }
> >  
> >  void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
> > 
