From: "=?ISO-8859-1?B?SmFjb2IgQ2hlbg==?=" <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>
Subject: Re:  [PATCH 0/2] rockchip/rga: A fix and a cleanup
Date: Mon, 11 Jun 2018 10:02:42 +0800
Message-ID: <tencent_7145303C52804A69C5DCA429C5EBE474240A@qq.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?ISO-8859-1?B?RXplcXVpZWwgR2FyY2lh?= <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, =?ISO-8859-1?B?bGludXgtbWVkaWE=?= <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: =?ISO-8859-1?B?bGludXgtcm9ja2NoaXA=?= <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?ISO-8859-1?B?TWF1cm8gQ2FydmFsaG8gQ2hlaGFi?= <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, =?ISO-8859-1?B?amFjb2JjaGVuMTEw?= <jacobchen110-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, =?ISO-8859-1?B?aGVpa28=?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, =?ISO-8859-1?B?aGFucy52ZXJrdWls?= <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

> Ccing Jacob at the right address.Ccing Jacob at the right address.
> 
> Perhaps we should fix the MAINTAINERS file.
> 
> On Fri, 2018-06-01 at 16:49 -0300, Ezequiel Garcia wrote:
> > Decided to test v4l2transform filters and found these two
> > issues.
> > 
> > Without the first commit, start_streaming fails. The second
> > commit is just a cleanup, removing a seemingly redundant
> > operation.
> > 
> > Tested on RK3288 Radxa Rock2 with these kind of pipelines:
> > 
> > gst-launch-1.0 videotestsrc ! video/x-
> > raw,width=640,height=480,framerate=30/1,format=RGB !
> > v4l2video0convert ! video/x-
> > raw,width=1920,height=1080,framerate=30/1,format=NV16 ! fakesink
> > 
> > gst-launch-1.0 v4l2src device=/dev/video1 ! video/x-
> > raw,width=640,height=480,framerate=30/1,format=RGB !
> > v4l2video0convert ! video/x-
> > raw,width=1920,height=1080,framerate=30/1,format=NV16 ! kmssink
> > 
> > Ezequiel Garcia (2):
> >   rockchip/rga: Fix broken .start_streaming
> >   rockchip/rga: Remove unrequired wait in .job_abort
> > 
> >  drivers/media/platform/rockchip/rga/rga-buf.c | 44 +++++++++------
> > ----
> >  drivers/media/platform/rockchip/rga/rga.c     | 13 +-----
> >  drivers/media/platform/rockchip/rga/rga.h     |  2 -
> >  3 files changed, 23 insertions(+), 36 deletions(-)
> > 

To both patches,
Reviewed-by: Jacob Chen<jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>

It seems the current job_abort will also cause unnecessary wait when using multi-instance.
