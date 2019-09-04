From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 3/4] media: hantro: Add helper for the H264 motion
 vectors allocation
Date: Wed, 04 Sep 2019 09:50:16 -0300
Message-ID: <5e4b569ff2e8a36a828f3623e71943bd23e795b5.camel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <20190903181711.7559-4-ezequiel@collabora.com>
 <1567592270.3041.4.camel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1567592270.3041.4.camel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Chris Healy <cphealy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 2019-09-04 at 12:17 +0200, Philipp Zabel wrote:
> On Tue, 2019-09-03 at 15:17 -0300, Ezequiel Garcia wrote:
> > Introduce a helper to allow easier enablement of the post-processing
> > feature. No functional changes intended.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> >  drivers/staging/media/hantro/hantro.h      | 6 ++++++
> >  drivers/staging/media/hantro/hantro_v4l2.c | 4 ++--
> >  2 files changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> > index deb90ae37859..e8872f24e351 100644
> > --- a/drivers/staging/media/hantro/hantro.h
> > +++ b/drivers/staging/media/hantro/hantro.h
> > @@ -381,4 +381,10 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
> >  	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> >  }
> >  
> > +static inline unsigned int
> > +hantro_h264_buffer_extra_size(unsigned int width, unsigned int height)
> > +
> > +	return 128 * MB_WIDTH(width) * MB_HEIGHT(height);
> > +}
> 
> This doesn't seem to be used or modified by patch 4 at all?
> 

Oh, thanks for spotting this. Indeed, this patch is superflous.
The helper was used, but then after cleaning-up hantro_postproc.c
I realized it wasn't needed.

We can drop this one, but OTOH hiding the H264 extra size seems
a nice cleanup. Perhaps Jonas can grab this patch as part
of his improvements series.

Thanks,
Ezequiel
