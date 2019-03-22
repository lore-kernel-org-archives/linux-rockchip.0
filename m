From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2 02/11] media: Introduce helpers to fill pixel format
 structs
Date: Fri, 22 Mar 2019 14:29:57 -0300
Message-ID: <c2164a32b5ea12e1a773fd4aa0b3a03a47189ec8.camel@collabora.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-3-ezequiel@collabora.com>
 <c1316b02-7df1-5517-f899-7e6f22f8ba31@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <c1316b02-7df1-5517-f899-7e6f22f8ba31-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2019-03-12 at 09:29 +0100, Hans Verkuil wrote:
> On 3/4/19 8:25 PM, Ezequiel Garcia wrote:
> > Add two new API helpers, v4l2_fill_pixfmt and v4l2_fill_pixfmt_mp,
> > to be used by drivers to calculate plane sizes and bytes per lines.
> > 
> > Note that driver-specific padding and alignment are not
> > taken into account, and must be done by drivers using this API.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> >  drivers/media/v4l2-core/v4l2-common.c | 186 ++++++++++++++++++++++++++
> >  include/media/v4l2-common.h           |  32 +++++
> >  2 files changed, 218 insertions(+)
> > 
> > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> > index 663730f088cd..11a16bb3efda 100644
> > --- a/drivers/media/v4l2-core/v4l2-common.c
> > +++ b/drivers/media/v4l2-core/v4l2-common.c
> > @@ -44,6 +44,7 @@
> >   * Added Gerd Knorrs v4l1 enhancements (Justin Schoeman)
> >   */
> >  
> > +#include <linux/ctype.h>
> >  #include <linux/module.h>
> >  #include <linux/types.h>
> >  #include <linux/kernel.h>
> > @@ -445,3 +446,188 @@ int v4l2_s_parm_cap(struct video_device *vdev,
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL_GPL(v4l2_s_parm_cap);
> > +
> > +static char printable_char(int c)
> > +{
> > +	return isascii(c) && isprint(c) ? c : '?';
> > +}
> > +
> > +const char *v4l2_get_fourcc_name(uint32_t format)
> > +{
> > +	static char buf[8];
> > +
> > +	snprintf(buf, 8,
> > +		 "%c%c%c%c%s",
> > +		 printable_char(format & 0xff),
> > +		 printable_char((format >> 8) & 0xff),
> > +		 printable_char((format >> 16) & 0xff),
> > +		 printable_char((format >> 24) & 0x7f),
> > +		 (format & BIT(31)) ? "-BE" : "");
> > +
> > +	return buf;
> > +}
> > +EXPORT_SYMBOL(v4l2_get_fourcc_name);
> 
> This function isn't re-entrant, but it should be. Multiple threads may be
> calling it at the same time.
> 
> It is probably best to pass the buffer pointer as an argument.
> 

Boy, shame on me, really missed this!

> I would also prefer to split this patch into two: the first adding
> v4l2_format_info, the second adding v4l2_get_fourcc_name. This in case
> that the v4l2_get_fourcc_name() function needs more work.
> 

OK.

Thanks a lot for the feedback,
Eze
