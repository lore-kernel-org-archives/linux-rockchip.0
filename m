From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v6 03/16] media: v4l2-common: Support custom imagesize
 in fill_pixfmt()
Date: Wed, 29 May 2019 14:16:33 +0200
Message-ID: <20190529141633.19c5079b@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-4-ezequiel@collabora.com>
 <20190529082809.0b9f3553@coco.lan>
 <cc51be76-81c3-1c54-2005-1b99d00a8ac1@xs4all.nl>
 <20190529085854.6c689f8d@coco.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190529085854.6c689f8d-qA1ZUp+OV9c@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mauro Carvalho Chehab <mchehab+samsung-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 29 May 2019 08:58:54 -0300
Mauro Carvalho Chehab <mchehab+samsung-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:

> Em Wed, 29 May 2019 13:43:20 +0200
> Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org> escreveu:
> 
> > On 5/29/19 1:28 PM, Mauro Carvalho Chehab wrote:  
> > > Em Tue, 28 May 2019 14:02:19 -0300
> > > Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> escreveu:
> > >     
> > >> From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > >>
> > >> Users can define custom sizeimage as long as they're big enough to
> > >> store the amount of pixels required for a specific width/height under a
> > >> specific format. Avoid overriding those fields in this case.
> > >>
> > >> We could possibly do the same for bytesperline, but it gets tricky when
> > >> dealing with !MPLANE definitions, so this case is omitted for now and    
> > >> ->bytesperline is always overwritten with the value calculated in    
> > >> fill_pixfmt().
> > >>
> > >> Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > >> ---
> > >> Changes from v5:
> > >> * Overwrite bytesperline with the value calculated in fill_pixfmt()
> > >>
> > >> Changes from v4:
> > >> * New patch
> > >>
> > >>  drivers/media/v4l2-core/v4l2-common.c | 58 ++++++++++++++++++++-------
> > >>  1 file changed, 43 insertions(+), 15 deletions(-)
> > >>
> > >> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> > >> index b2d1e55d9561..fd286f6e17d7 100644
> > >> --- a/drivers/media/v4l2-core/v4l2-common.c
> > >> +++ b/drivers/media/v4l2-core/v4l2-common.c
> > >> @@ -585,9 +585,9 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> > >>  	pixfmt->num_planes = info->mem_planes;
> > >>  
> > >>  	if (info->mem_planes == 1) {
> > >> +		u32 sizeimage = 0;
> > >> +
> > >>  		plane = &pixfmt->plane_fmt[0];
> > >> -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
> > >> -		plane->sizeimage = 0;
> > >>  
> > >>  		for (i = 0; i < info->comp_planes; i++) {
> > >>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> > >> @@ -598,10 +598,21 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> > >>  			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
> > >>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
> > >>  
> > >> -			plane->sizeimage += info->bpp[i] *
> > >> -				DIV_ROUND_UP(aligned_width, hdiv) *
> > >> -				DIV_ROUND_UP(aligned_height, vdiv);
> > >> +			sizeimage += info->bpp[i] *
> > >> +				     DIV_ROUND_UP(aligned_width, hdiv) *
> > >> +				     DIV_ROUND_UP(aligned_height, vdiv);
> > >>  		}
> > >> +
> > >> +		/* Custom bytesperline value is not supported yet. */
> > >> +		plane->bytesperline = ALIGN(width,
> > >> +					    v4l2_format_block_width(info, 0)) *
> > >> +				      info->bpp[0];
> > >> +
> > >> +		/*
> > >> +		 * The user might have specified a custom sizeimage, only
> > >> +		 * override it if it's not big enough.
> > >> +		 */
> > >> +		plane->sizeimage = max(sizeimage, plane->sizeimage);    
> > > 
> > > No upper limit? That doesn't sound a good idea to me, specially since some
> > > (broken) app might not be memset the format to zero before filling the ioctl
> > > structure.
> > > 
> > > Perhaps we could do something like:
> > > 
> > > 		sizeimage = min (sizeimage, 2 * plane->sizeimage)
> > > 
> > > or something similar that would be reasonable.    
> > 
> > I've no idea what's sane.
> > 
> > Buffers can be really large. The largest video resolution defined by CTA-861-G
> > is 10240x4320, so at 4 bytes per pixel that's 0x0a8c0000. So perhaps we can
> > use min(sizeimage, 0x10000000)? Although we should probably use the clamp function
> > instead of min/max.  
> 
> Well, the max is driver-specific. 
> 
> For example, for a camera with a max resolution of 640x480 with 2 bytes
> per pixel as the max format can only be
> 
> 	max_size = 640*480*2 (plus some alignment value if pertinent)
> 
> It sounds to me that the best would be to have a callback function
> or value filled by the drivers that would support custom sizeimage.
> 
> The core could actually calculate during init (by asking the driver
> to a very big resolution and getting the returned value), but
> it sounds better to let the drivers to explicitly calculate it.

If we want max_sizeimage to be driver specific I can add it as an extra
arg to the fill_pixfmt() funcs.

If that works for you, we'll send a new version of this patch alone
(unless you want us to send the whole series again).
